local Writer = require("ActionWriter")

-- 加载资产的辅助函数
function GetOrLoad(path)
    local obj = StaticFindObject(path)
    if not obj:IsValid() then obj = LoadAsset(path) end
    return obj
end

local function ReplaceLilacSpineData2Lily()
    print("\n========== 开始替换 Lilac 皮肤为莉莉 ==========\n")
    
    -- 方法1: 尝试使用 FindAllOf 直接查找 Lilac 实例
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
    
    if not lilacActor or not lilacActor:IsValid() then
        print("[Error] 找不到 Lilac 角色实例，请确保角色已生成\n")
        return
    end
    
    -- 加载莉莉的 Spine 资源
    local lilyAtlasPath = "/Game/_Zion/Characters/n7031_Lily/Spine/n7031_Lily-atlas.n7031_Lily-atlas"
    local lilySkelPath = "/Game/_Zion/Characters/n7031_Lily/Spine/n7031_Lily-data.n7031_Lily-data"
    local notifyPath = "/Game/_Zion/Characters/p0000_Lilac/Spine/p0000_lilac-notify.p0000_lilac-notify"

    local NewAtlas = GetOrLoad(lilyAtlasPath)
    local NewSkel = GetOrLoad(lilySkelPath)
    local NewNotify = GetOrLoad(notifyPath)

    -- 配置莉莉的 Skeleton 数据
    if NewSkel:IsValid() then
        NewSkel.DefaultSkins = {"_Meat_Head_0", "n7031_Lily"}
        NewSkel.ScaleFactor = 0.26
        NewSkel.DefaultMix = 0.1
        print("[Info] 莉莉 Skeleton 数据配置完成\n")
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

