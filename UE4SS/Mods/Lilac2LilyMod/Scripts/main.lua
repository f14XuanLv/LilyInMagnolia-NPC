local toolkitPath = "Mods/SpineAnimationManager/Scripts/?.lua"
if not string.find(package.path, toolkitPath, 1, true) then
    package.path = package.path .. ";" .. toolkitPath
end

local Lilac2LilyAnimationConfig = require("Lilac2LilyAnimationConfig")
local Lilac2LilyAnimationMap = require("Lilac2LilyAnimationMap")
local AnimationObjectTable = require("AnimationObjectTable")
local SAM = require("SpineAnimationManager")

local function FindInstanceFromCDO(cdoPath)
    local cdoSubObj = StaticFindObject(cdoPath)
    if not (cdoSubObj and cdoSubObj:IsValid()) then return nil end

    local ownerCDO = cdoSubObj:GetOuter()
    if not (ownerCDO and ownerCDO:IsValid()) then return nil end

    local actorClass = ownerCDO:GetClass()

    local actorInstance = FindFirstOf(actorClass:GetFName():ToString())
    if not (actorInstance and actorInstance:IsValid()) then return nil end

    local instance = FindObject(
        cdoSubObj:GetClass(), 
        actorInstance, 
        cdoSubObj:GetFName():ToString(), 
        true
    )

    if instance and instance:IsValid() then
        return instance
    end
end

local function GetOrLoad(path)
    local obj = StaticFindObject(path)
    if not obj:IsValid() then obj = LoadAsset(path) end
    return obj
end

local function ReplaceLilacSpineData2Lily()
    print("\n========== 开始替换 Lilac 为莉莉皮肤 ==========\n")
    
    local lilacActor = nil
    local allLilacs = FindAllOf("BP_p0000_Lilac_C")
    
    if allLilacs then
        for _, actor in pairs(allLilacs) do
            if actor:IsValid() then
                -- 排除 CDO (Class Default Object)
                local fullName = actor:GetFullName()
                if not fullName:find("Default__") then
                    lilacActor = actor
                    print(string.format("[Info] 找到 Lilac 实例: %s\n", fullName))
                    break
                end
            end
        end
    end

    if not lilacActor then
        print("[Error] 未找到 Lilac 角色实例\n")
        return
    end
    
    -- 加载莉莉的 Spine 资源
    local lilyAtlasPath = "/Game/_Zion/Characters/p0101_Lily/Spine/p0101_Lily-atlas.p0101_Lily-atlas"
    local lilySkelPath = "/Game/_Zion/Characters/p0101_Lily/Spine/p0101_Lily-data.p0101_Lily-data"

    -- 加载 Lilac 原有的 Notify 资源
    local notifyPath = "/Game/_Zion/Characters/p0000_Lilac/Spine/p0000_lilac-notify.p0000_lilac-notify"

    local NewAtlas = GetOrLoad(lilyAtlasPath)
    local NewSkel = GetOrLoad(lilySkelPath)
    local NewNotify = GetOrLoad(notifyPath)

    -- 配置莉莉的 Skeleton 数据
    if NewSkel:IsValid() then
        NewSkel.DefaultSkins = {"_common", "_Meat_Head_0", "p0101_Lily"}
        NewSkel.ScaleFactor = 0.26
        NewSkel.DefaultMix = 0.1
    else
        print("[Error] 无法加载莉莉 Skeleton 数据\n")
        return
    end
    
    if not NewAtlas:IsValid() then
        print("[Error] 无法加载莉莉 Atlas 数据\n")
        return
    end
    
    -- 执行 Spine 数据替换
    if lilacActor.SpineAnimationComponent:IsValid() then
        lilacActor.SpineAnimationComponent:ReplaceSpineData(NewAtlas, NewSkel, NewNotify)
        print("[Success] Lilac 已成功替换为莉莉皮肤！\n")
    else
        print("[Error] SpineAnimationComponent 无效\n")
    end

    -- 执行镜像修正
    lilacActor.VisualPivotSceneComponent.RelativeScale3D = {X = -1.0, Y = 1.0, Z = 1.0}

    print("========== 皮肤替换完成 ==========\n")
end

local function ApplyAnimationMapping()
    print("\n========== 开始应用动画映射 ==========\n")

    for _, path in ipairs(AnimationObjectTable) do
        local obj = StaticFindObject(path)
        SAM.ApplyAnimationMapping(obj, Lilac2LilyAnimationMap)

        local instance = FindInstanceFromCDO(path)
        SAM.ApplyAnimationMapping(instance, Lilac2LilyAnimationMap)
    end
end

RegisterKeyBind(Key.FIVE, { ModifierKey.ALT }, function()
    ExecuteInGameThread(function()
        ReplaceLilacSpineData2Lily()
        ApplyAnimationMapping()
    end)
end)

local function UpdateAllAnimations()
    print("\n========== 开始更新所有动画配置 ==========\n")
    
    for path, config in pairs(Lilac2LilyAnimationConfig) do
        local obj = StaticFindObject(path)
        SAM.UpdateAllAnimations(obj, config)

        local instance = FindInstanceFromCDO(path)
        SAM.UpdateAllAnimations(instance, config)
    end
end

RegisterKeyBind(Key.SIX, { ModifierKey.ALT }, function()
    ExecuteInGameThread(function()
        ReplaceLilacSpineData2Lily()
        UpdateAllAnimations()
    end)
end)
