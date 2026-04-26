local ActionWriter = {}

-- ===============================================================
-- 1. 工具函数
-- ===============================================================

function ActionWriter.FindInstanceFromCDO(cdoPath)
    local cdoSubObj = StaticFindObject(cdoPath)
    if not cdoSubObj or not cdoSubObj:IsValid() then return nil end

    local subObjClassName = cdoSubObj:GetClass():GetFName():ToString()
    local subObjShortName = cdoSubObj:GetFName():ToString()
    local ownerCDO = cdoSubObj:GetOuter()
    if not ownerCDO or not ownerCDO:IsValid() then return nil end
    local ownerClass = ownerCDO:GetClass()

    local allComponents = FindAllOf(subObjClassName)
    if not allComponents then return nil end

    for _, comp in pairs(allComponents) do
        if comp:IsValid() and comp:GetAddress() ~= cdoSubObj:GetAddress() then
            if comp:GetFName():ToString() == subObjShortName then
                local compOuter = comp:GetOuter()
                if compOuter and compOuter:IsValid() and compOuter:IsA(ownerClass) then
                    return comp
                end
            end
        end
    end
    return nil
end

-- ===============================================================
-- 2. 模块修改函数
-- ===============================================================

-- AnimationDefinition
function ActionWriter.Set_AnimationDefinitions(Definitions, NewAnimations)
    if not Definitions then return false end
    local count = Definitions:GetArrayNum()
    if count ~= #NewAnimations then
        print(string.format("[Error] 数组长度不匹配! 引擎: %d, 输入: %d\n", count, #NewAnimations))
        return false
    end

    Definitions:ForEach(function(index, elem)
        local animName = NewAnimations[index]
        if animName then
            local structRef = elem:get()
            print(string.format("原动画 %s 将修改为 %s\n", structRef.AnimationName:ToString(), tostring(animName)))
            structRef.AnimationName = tostring(animName)
        end
    end)
    return true
end

-- AnimationsForDirections
function ActionWriter.Set_AnimationsForDirections(MapObj, NewAnimationsNestedList)
    if not MapObj then return end
    
    -- 使用 ForEach 遍历 TMap
    -- keyParam / valParam 均为 RemoteUnrealParam
    MapObj:ForEach(function(keyParam, valParam)
        local directionKey = keyParam:get() -- 获取 Map 的 Key (通常是数字)
        local valueObj = valParam:get()    -- 获取对应的包装对象
        
        -- 在配置列表中寻找匹配该 Key 的动画列表
        local targetAnimList = NewAnimationsNestedList[directionKey]
        
        if targetAnimList then
            print(string.format("正在修改方向 Key = [%s] 的动画列表...\n", tostring(directionKey)))
            -- 调用数组修改函数
            ActionWriter.Set_AnimationDefinitions(valueObj.AnimationDefinitions, targetAnimList)
        else
            print(string.format("[Skip] 输入配置中未找到方向 Key = [%s] 的配置\n", tostring(directionKey)))
        end
    end)
end

-- CustomAnimationDefinitions
function ActionWriter.Set_CustomAnimationDefinitions(Component, PropName, NewAnimations)
    local prop = Component[PropName]
    if not prop then 
        print(string.format("[Error] 找不到属性: %s\n", PropName))
        return 
    end
    ActionWriter.Set_AnimationDefinitions(prop, NewAnimations)
end

-- KnockbackStaggers
-- 结构: ((Stagger=((AnimationName="damage_loop",PlayType=Loop)),Recovery=((AnimationName="damage_end"))))
function ActionWriter.Set_KnockbackStaggers(Component, PropName, NewAnimationsFlatList)
    local Structs = Component[PropName]
    if not Structs then return false end

    Stagger = Structs[1].Stagger
    Recovery = Structs[1].Recovery
    Stagger[1].AnimationName = tostring(NewAnimationsFlatList[1])
    Recovery[1].AnimationName = tostring(NewAnimationsFlatList[2])

    return true
end

-- TransitionDefinitions
-- 结构: ((...,AnimationDefinitions=((AnimationName="landing"))),(...,AnimationDefinitions=((AnimationName="landing_heavy"))),...)
function ActionWriter.Set_TransitionDefinitions(Component, PropName, NewAnimationsFlatList)
    local transArray = Component[PropName]
    if not transArray then return end

    -- 首先计算总共需要多少个动画名
    local totalNeeded = 0
    transArray:ForEach(function(i, e)
        totalNeeded = totalNeeded + e:get().AnimationDefinitions:GetArrayNum()
    end)

    if totalNeeded ~= #NewAnimationsFlatList then
        print(string.format("[Error] 过渡模块长度不匹配! 需要: %d, 提供: %d\n", totalNeeded, #NewAnimationsFlatList))
        return
    end

    local cursor = 1
    transArray:ForEach(function(i, e)
        local animDefs = e:get().AnimationDefinitions
        animDefs:ForEach(function(subI, subE)
            print(string.format("原动画 %s 将修改为 %s\n", subE:get().AnimationName:ToString(), NewAnimationsFlatList[cursor]))
            subE:get().AnimationName = NewAnimationsFlatList[cursor]
            cursor = cursor + 1
        end)
    end)
end

-- ===============================================================
-- 3. 对象修改函数
-- ===============================================================

-- CommandModule_PlayAnimation
function ActionWriter.Set_CommandModule_PlayAnimation(ModuleObj, NewAnimations)
    if not ModuleObj or not ModuleObj:IsValid() then return end
    ActionWriter.Set_AnimationDefinitions(ModuleObj.AnimationDefinitions, NewAnimations)
end

-- CommandModule_PlayAnimation_InputDirection
function ActionWriter.Set_CommandModule_PlayAnimation_InputDirection(ModuleObj, NewAnimations, NewAnimationsNestedList)
    if not ModuleObj or not ModuleObj:IsValid() then return end

    print(string.format("开始写入 CommandModule_PlayAnimation_InputDirection: %s\n", ModuleObj:GetFullName()))

    if NewAnimations then ActionWriter.Set_AnimationDefinitions(ModuleObj.AnimationDefinitions, NewAnimations) end
    if NewAnimationsNestedList then ActionWriter.Set_AnimationsForDirections(ModuleObj.AnimationsForDirections, NewAnimationsNestedList) end

    print(string.format("结束写入 CommandModule_PlayAnimation_InputDirection: %s\n", ModuleObj:GetFullName()))
end

-- SpineAnimator
function ActionWriter.Set_SpineAnimator(Component, CommonConfig, StaggerConfig, TransitionConfig)
    if not Component or not Component:IsValid() then return end

    print(string.format("开始写入 SpineAnimator: %s\n", Component:GetFullName()))

    -- 1. 处理普通列表
    for propName, animList in pairs(CommonConfig) do
        ActionWriter.Set_CustomAnimationDefinitions(Component, propName, animList)
    end

    -- 2. 处理硬直列表
    for propName, animList in pairs(StaggerConfig) do
        ActionWriter.Set_KnockbackStaggers(Component, propName, animList)
    end

    -- 3. 处理过渡列表
    for propName, animList in pairs(TransitionConfig) do
        ActionWriter.Set_TransitionDefinitions(Component, propName, animList)
    end
    
    print(string.format("结束写入 SpineAnimator: %s\n", Component:GetFullName()))
end

return ActionWriter