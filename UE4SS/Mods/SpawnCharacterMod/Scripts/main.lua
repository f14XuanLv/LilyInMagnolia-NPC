local UEHelpers = require("UEHelpers")

print("Zion Character Manager Loaded - Alt+1: Shaman, Alt+2: Levy, Alt+3: Lily")

-- =================配置区域=================

local CHAR_CONFIG = {
    Shaman = {
        classPath = "/Game/_Zion/Characters/n7030_Shaman/BP_n7030_Shaman.BP_n7030_Shaman_C",
        animations = {"idle_a", "talk_loop", "event_deny"},
        yOffset = -150.0,
        state = { actor = nil, animIndex = 1 }
    },
    Levy = {
        classPath = "/Game/_Zion/Characters/n7010_Levy/BP_n7010_Levy.BP_n7010_Levy_C",
        animations = {"idle_a", "kick", "greeting_loop_look_up"},
        yOffset = -300.0,
        state = { actor = nil, animIndex = 1 }
    },
    Lily = {
        -- 莉莉借用 Levy 的蓝图作为载体
        classPath = "/Game/_Zion/Characters/n7010_Levy/BP_n7010_Levy.BP_n7010_Levy_C",
        animations = {"idle", "event_idle", "event_notice_loop2", "recovery"},
        yOffset = 150.0,
        isSpecial = true, -- 标记需要替换数据
        atlasPath = "/Game/_Zion/Characters/n7031_Lily/Spine/n7031_Lily-atlas.n7031_Lily-atlas",
        skelPath = "/Game/_Zion/Characters/n7031_Lily/Spine/n7031_Lily-data.n7031_Lily-data",
        state = { actor = nil, animIndex = 1 }
    }
}

-- =================核心功能函数=================

-- 加载资产的辅助函数
function GetOrLoad(path)
    local obj = StaticFindObject(path)
    if not obj:IsValid() then obj = LoadAsset(path) end
    return obj
end

-- 通用生成函数
function SpawnCharacter(config)
    local PC = UEHelpers:GetPlayerController()
    local Loc = PC.Pawn:K2_GetActorLocation()
    
    local SpawnLoc = { X = Loc.X, Y = Loc.Y + config.yOffset, Z = Loc.Z }
    local SpawnRot = { Pitch = 0.0, Yaw = 90.0, Roll = 0.0 }
    
    local Class = GetOrLoad(config.classPath)
    local World = PC:GetWorld()
    local Actor = World:SpawnActor(Class, SpawnLoc, SpawnRot)
    
    -- 如果是莉莉，执行特殊的“借尸还魂”逻辑
    if Actor:IsValid() and config.isSpecial then
        local NewAtlas = GetOrLoad(config.atlasPath)
        local NewSkel = GetOrLoad(config.skelPath)
        
        if NewSkel:IsValid() then
            NewSkel.DefaultSkins = {"_Meat_Head_0", "n7031_Lily"}
            NewSkel.ScaleFactor = 0.26
            NewSkel.DefaultMix = 0.1
        end
        
        if Actor.SpineAnimationComponent:IsValid() then
            Actor.SpineAnimationComponent:ReplaceSpineData(NewAtlas, NewSkel, nil)
        end
    end
    
    return Actor
end

-- 通用动画播放函数
-- animationName 不需要前缀路径
-- 例如在原始 Spine 文件中，Levy 的打招呼动画的完整路径是 "idle_look/greeting_loop_look_up"
-- 但是要在游戏中切换到该动画，animationName 的值只需要设置为 "greeting_loop_look_up" 即可
function UpdateAnimation(config)
    local actor = config.state.actor
    local animName = config.animations[config.state.animIndex]
    
    -- 1. 禁用自动更新
    if actor.SpineAnimatorComponent:IsValid() then
        actor.SpineAnimatorComponent.bUpdateLocomotion = false
    end
    
    -- 2. 播放动画
    if actor.SpineAnimationComponent:IsValid() then
        actor.SpineAnimationComponent:SetAnimation(0, animName, true)
        print(string.format("[Manager] %s 切换动画 -> %s\n", config.isSpecial and "Lily" or actor:GetFName():ToString(), animName))
    end
end

-- 统一处理逻辑：判断生成还是切动画
function HandleCharacterLogic(charKey)
    local config = CHAR_CONFIG[charKey]
    
    -- 检查 Actor 是否已存在且有效
    if config.state.actor and config.state.actor:IsValid() then
        -- 已存在：增加索引并播放下一个动画
        config.state.animIndex = config.state.animIndex + 1
        if config.state.animIndex > #config.animations then
            config.state.animIndex = 1 -- 回到第一个
        end
        UpdateAnimation(config)
    else
        -- 不存在：生成并播放第一个动画
        print("[Manager] 正在创建新角色实例...\n")
        config.state.actor = SpawnCharacter(config)
        config.state.animIndex = 1
        if config.state.actor:IsValid() then
            UpdateAnimation(config)
        end
    end
end

-- =================按键绑定=================

-- Alt + 1: Shaman (n7030)
RegisterKeyBind(Key.ONE, { ModifierKey.ALT }, function()
    ExecuteInGameThread(function()
        HandleCharacterLogic("Shaman")
    end)
end)

-- Alt + 2: Levy (n7010)
RegisterKeyBind(Key.TWO, { ModifierKey.ALT }, function()
    ExecuteInGameThread(function()
        HandleCharacterLogic("Levy")
    end)
end)

-- Alt + 3: Lily (n7031 via Levy)
RegisterKeyBind(Key.THREE, { ModifierKey.ALT }, function()
    ExecuteInGameThread(function()
        HandleCharacterLogic("Lily")
    end)
end)