local function RunWriteTest()
    print("\n========== 开始执行动画写操作 ==========\n")

    local CommandModule_PlayAnimation_Config = {
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge.Default__BP_Command_Dodge_C:CommandModule_PlayAnimation_0",
            anims = {
                "dodge" -- 原动画: dodge
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_FT_Middle.Default__BP_Command_AutoClimb_FT_Middle_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_low" -- 原动画: wall_climb_middle (莉莉没有middle，使用low)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_Middle.Default__BP_Command_AutoClimb_Middle_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_low" -- 原动画: wall_climb_middle (莉莉没有middle，使用low)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_FT_Low.Default__BP_Command_AutoClimb_FT_Low_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_low" -- 原动画: wall_climb_low
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_Low.Default__BP_Command_AutoClimb_Low_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_low" -- 原动画: wall_climb_low
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_Dash.Default__BP_Command_AutoClimb_Dash_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_low" -- 原动画: wall_climb_low
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_FT_High.Default__BP_Command_AutoClimb_FT_High_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_high" -- 原动画: wall_climb_high
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_High.Default__BP_Command_AutoClimb_High_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_climb_high" -- 原动画: wall_climb_high
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_LookUp.Default__BP_Command_LookUp_C:CommandModule_PlayAnimation_0",
            anims = {
                "lookup_loop" -- 原动画: look_up_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_DodgeWeak.Default__BP_Command_DodgeWeak_C:CommandModule_PlayAnimation_0",
            anims = {
                "stumble" -- 原动画: stumble
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Crouch.Default__BP_Command_Crouch_C:CommandModule_PlayAnimation_0",
            anims = {
                "crouch_loop" -- 原动画: crouch_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Jump_Airborne_Ride.Default__BP_Command_Jump_Airborne_Ride_C:CommandModule_PlayAnimation_0",
            anims = {
                "jump_up_air" -- 原动画: ride_jump_up_air (莉莉没有骑乘，使用普通空中跳跃)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Jump_Airborne.Default__BP_Command_Jump_Airborne_C:CommandModule_PlayAnimation_0",
            anims = {
                "jump_up_air", -- 原动画: jump_up_air_start (莉莉没有单独的start)
                "jump_up_air"  -- 原动画: jump_up_air
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Jump_Swimming.Default__BP_Command_Jump_Swimming_C:CommandModule_PlayAnimation_0",
            anims = {
                "jump_up" -- 原动画: jump_up
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Heal_FullHP.Default__BP_Command_Heal_FullHP_C:CommandModule_PlayAnimation_0",
            anims = {
                "event_deny" -- 原动画: heal_failure (莉莉没有heal_failure，使用拒绝动画)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Heal_NoHeal.Default__BP_Command_Heal_NoHeal_C:CommandModule_PlayAnimation_0",
            anims = {
                "event_deny" -- 原动画: heal_failure (莉莉没有heal_failure，使用拒绝动画)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_FallThrough.Default__BP_Command_FallThrough_C:CommandModule_PlayAnimation_0",
            anims = {
                "jump_down" -- 原动画: jump_down
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_WakeUp_End.Default__BP_Command_Respawn_WakeUp_End_C:CommandModule_PlayAnimation_0",
            anims = {
                "rest_sleep_end", -- 原动画: rest_sleep_end
                "rest_end"  -- 原动画: rest_sit_end (莉莉没有sit_end，使用rest_end)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_WakeUp.Default__BP_Command_Respawn_WakeUp_C:CommandModule_PlayAnimation_0",
            anims = {
                "rest_sleep_loop" -- 原动画: rest_sleep_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Enemies/BP_Command_FindEnemy.Default__BP_Command_FindEnemy_C:CommandModule_PlayAnimation_0",
            anims = {
                "event_notice" -- 原动画: find_enemy (莉莉没有find_enemy，使用注意动画)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Enemies/BP_Command_IdlePeace.Default__BP_Command_IdlePeace_C:CommandModule_PlayAnimation_0",
            anims = {
                "idle" -- 原动画: idle_peace (莉莉没有idle_peace，使用普通idle)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge_Grounded.Default__BP_Command_Dodge_Grounded_C:CommandModule_PlayAnimation_0",
            anims = {
                "dodge" -- 原动画: dodge
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge_Airborne.Default__BP_Command_Dodge_Airborne_C:CommandModule_PlayAnimation_0",
            anims = {
                "dodge_air" -- 原动画: dodge_air
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_FastTravel_Lv1.Default__BP_Command_Respawn_FastTravel_Lv1_C:CommandModule_PlayAnimation_0",
            anims = {
                "get_start_A" -- 原动画: fasttravel_1 (莉莉没有快速旅行，使用起身动画)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_FastTravel_Lv2.Default__BP_Command_Respawn_FastTravel_Lv2_C:CommandModule_PlayAnimation_0",
            anims = {
                "get_start_B" -- 原动画: fasttravel_2 (莉莉没有快速旅行，使用起身动画B)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Heal.Default__BP_Command_Heal_C:CommandModule_PlayAnimation_0",
            anims = {
                "recovery" -- 原动画: heal (莉莉没有heal，使用恢复动画)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_PileAttack_Landing_Lv1.Default__BP_Command_PileAttack_Landing_Lv1_C:CommandModule_PlayAnimation_0",
            anims = {
                "attack_pound_landing" -- 原动画: attack_pound_landing
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_PileAttack_Landing_Lv2.Default__BP_Command_PileAttack_Landing_Lv2_C:CommandModule_PlayAnimation_0",
            anims = {
                "attack_pound_landing" -- 原动画: attack_pound_landing
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_PileAttack.Default__BP_Command_PileAttack_C:CommandModule_PlayAnimation_0",
            anims = {
                "attack_pound_charge", -- 原动画: attack_pound_start (莉莉没有start，使用charge)
                "attack_pound_fall_loop"  -- 原动画: attack_pound_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_WallDash_Release_LV1.Default__BP_Command_WallDash_Release_Lv1_C:CommandModule_PlayAnimation_0",
            anims = {
                "dash_loop", -- 原动画: wall_dash_start (莉莉没有墙冲刺，使用冲刺)
                "dash_loop"  -- 原动画: wall_dash_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_WallDash_Charge.Default__BP_Command_WallDash_Charge_C:CommandModule_PlayAnimation_0",
            anims = {
                "wall_grab_loop", -- 原动画: wall_dash_charge_start (莉莉没有墙冲刺充能，使用抓墙)
                "wall_grab_loop"  -- 原动画: wall_dash_charge_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_HighJump_Charge.Default__BP_Command_HighJump_Charge_C:CommandModule_PlayAnimation_0",
            anims = {
                "crouch_loop", -- 原动画: high_jump_charge_start (莉莉没有高跳充能，使用蹲下)
                "crouch_loop"  -- 原动画: high_jump_charge_loop
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry.Default__BP_Command_Parry_C:CommandModule_PlayAnimation_0",
            anims = {
                "attack_DEFAULT_B" -- 原动画: attack_stand_b (使用B攻击)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Air_Success.Default__BP_Command_Parry_001_Normal_Air_Success_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry_achievement" -- 原动画: parry_air_success (莉莉没有空中格挡成功，使用成就格挡)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Success.Default__BP_Command_Parry_001_Normal_Success_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry_achievement" -- 原动画: parry_success (莉莉没有普通格挡成功，使用成就格挡)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Air_Ready.Default__BP_Command_Parry_001_Normal_Air_Ready_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry" -- 原动画: parry_air_start (莉莉没有空中格挡开始，使用普通格挡)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Ready.Default__BP_Command_Parry_001_Normal_Ready_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry" -- 原动画: parry_start
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Air_Success.Default__BP_Command_Parry_003_Buster_Air_Success_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry_achievement" -- 原动画: parry_air_success (莉莉没有空中格挡成功，使用成就格挡)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Success.Default__BP_Command_Parry_003_Buster_Success_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry_achievement" -- 原动画: parry_success (莉莉没有普通格挡成功，使用成就格挡)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Air_Ready.Default__BP_Command_Parry_003_Buster_Air_Ready_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry" -- 原动画: parry_air_start (莉莉没有空中格挡开始，使用普通格挡)
            }
        },
        {
            cdoPath = "/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Ready.Default__BP_Command_Parry_003_Buster_Ready_C:CommandModule_PlayAnimation_0",
            anims = {
                "parry" -- 原动画: parry_start
            }
        },
    }

    for _, config in ipairs(CommandModule_PlayAnimation_Config) do
        local cdo = StaticFindObject(config.cdoPath)
        if cdo then
            Writer.Set_CommandModule_PlayAnimation(cdo, config.anims)
        end
        local inst = Writer.FindInstanceFromCDO(config.cdoPath)
        if inst then
            Writer.Set_CommandModule_PlayAnimation(inst, config.anims)
        end
    end

    -- CommandModule_PlayAnimation_InputDirection
    local dodgeSwimmingPath = "/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge_Swimming.Default__BP_Command_Dodge_Swimming_C:CommandModule_PlayAnimation_InputDirection_0"

    local dive_dodge_forward_anims = {"swim_dodge_forward"} -- 原动画: {"dive_dodge_forward"}
    -- 准备嵌套数据：针对 Map 里的 Key (0-8)
    local nestedAnims = {
        [0] = {"swim_dodge_forward"}, -- None, 原动画: {"dive_dodge_forward"}
        [1] = {"swim_dodge_forward"}, -- Up, 原动画: {"dive_dodge_forward"}
        [2] = {"swim_dodge_up"}, -- Down, 原动画: {"dive_dodge_up"}
        [3] = {"swim_dodge_down"}, -- Left, 原动画: {"dive_dodge_down"}
        [4] = {"swim_dodge_forward"}, -- Right, 原动画: {"dive_dodge_forward"}
        [5] = {"swim_dodge_forward"}, -- UpLeft, 原动画: {"dive_dodge_forward"}
        [6] = {"swim_dodge_halfup"}, -- UpRight, 原动画: {"dive_dodge_halfup"}
        [7] = {"swim_dodge_halfup"}, -- DownRight, 原动画: {"dive_dodge_halfup"}
        [8] = {"swim_dodge_halfdown"}  -- DownLeft, 原动画: {"dive_dodge_halfdown"}
    }

    local cdoSwimming = StaticFindObject(dodgeSwimmingPath)
    if cdoSwimming then
        Writer.Set_CommandModule_PlayAnimation_InputDirection(cdoSwimming, dive_dodge_forward_anims, nestedAnims)
    end
    local instSwimming = Writer.FindInstanceFromCDO(dodgeSwimmingPath)
    if instSwimming then
        Writer.Set_CommandModule_PlayAnimation_InputDirection(instSwimming, dive_dodge_forward_anims, nestedAnims)
    end

    -- SpineAnimator
    local spinePath = "/Game/_Zion/Characters/p0000_Lilac/BP_p0000_Lilac.Default__BP_p0000_Lilac_C:SpineAnimator"

    -- 1. 准备配置表
    -- 普通两级 Array 模块
    local commonConfig = {
        ["EventIdle"]      = {"event_idle"}, -- 原动画: event_idle
        ["EventTurn"]      = {"idle_turn"}, -- 原动画: event_idle_turn (莉莉没有event版本，使用普通转身)
        ["KnockbackLaunchLand"]      = {"damage_launch_landing"}, -- 原动画: damage_launch_landing
        ["KnockbackLaunchLandBack"]      = {"damage_launch_landing"}, -- 原动画: damage_launch_landing_b (莉莉没有_b版本)
        ["KnockbackLaunchRecovery"]      = {"wake"}, -- 原动画: wake
        ["KnockbackLaunchStagger"]      = {"down_loop"}, -- 原动画: down_loop
        ["LocomotionDash"]      = {"dash_loop"}, -- 原动画: dash
        ["LocomotionDashFallingDown"]      = {"jump_down"}, -- 原动画: dash_jump_down (莉莉没有dash_jump，使用普通jump)
        ["LocomotionDashFallingNeutral"]      = {"jump_apex"}, -- 原动画: dash_jump_apex (莉莉没有dash_jump，使用普通jump)
        ["LocomotionDashFallingUp"]      = {"jump_up"}, -- 原动画: dash_jump_up (莉莉没有dash_jump，使用普通jump)
        ["LocomotionFallingDown"]      = {"jump_down"}, -- 原动画: jump_down
        ["LocomotionFallingKnockbackDown_Backward"]      = {"damage_launch_down"}, -- 原动画: damage_launch_down_b (莉莉没有_b版本)
        ["LocomotionFallingKnockbackDown_Forward"]      = {"damage_launch_down"}, -- 原动画: damage_launch_down
        ["LocomotionFallingKnockbackNeutral_Backward"]      = {"damage_launch_neutral"}, -- 原动画: damage_launch_neutral_b (莉莉没有_b版本)
        ["LocomotionFallingKnockbackNeutral_Forward"]      = {"damage_launch_neutral"}, -- 原动画: damage_launch_neutral
        ["LocomotionFallingKnockbackUp_Backward"]      = {"damage_launch_up"}, -- 原动画: damage_launch_up_b (莉莉没有_b版本)
        ["LocomotionFallingKnockbackUp_Forward"]      = {"damage_launch_up"}, -- 原动画: damage_launch_up
        ["LocomotionFallingNeutral"]      = {"jump_apex"}, -- 原动画: jump_apex
        ["LocomotionFallingUp"]      = {"jump_up"}, -- 原动画: jump_up
        ["LocomotionFly"]      = {"dive_forward"}, -- 原动画: fly_forward (莉莉没有飞行，使用潜水)
        ["LocomotionFlyDown"]      = {"dive_down"}, -- 原动画: fly_down
        ["LocomotionFlyIdle"]      = {"dive_idle"}, -- 原动画: fly_idle
        ["LocomotionFlyUp"]      = {"dive_up"}, -- 原动画: fly_up
        ["LocomotionHookAttach"]      = {"wire", "wire"}, -- 原动画: hook_attach_start, hook_attach_loop (莉莉没有分start和loop)
        ["LocomotionIdle"]      = {"idle"}, -- 原动画: idle
        ["LocomotionRide"]      = {"dash_loop"}, -- 原动画: ride_dash (莉莉没有骑乘，使用冲刺)
        ["LocomotionRideFallingDown"]      = {"jump_down"}, -- 原动画: ride_jump_down
        ["LocomotionRideFallingNeutral"]      = {"jump_apex"}, -- 原动画: ride_jump_apex
        ["LocomotionRideFallingUp"]      = {"jump_up"}, -- 原动画: ride_jump_up
        ["LocomotionRun"]      = {"run"}, -- 原动画: run
        ["LocomotionSlide"]      = {"walk", "walk"}, -- 原动画: slide_down_start, slide_down_loop (莉莉没有滑行，使用行走)
        ["LocomotionSwimIdle"]      = {"swim_idle"}, -- 原动画: swim_idle
        ["LocomotionSwimLateral"]      = {"swim_forward"}, -- 原动画: swim_forward
        ["LocomotionUnderwaterDashDown"]      = {"dive_down"}, -- 原动画: dive_dash_down (莉莉没有dive_dash，使用普通dive)
        ["LocomotionUnderwaterDashDownLateral"]      = {"dive_down"}, -- 原动画: dive_dash_halfdown
        ["LocomotionUnderwaterDashLateral"]      = {"dive_forward"}, -- 原动画: dive_dash_forward
        ["LocomotionUnderwaterDashUp"]      = {"dive_up"}, -- 原动画: dive_dash_up
        ["LocomotionUnderwaterDashUpLateral"]      = {"dive_up"}, -- 原动画: dive_dash_halfup
        ["LocomotionUnderwaterDown"]      = {"dive_down"}, -- 原动画: dive_down
        ["LocomotionUnderwaterDownLateral"]      = {"dive_down"}, -- 原动画: dive_halfdown (莉莉没有half版本)
        ["LocomotionUnderwaterIdle"]      = {"dive_idle"}, -- 原动画: dive_idle
        ["LocomotionUnderwaterLateral"]      = {"dive_forward"}, -- 原动画: dive_forward
        ["LocomotionUnderwaterRideDown"]      = {"dive_down"}, -- 原动画: dive_ride_down (莉莉没有骑乘)
        ["LocomotionUnderwaterRideDownLateral"]      = {"dive_down"}, -- 原动画: dive_ride_halfdown
        ["LocomotionUnderwaterRideLateral"]      = {"dive_forward"}, -- 原动画: dive_ride_forward
        ["LocomotionUnderwaterRideUp"]      = {"dive_up"}, -- 原动画: dive_ride_up
        ["LocomotionUnderwaterRideUpLateral"]      = {"dive_up"}, -- 原动画: dive_ride_halfup
        ["LocomotionUnderwaterUp"]      = {"dive_up"}, -- 原动画: dive_up
        ["LocomotionUnderwaterUpLateral"]      = {"dive_up"}, -- 原动画: dive_halfup (莉莉没有half版本)
        ["LocomotionWalk"]      = {"walk"}, -- 原动画: walk
        ["LocomotionWallGrab"]      = {"wall_grab_loop"}, -- 原动画: wall_grab_loop
        ["TurnGrounded_Default"]      = {"idle_turn"}, -- 原动画: idle_turn
        ["TurnGrounded_Fast"]      = {"idle_turn"}, -- 原动画: dash_turn (莉莉没有dash_turn，使用idle_turn)
        ["TurnGrounded_Slow"]      = {"run_turn"}, -- 原动画: run_turn
        ["TurnSwim_Default"]      = {"swim_idle_turn"}, -- 原动画: swim_idle_turn
        ["TurnSwim_Slow"]      = {"swim_forward_turn"}, -- 原动画: swim_forward_turn
        ["TurnUnderwater_Dash_Down"]      = {"dive_turn"}, -- 原动画: dive_dash_down_turn (莉莉没有dash版本)
        ["TurnUnderwater_Dash_Up"]      = {"dive_turn"}, -- 原动画: dive_dash_up_turn
        ["TurnUnderwater_Default"]      = {"dive_turn"}, -- 原动画: dive_idle_turn (莉莉没有idle_turn，使用dive_turn)
        ["TurnUnderwater_Ride_Down"]      = {"dive_turn"}, -- 原动画: dive_ride_down_turn (莉莉没有骑乘)
        ["TurnUnderwater_Ride_Up"]      = {"dive_turn"}, -- 原动画: dive_ride_up_turn
    }

    -- 硬直模块
    local staggerConfig = {
        ["KnockbackStaggers"] = {"damage_loop", "damage_end"}, -- 原动画: {"damage_loop", "damage_end"}
        ["KnockbackStaggersSwimming"] = {"damage_air_loop", "damage_air_end"} -- 原动画: {"damage_dive_loop", "damage_dive_end"} (莉莉没有dive版本，使用air)
    }

    -- 过渡模块 (TransitionDefinitions，Lilac 有 39 个)
    local transitionConfig = {
        ["TransitionDefinitions"] = {
            "landing", -- 原动画: landing
            "landing", -- 原动画: landing_heavy (莉莉没有heavy，使用普通landing)
            "landing", -- 原动画: walk_landing (莉莉没有walk_landing，使用普通landing)
            "landing", -- 原动画: run_landing
            "landing", -- 原动画: run_landing_heavy
            "landing", -- 原动画: dash_landing (莉莉没有dash_landing，使用普通landing)
            "run_stop", -- 原动画: run_stop
            "run_stop", -- 原动画: run_stop
            "run_stop", -- 原动画: run_stop
            "run_stop", -- 原动画: dash_stop (莉莉没有dash_stop，使用run_stop)
            "run_stop", -- 原动画: dash_stop
            "run_stop", -- 原动画: run_stop
            "jump_apex", -- 原动画: ride_jump_apex_transition (莉莉没有骑乘，使用普通跳跃)
            "jump_apex", -- 原动画: ride_jump_apex_transition
            "jump_apex", -- 原动画: ride_jump_apex_transition
            "jump_down", -- 原动画: ride_jump_down_transition
            "jump_apex", -- 原动画: ride_jump_apex_transition
            "jump_down", -- 原动画: ride_jump_down_transition
            "jump_down", -- 原动画: ride_jump_down_transition
            "jump_down", -- 原动画: ride_jump_down_transition
            "jump_down", -- 原动画: ride_jump_down_transition
            "jump_up_air", -- 原动画: ride_jump_up_air_transition
            "jump_up_air", -- 原动画: ride_jump_up_air_transition
            "jump_up_air", -- 原动画: ride_jump_up_air_transition
            "jump_up_air", -- 原动画: ride_jump_up_air_transition
            "jump_up_air", -- 原动画: ride_jump_up_air_transition
            "jump_up_air", -- 原动画: ride_jump_up_air_transition
            "landing", -- 原动画: ride_landing
            "landing", -- 原动画: ride_landing
            "landing", -- 原动画: ride_landing
            "landing", -- 原动画: ride_landing
            "landing", -- 原动画: ride_landing
            "landing", -- 原动画: ride_landing
            "landing", -- 原动画: ride_landing
            "jump_apex", -- 原动画: ride_jump_apex_transition
            "crouch_start", -- 原动画: crouch_start
            "crouch_end", -- 原动画: crouch_end
            "lookup_start", -- 原动画: look_up_start
            "lookup_end"  -- 原动画: look_up_end
        }
    }

    -- 2. 执行修改 (CDO)
    local cdoSpine = StaticFindObject(spinePath)
    if cdoSpine then
        Writer.Set_SpineAnimator(cdoSpine, commonConfig, staggerConfig, transitionConfig)
    end

    -- 3. 执行修改 (Instance)
    local instSpine = Writer.FindInstanceFromCDO(spinePath)
    if instSpine then
        Writer.Set_SpineAnimator(instSpine, commonConfig, staggerConfig, transitionConfig)
    end

    print("\n========== 操作完成 ==========\n")
end

RegisterKeyBind(Key.FIVE, { ModifierKey.ALT }, function()
    ExecuteInGameThread(function()
        ReplaceLilacSpineData2Lily()
        RunWriteTest()
    end)
end)