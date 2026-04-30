-- Lilac2Lily 动画配置文件
-- 用于 SpineAnimationManager 的 UpdateAllAnimations 模式

local Lilac2LilyAnimationConfig = {}

-- ================================================
-- CommandModule_PlayAnimation
-- ================================================
-- 闪避（4个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge.Default__BP_Command_Dodge_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"dodge"} -- 原动画: dodge
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge_Grounded.Default__BP_Command_Dodge_Grounded_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"dodge"} -- 原动画: dodge
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge_Airborne.Default__BP_Command_Dodge_Airborne_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"dodge_air"} -- 原动画: dodge_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_DodgeWeak.Default__BP_Command_DodgeWeak_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"stumble"} -- 原动画: stumble
}

-- 爬墙（7个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_FT_Middle.Default__BP_Command_AutoClimb_FT_Middle_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_high"} -- 原动画: wall_climb_middle
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_Middle.Default__BP_Command_AutoClimb_Middle_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_high"} -- 原动画: wall_climb_middle
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_FT_Low.Default__BP_Command_AutoClimb_FT_Low_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_low"} -- 原动画: wall_climb_low
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_Low.Default__BP_Command_AutoClimb_Low_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_low"} -- 原动画: wall_climb_low
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_Dash.Default__BP_Command_AutoClimb_Dash_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_high"} -- 原动画: wall_climb_low
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_FT_High.Default__BP_Command_AutoClimb_FT_High_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_high"} -- 原动画: wall_climb_high
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_AutoClimb_High.Default__BP_Command_AutoClimb_High_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"wall_climb_high"} -- 原动画: wall_climb_high
}

-- 其他基础动作（3个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_LookUp.Default__BP_Command_LookUp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"lookup_loop"} -- 原动画: look_up_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Crouch.Default__BP_Command_Crouch_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"crouch_loop"} -- 原动画: crouch_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_FallThrough.Default__BP_Command_FallThrough_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"jump_down"} -- 原动画: jump_down
}

-- 跳跃（4个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Jump_Airborne_Ride.Default__BP_Command_Jump_Airborne_Ride_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"dash_loop"} -- 原动画: ride_jump_up_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Jump_Airborne.Default__BP_Command_Jump_Airborne_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "jump_up_air", -- 原动画: jump_up_air_start
        "jump_up_air"  -- 原动画: jump_up_air
    }
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Jump_Swimming.Default__BP_Command_Jump_Swimming_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"jump_up"} -- 原动画: jump_up
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_HighJump_Charge.Default__BP_Command_HighJump_Charge_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "lookup_start", -- 原动画: high_jump_charge_start
        "lookup_loop"  -- 原动画: high_jump_charge_loop
    }
}

-- 治疗/复活（7个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Heal.Default__BP_Command_Heal_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"recovery"} -- 原动画: heal
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Heal_FullHP.Default__BP_Command_Heal_FullHP_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"event_deny"} -- 原动画: heal_failure
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Heal_NoHeal.Default__BP_Command_Heal_NoHeal_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"event_deny"} -- 原动画: heal_failure
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_WakeUp.Default__BP_Command_Respawn_WakeUp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"rest_sleep_loop"} -- 原动画: rest_sleep_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_WakeUp_End.Default__BP_Command_Respawn_WakeUp_End_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "rest_sleep_end", -- 原动画: rest_sleep_end
        "rest_end" -- 原动画: rest_sit_end
    }
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_FastTravel_Lv1.Default__BP_Command_Respawn_FastTravel_Lv1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"get_start_A"} -- 原动画: fasttravel_1
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Respawn_FastTravel_Lv2.Default__BP_Command_Respawn_FastTravel_Lv2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"get_start_B"} -- 原动画: fasttravel_2
}

-- 攻击技能（3个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_PileAttack.Default__BP_Command_PileAttack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "attack_pound_charge", -- 原动画: attack_pound_start
        "attack_pound_fall_loop" -- 原动画: attack_pound_loop
    }
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_PileAttack_Landing_Lv1.Default__BP_Command_PileAttack_Landing_Lv1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_pound_landing"} -- 原动画: attack_pound_landing
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_PileAttack_Landing_Lv2.Default__BP_Command_PileAttack_Landing_Lv2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_pound_landing"} -- 原动画: attack_pound_landing
}

-- 墙冲刺（2个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_WallDash_Charge.Default__BP_Command_WallDash_Charge_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "wall_grab_loop", -- 原动画: wall_dash_charge_start
        "wall_grab_loop"  -- 原动画: wall_dash_charge_loop
    }
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_WallDash_Release_LV1.Default__BP_Command_WallDash_Release_Lv1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "dash_loop", -- 原动画: wall_dash_start
        "dash_loop"  -- 原动画: wall_dash_loop
    }
}

-- 格挡（装备动作）（9个）
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry.Default__BP_Command_Parry_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Ready.Default__BP_Command_Parry_001_Normal_Ready_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_grounded"} -- 原动画: parry_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Air_Ready.Default__BP_Command_Parry_001_Normal_Air_Ready_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry"} -- 原动画: parry_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Success.Default__BP_Command_Parry_001_Normal_Success_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: parry_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_001_Normal_Air_Success.Default__BP_Command_Parry_001_Normal_Air_Success_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: parry_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Ready.Default__BP_Command_Parry_003_Buster_Ready_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_grounded"} -- 原动画: parry_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Air_Ready.Default__BP_Command_Parry_003_Buster_Air_Ready_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry"} -- 原动画: parry_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Success.Default__BP_Command_Parry_003_Buster_Success_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: parry_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/EquipmentActions/Parry/BP_Command_Parry_003_Buster_Air_Success.Default__BP_Command_Parry_003_Buster_Air_Success_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: parry_air_success
}

-- Lilac2Lily 替身使者动画配置总表
-- 自动生成 - 包含所有替身使者的配置
-- 总计: 28 个替身使者, 202 个配置项
-- 映射统计: 218 个已映射, 0 个未找到映射

-- 生成的配置文件:
-- - s5000_Reaper: 38 配置项
-- - s5001_Reaper: 32 配置项
-- - s5002_Reaper: 30 配置项
-- - s5010_Lancer: 13 配置项
-- - s5011_Lancer: 13 配置项
-- - s5012_Lancer: 13 配置项
-- - s5030_Rogue: 2 配置项
-- - s5031_Rogue: 2 配置项
-- - s5032_Rogue: 2 配置项
-- - s5040_Maiden: 1 配置项
-- - s5050_Ronin: 7 配置项
-- - s5051_Ronin: 3 配置项
-- - s5052_Ronin: 4 配置项
-- - s5060_Beast: 8 配置项
-- - s5061_Beast: 8 配置项
-- - s5062_Beast: 8 配置项
-- - s5070_Witch: 2 配置项
-- - s5071_Witch: 2 配置项
-- - s5072_Witch: 2 配置项
-- - s5080_Hawk: 2 配置项
-- - s5081_Hawk: 1 配置项
-- - s5082_Hawk: 1 配置项
-- - s5090_Owl: 2 配置项
-- - s5091_Owl: 1 配置项
-- - s5092_Owl: 1 配置项
-- - s5110_Gunman: 2 配置项
-- - s5111_Gunman: 1 配置项
-- - s5112_Gunman: 1 配置项

-- ================================================
-- 合并的配置内容
-- ================================================

-- ========== s5000_Reaper ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/CMD_summon_s5000_LV1_Sp.Default__CMD_summon_s5000_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5000"} -- 原动画: SP_s5000
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/CMD_summon_s5000_LV1_Sp_Air.Default__CMD_summon_s5000_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5000"} -- 原动画: SP_s5000_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_1.Default__CMD_summon_s5000_LV1_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_2.Default__CMD_summon_s5000_LV1_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_3.Default__CMD_summon_s5000_LV1_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_Air_1.Default__CMD_summon_s5000_LV1_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_Air_2.Default__CMD_summon_s5000_LV1_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_Air_3.Default__CMD_summon_s5000_LV1_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_Move_1.Default__CMD_summon_s5000_LV1_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_Move_2.Default__CMD_summon_s5000_LV1_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv1/CMD_summon_s5000_LV1_Combo_Move_3.Default__CMD_summon_s5000_LV1_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_1.Default__CMD_summon_s5000_LV2_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_2.Default__CMD_summon_s5000_LV2_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_3.Default__CMD_summon_s5000_LV2_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_4.Default__CMD_summon_s5000_LV2_Combo_4_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Air_1.Default__CMD_summon_s5000_LV2_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Air_2.Default__CMD_summon_s5000_LV2_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Air_3.Default__CMD_summon_s5000_LV2_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Air_4.Default__CMD_summon_s5000_LV2_Combo_Air_4_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Move_1.Default__CMD_summon_s5000_LV2_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Move_2.Default__CMD_summon_s5000_LV2_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Move_3.Default__CMD_summon_s5000_LV2_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv2/CMD_summon_s5000_LV2_Combo_Move_4.Default__CMD_summon_s5000_LV2_Combo_Move_4_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_1.Default__CMD_summon_s5000_LV3_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_2.Default__CMD_summon_s5000_LV3_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_3.Default__CMD_summon_s5000_LV3_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_4.Default__CMD_summon_s5000_LV3_Combo_4_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_5.Default__CMD_summon_s5000_LV3_Combo_5_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_e
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Air_1.Default__CMD_summon_s5000_LV3_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Air_2.Default__CMD_summon_s5000_LV3_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Air_3.Default__CMD_summon_s5000_LV3_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Air_4.Default__CMD_summon_s5000_LV3_Combo_Air_4_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Air_5.Default__CMD_summon_s5000_LV3_Combo_Air_5_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_e
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Move_1.Default__CMD_summon_s5000_LV3_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Move_2.Default__CMD_summon_s5000_LV3_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Move_3.Default__CMD_summon_s5000_LV3_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Move_4.Default__CMD_summon_s5000_LV3_Combo_Move_4_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5000_Reaper/Lv3/CMD_summon_s5000_LV3_Combo_Move_5.Default__CMD_summon_s5000_LV3_Combo_Move_5_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_e
}

-- ========== s5001_Reaper ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/CMD_summon_s5001_LV1_Sp.Default__CMD_summon_s5001_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5000"} -- 原动画: SP_s5000
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/CMD_summon_s5001_LV1_Sp_Air.Default__CMD_summon_s5001_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5000"} -- 原动画: SP_s5000_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_1.Default__CMD_summon_s5001_LV1_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_2.Default__CMD_summon_s5001_LV1_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_3.Default__CMD_summon_s5001_LV1_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_Air_1.Default__CMD_summon_s5001_LV1_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_Air_2.Default__CMD_summon_s5001_LV1_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_Air_3.Default__CMD_summon_s5001_LV1_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_Move_1.Default__CMD_summon_s5001_LV1_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_Move_2.Default__CMD_summon_s5001_LV1_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv1/CMD_summon_s5001_LV1_Combo_Move_3.Default__CMD_summon_s5001_LV1_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_1.Default__CMD_summon_s5001_LV2_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_2.Default__CMD_summon_s5001_LV2_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_3.Default__CMD_summon_s5001_LV2_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_Air_1.Default__CMD_summon_s5001_LV2_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_Air_2.Default__CMD_summon_s5001_LV2_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_Air_3.Default__CMD_summon_s5001_LV2_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_Move_1.Default__CMD_summon_s5001_LV2_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_Move_2.Default__CMD_summon_s5001_LV2_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/Lv2/CMD_summon_s5001_LV2_Combo_Move_3.Default__CMD_summon_s5001_LV2_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_1.Default__CMD_summon_s5001_LV3_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_2.Default__CMD_summon_s5001_LV3_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_3.Default__CMD_summon_s5001_LV3_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_4.Default__CMD_summon_s5001_LV3_Combo_4_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Air_1.Default__CMD_summon_s5001_LV3_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Air_2.Default__CMD_summon_s5001_LV3_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Air_3.Default__CMD_summon_s5001_LV3_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_air_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Air_4.Default__CMD_summon_s5001_LV3_Combo_Air_4_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Move_1.Default__CMD_summon_s5001_LV3_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Move_2.Default__CMD_summon_s5001_LV3_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Move_3.Default__CMD_summon_s5001_LV3_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_d
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5001_Reaper/LV3/CMD_summon_s5001_LV3_Combo_Move_4.Default__CMD_summon_s5001_LV3_Combo_Move_4_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_default_c
}

-- ========== s5002_Reaper ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/CMD_summon_s5002_LV1_Sp.Default__CMD_summon_s5002_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5000"} -- 原动画: SP_s5000
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/CMD_summon_s5002_LV1_Sp_Air.Default__CMD_summon_s5002_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5000"} -- 原动画: SP_s5000_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv1/CMD_summon_s5002_LV1_Combo_1.Default__CMD_summon_s5002_LV1_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_axe_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv1/CMD_summon_s5002_LV1_Combo_2.Default__CMD_summon_s5002_LV1_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_axe_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv1/CMD_summon_s5002_LV1_Combo_Air_1.Default__CMD_summon_s5002_LV1_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_axe_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv1/CMD_summon_s5002_LV1_Combo_Air_2.Default__CMD_summon_s5002_LV1_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_axe_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv1/CMD_summon_s5002_LV1_Combo_Move_1.Default__CMD_summon_s5002_LV1_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_axe_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv1/CMD_summon_s5002_LV1_Combo_Move_2.Default__CMD_summon_s5002_LV1_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_axe_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_1.Default__CMD_summon_s5002_LV2_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_axe_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_2.Default__CMD_summon_s5002_LV2_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_3.Default__CMD_summon_s5002_LV2_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_axe_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Air_1.Default__CMD_summon_s5002_LV2_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_axe_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Air_2.Default__CMD_summon_s5002_LV2_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Air_3.Default__CMD_summon_s5002_LV2_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_axe_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Airmove_1.Default__CMD_summon_s5002_LV2_Combo_Airmove_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_axe_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Airmove_3.Default__CMD_summon_s5002_LV2_Combo_Airmove_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_axe_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Move_1.Default__CMD_summon_s5002_LV2_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_axe_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Move_2.Default__CMD_summon_s5002_LV2_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Move_3.Default__CMD_summon_s5002_LV2_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_axe_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Swimove_1.Default__CMD_summon_s5002_LV2_Combo_Swimove_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_axe_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv2/CMD_summon_s5002_LV2_Combo_Swimove_3.Default__CMD_summon_s5002_LV2_Combo_Swimove_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_axe_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_1.Default__CMD_summon_s5002_LV3_Combo_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A"} -- 原动画: attack_axe_stand_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_2.Default__CMD_summon_s5002_LV3_Combo_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_B"} -- 原动画: attack_axe_stand_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_3.Default__CMD_summon_s5002_LV3_Combo_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_C"} -- 原动画: attack_axe_stand_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_Air_1.Default__CMD_summon_s5002_LV3_Combo_Air_1_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A"} -- 原动画: attack_axe_air_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_Air_2.Default__CMD_summon_s5002_LV3_Combo_Air_2_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_B"} -- 原动画: attack_axe_air_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_Air_3.Default__CMD_summon_s5002_LV3_Combo_Air_3_C:CommandModule_PlayAnimation_1"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_C"} -- 原动画: attack_axe_air_c
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_Move_1.Default__CMD_summon_s5002_LV3_Combo_Move_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A"} -- 原动画: attack_axe_default_a
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_Move_2.Default__CMD_summon_s5002_LV3_Combo_Move_2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_B"} -- 原动画: attack_axe_default_b
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5002_Reaper/Lv3/CMD_summon_s5002_LV3_Combo_Move_3.Default__CMD_summon_s5002_LV3_Combo_Move_3_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_C"} -- 原动画: attack_axe_default_c
}

-- ========== s5010_Lancer ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/CMD_summon_s5010_LV1_Sp.Default__CMD_summon_s5010_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5020"} -- 原动画: SP_s5010
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/CMD_summon_s5010_LV1_Sp_Air.Default__CMD_summon_s5010_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_start"} -- 原动画: SP_s5010_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV1/CMD_summon_s5010_LV1_Charge_1.Default__CMD_summon_s5010_LV1_Charge_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_start",
        "summon_DEFAULT_A_loop"
    } -- 原动画: attack_stand_a_start, attack_stand_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV1/CMD_summon_s5010_LV1_Charge_1_Release.Default__CMD_summon_s5010_LV1_Charge_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A_release"} -- 原动画: attack_stand_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV1/CMD_summon_s5010_LV1_Charge_Air_1.Default__CMD_summon_s5010_LV1_Charge_Air_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_start",
        "summon_air_DEFAULT_A_loop"
    } -- 原动画: attack_air_a_start, attack_air_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV1/CMD_summon_s5010_LV1_Charge_Air_1_Release.Default__CMD_summon_s5010_LV1_Charge_Air_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV1/CMD_summon_s5010_LV1_Charge_Air_1_ReleaseMax.Default__CMD_summon_s5010_LV1_Charge_Air_1_ReleaseMax_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV2/CMD_summon_s5010_LV2_Charge_1.Default__CMD_summon_s5010_LV2_Charge_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_start",
        "summon_DEFAULT_A_loop"
    } -- 原动画: attack_stand_a_start, attack_stand_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV2/CMD_summon_s5010_LV2_Charge_1_Release.Default__CMD_summon_s5010_LV2_Charge_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A_release"} -- 原动画: attack_stand_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV2/CMD_summon_s5010_LV2_Charge_Air_1.Default__CMD_summon_s5010_LV2_Charge_Air_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_start",
        "summon_air_DEFAULT_A_loop"
    } -- 原动画: attack_air_a_start, attack_air_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV2/CMD_summon_s5010_LV2_Charge_Air_1_Release.Default__CMD_summon_s5010_LV2_Charge_Air_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV2/CMD_summon_s5010_LV2_Charge_Air_1_ReleaseMax.Default__CMD_summon_s5010_LV2_Charge_Air_1_ReleaseMax_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5010_Lancer/LV2/CMD_summon_s5010_LV2_Charge_Air_1_ReleaseMax2.Default__CMD_summon_s5010_LV2_Charge_Air_1_ReleaseMax2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

-- ========== s5011_Lancer ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/CMD_summon_s5011_LV1_Sp.Default__CMD_summon_s5011_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5020"} -- 原动画: SP_s5010
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/CMD_summon_s5011_LV1_Sp_Air.Default__CMD_summon_s5011_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_start"} -- 原动画: SP_s5010_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV1/CMD_summon_s5011_LV1_Charge_1.Default__CMD_summon_s5011_LV1_Charge_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_start",
        "summon_DEFAULT_A_loop"
    } -- 原动画: attack_stand_a_start, attack_stand_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV1/CMD_summon_s5011_LV1_Charge_1_Release.Default__CMD_summon_s5011_LV1_Charge_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A_release"} -- 原动画: attack_stand_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV1/CMD_summon_s5011_LV1_Charge_Air_1.Default__CMD_summon_s5011_LV1_Charge_Air_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_start",
        "summon_air_DEFAULT_A_loop"
    } -- 原动画: attack_air_a_start, attack_air_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV1/CMD_summon_s5011_LV1_Charge_Air_1_Release.Default__CMD_summon_s5011_LV1_Charge_Air_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV1/CMD_summon_s5011_LV1_Charge_Air_1_ReleaseMax.Default__CMD_summon_s5011_LV1_Charge_Air_1_ReleaseMax_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV2/CMD_summon_s5011_LV2_Charge_1.Default__CMD_summon_s5011_LV2_Charge_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_start",
        "summon_DEFAULT_A_loop"
    } -- 原动画: attack_stand_a_start, attack_stand_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV2/CMD_summon_s5011_LV2_Charge_1_Release.Default__CMD_summon_s5011_LV2_Charge_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A_release"} -- 原动画: attack_stand_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV2/CMD_summon_s5011_LV2_Charge_Air_1.Default__CMD_summon_s5011_LV2_Charge_Air_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_start",
        "summon_air_DEFAULT_A_loop"
    } -- 原动画: attack_air_a_start, attack_air_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV2/CMD_summon_s5011_LV2_Charge_Air_1_Release.Default__CMD_summon_s5011_LV2_Charge_Air_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV2/CMD_summon_s5011_LV2_Charge_Air_1_ReleaseMax.Default__CMD_summon_s5011_LV2_Charge_Air_1_ReleaseMax_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5011_Lancer/LV2/CMD_summon_s5011_LV2_Charge_Air_1_ReleaseMax2.Default__CMD_summon_s5011_LV2_Charge_Air_1_ReleaseMax2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

-- ========== s5012_Lancer ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/CMD_summon_s5012_LV1_Sp.Default__CMD_summon_s5012_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5020"} -- 原动画: SP_s5010
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/CMD_summon_s5012_LV1_Sp_Air.Default__CMD_summon_s5012_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_start"} -- 原动画: SP_s5010_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV1/CMD_summon_s5012_LV1_Charge_1.Default__CMD_summon_s5012_LV1_Charge_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_start",
        "summon_DEFAULT_A_loop"
    } -- 原动画: attack_stand_a_start, attack_stand_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV1/CMD_summon_s5012_LV1_Charge_1_Release.Default__CMD_summon_s5012_LV1_Charge_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A_release"} -- 原动画: attack_stand_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV1/CMD_summon_s5012_LV1_Charge_Air_1.Default__CMD_summon_s5012_LV1_Charge_Air_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_start",
        "summon_air_DEFAULT_A_loop"
    } -- 原动画: attack_air_a_start, attack_air_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV1/CMD_summon_s5012_LV1_Charge_Air_1_Release.Default__CMD_summon_s5012_LV1_Charge_Air_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV1/CMD_summon_s5012_LV1_Charge_Air_1_ReleaseMax.Default__CMD_summon_s5012_LV1_Charge_Air_1_ReleaseMax_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV2/CMD_summon_s5012_LV2_Charge_1.Default__CMD_summon_s5012_LV2_Charge_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_start",
        "summon_DEFAULT_A_loop"
    } -- 原动画: attack_stand_a_start, attack_stand_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV2/CMD_summon_s5012_LV2_Charge_1_Release.Default__CMD_summon_s5012_LV2_Charge_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_DEFAULT_A_release"} -- 原动画: attack_stand_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV2/CMD_summon_s5012_LV2_Charge_Air_1.Default__CMD_summon_s5012_LV2_Charge_Air_1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_start",
        "summon_air_DEFAULT_A_loop"
    } -- 原动画: attack_air_a_start, attack_air_a_loop
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV2/CMD_summon_s5012_LV2_Charge_Air_1_Release.Default__CMD_summon_s5012_LV2_Charge_Air_1_Release_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV2/CMD_summon_s5012_LV2_Charge_Air_1_ReleaseMax.Default__CMD_summon_s5012_LV2_Charge_Air_1_ReleaseMax_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5012_Lancer/LV2/CMD_summon_s5012_LV2_Charge_Air_1_ReleaseMax2.Default__CMD_summon_s5012_LV2_Charge_Air_1_ReleaseMax2_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"summon_air_DEFAULT_A_release"} -- 原动画: attack_air_a_end
}

-- ========== s5030_Rogue ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5030_Rogue/CMD_summon_s5030_LV1_Sp.Default__CMD_summon_s5030_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5030"} -- 原动画: SP_s5030
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5030_Rogue/CMD_summon_s5030_LV1_Sp_Air.Default__CMD_summon_s5030_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5030"} -- 原动画: SP_s5030_air
}

-- ========== s5031_Rogue ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5031_Rogue/CMD_summon_s5031_LV1_Sp.Default__CMD_summon_s5031_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5030"} -- 原动画: SP_s5030
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5031_Rogue/CMD_summon_s5031_LV1_Sp_Air.Default__CMD_summon_s5031_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5030"} -- 原动画: SP_s5030_air
}

-- ========== s5032_Rogue ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5032_Rogue/CMD_summon_s5032_LV1_Sp.Default__CMD_summon_s5032_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5030"} -- 原动画: SP_s5030
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5032_Rogue/CMD_summon_s5032_LV1_Sp_Air.Default__CMD_summon_s5032_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5030"} -- 原动画: SP_s5030_air
}

-- ========== s5040_Maiden ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5040_Maiden/CMD_summon_s5040_Sp.Default__CMD_summon_s5040_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5040"} -- 原动画: SP_s5040
}

-- ========== s5050_Ronin ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_LV1_Sp.Default__CMD_summon_s5050_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5050"} -- 原动画: SP_s5050
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_LV1_Sp_Air.Default__CMD_summon_s5050_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5050"} -- 原动画: SP_s5050_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_Ronin_LV1.Default__CMD_summon_s5050_Ronin_LV1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_DEFAULT_A_5050",
        "attack_DEFAULT_A_5050"
    } -- 原动画: attack_s5050_start, attack_s5050_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_Ronin_LV1_air.Default__CMD_summon_s5050_Ronin_LV1_air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_5050",
        "attack_DEFAULT_A_5050"
    } -- 原动画: attack_s5050_air_start, attack_s5050_air_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_Ronin_LV1_down.Default__CMD_summon_s5050_Ronin_LV1_down_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_5050",
        "attack_DEFAULT_A_5050"
    } -- 原动画: attack_s5050_air_start, attack_s5050_air_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_Ronin_LV1_landing.Default__CMD_summon_s5050_Ronin_LV1_landing_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A_5050"} -- 原动画: attack_s5050_end
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5050_Ronin/CMD_summon_s5050_Ronin_LV1_up.Default__CMD_summon_s5050_Ronin_LV1_up_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {
        "summon_air_DEFAULT_A_5050",
        "attack_DEFAULT_A_5050"
    } -- 原动画: attack_s5050_air_start, attack_s5050_air_end
}

-- ========== s5051_Ronin ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5051_Ronin/CMD_summon_s5051_LV1_Sp.Default__CMD_summon_s5051_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5050"} -- 原动画: SP_s5050
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5051_Ronin/CMD_summon_s5051_LV1_Sp_Air.Default__CMD_summon_s5051_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5050"} -- 原动画: SP_s5050_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5051_Ronin/CMD_summon_s5051_Ronin_LV1.Default__CMD_summon_s5051_Ronin_LV1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A_5050"} -- 原动画: attack_s5051
}

-- ========== s5052_Ronin ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5052_Ronin/CMD_summon_s5052_LV1_Sp.Default__CMD_summon_s5052_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5050"} -- 原动画: SP_s5050
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5052_Ronin/CMD_summon_s5052_LV1_Sp_Air.Default__CMD_summon_s5052_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5050"} -- 原动画: SP_s5050_air
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5052_Ronin/CMD_summon_s5052_Ronin_LV1.Default__CMD_summon_s5052_Ronin_LV1_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_DEFAULT_A_5050"} -- 原动画: attack_s5052
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5052_Ronin/CMD_summon_s5052_Ronin_LV1_landing.Default__CMD_summon_s5052_Ronin_LV1_landing_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_pound_landing"} -- 原动画: attack_s5052_landing
}

-- ========== s5060_Beast ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Counter_Air_Attack.Default__CMD_summon_s5060_LV1_Counter_Air_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: counter_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Counter_Air_Start.Default__CMD_summon_s5060_LV1_Counter_Air_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry"} -- 原动画: counter_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Counter_Attack.Default__CMD_summon_s5060_LV1_Counter_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: counter_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Counter_Start.Default__CMD_summon_s5060_LV1_Counter_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_grounded"} -- 原动画: counter_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Sp_Air_Attack.Default__CMD_summon_s5060_LV1_Sp_Air_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_end"} -- 原动画: SP_s5060_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Sp_Air_Start.Default__CMD_summon_s5060_LV1_Sp_Air_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5060"} -- 原动画: SP_s5060_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Sp_Attack.Default__CMD_summon_s5060_LV1_Sp_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_end"} -- 原动画: SP_s5060_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5060_Beast/CMD_summon_s5060_LV1_Sp_Start.Default__CMD_summon_s5060_LV1_Sp_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5060"} -- 原动画: SP_s5060_start
}

-- ========== s5061_Beast ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Counter_Air_Attack.Default__CMD_summon_s5061_LV1_Counter_Air_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: counter_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Counter_Air_Start.Default__CMD_summon_s5061_LV1_Counter_Air_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry"} -- 原动画: counter_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Counter_Attack.Default__CMD_summon_s5061_LV1_Counter_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: counter_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Counter_Start.Default__CMD_summon_s5061_LV1_Counter_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_grounded"} -- 原动画: counter_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Sp_Air_Attack.Default__CMD_summon_s5061_LV1_Sp_Air_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_end"} -- 原动画: SP_s5060_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Sp_Air_Start.Default__CMD_summon_s5061_LV1_Sp_Air_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5060"} -- 原动画: SP_s5060_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Sp_Attack.Default__CMD_summon_s5061_LV1_Sp_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_end"} -- 原动画: SP_s5060_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5061_Beast/CMD_summon_s5061_LV1_Sp_Start.Default__CMD_summon_s5061_LV1_Sp_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5060"} -- 原动画: SP_s5060_start
}

-- ========== s5062_Beast ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Counter_Air_Attack.Default__CMD_summon_s5062_LV1_Counter_Air_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: counter_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Counter_Air_Start.Default__CMD_summon_s5062_LV1_Counter_Air_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry"} -- 原动画: counter_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Counter_Attack.Default__CMD_summon_s5062_LV1_Counter_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_achievement"} -- 原动画: counter_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Counter_Start.Default__CMD_summon_s5062_LV1_Counter_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"parry_grounded"} -- 原动画: counter_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Sp_Air_Attack.Default__CMD_summon_s5062_LV1_Sp_Air_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_end"} -- 原动画: SP_s5060_air_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Sp_Air_Start.Default__CMD_summon_s5062_LV1_Sp_Air_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5060"} -- 原动画: SP_s5060_air_start
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Sp_Attack.Default__CMD_summon_s5062_LV1_Sp_Attack_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_end"} -- 原动画: SP_s5060_success
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5062_Beast/CMD_summon_s5062_LV1_Sp_Start.Default__CMD_summon_s5062_LV1_Sp_Start_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5060"} -- 原动画: SP_s5060_start
}

-- ========== s5070_Witch ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5070_Witch/CMD_summon_s5070_LV1_Sp.Default__CMD_summon_s5070_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5070"} -- 原动画: SP_s5070
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5070_Witch/CMD_summon_s5070_LV1_Sp_Air.Default__CMD_summon_s5070_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5070"} -- 原动画: SP_s5070_air
}

-- ========== s5071_Witch ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5071_Witch/CMD_summon_s5071_LV1_Sp.Default__CMD_summon_s5071_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5070"} -- 原动画: SP_s5070
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5071_Witch/CMD_summon_s5071_LV1_Sp_Air.Default__CMD_summon_s5071_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5070"} -- 原动画: SP_s5070_air
}

-- ========== s5072_Witch ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5072_Witch/CMD_summon_s5072_LV1_Sp.Default__CMD_summon_s5072_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5070"} -- 原动画: SP_s5070
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5072_Witch/CMD_summon_s5072_LV1_Sp_Air.Default__CMD_summon_s5072_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5070"} -- 原动画: SP_s5070_air
}

-- ========== s5080_Hawk ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5080_Hawk/CMD_summon_s5080_LV1_Sp.Default__CMD_summon_s5080_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_5080"} -- 原动画: SP_s5080
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5080_Hawk/CMD_summon_s5080_LV1_Sp_Air.Default__CMD_summon_s5080_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5080"} -- 原动画: SP_s5080_air
}

-- ========== s5081_Hawk ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5081_Hawk/CMD_summon_s5081_LV1_Sp_Air.Default__CMD_summon_s5081_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5080"} -- 原动画: SP_s5080_air
}

-- ========== s5082_Hawk ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5082_Hawk/CMD_summon_s5082_LV1_Sp_Air.Default__CMD_summon_s5082_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_5080"} -- 原动画: SP_s5080_air
}

-- ========== s5090_Owl ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5090_Owl/CMD_summon_s5090_LV1_Sp.Default__CMD_summon_s5090_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_loop"} -- 原动画: SP_s5090
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5090_Owl/CMD_summon_s5090_LV1_Sp_Air.Default__CMD_summon_s5090_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_loop"} -- 原动画: SP_s5090_air
}

-- ========== s5091_Owl ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5091_Owl/CMD_summon_s5091_LV1_Sp_Air.Default__CMD_summon_s5091_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_loop"} -- 原动画: SP_s5090_air
}

-- ========== s5092_Owl ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5092_Owl/CMD_summon_s5092_LV1_Sp_Air.Default__CMD_summon_s5092_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_loop"} -- 原动画: SP_s5090_air
}

-- ========== s5110_Gunman ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5110_Gunman/CMD_summon_s5110_LV1_Sp.Default__CMD_summon_s5110_LV1_Sp_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_start"} -- 原动画: SP_s5110
}

Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5110_Gunman/CMD_summon_s5110_LV1_Sp_Air.Default__CMD_summon_s5110_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_start"} -- 原动画: SP_s5110_air
}

-- ========== s5111_Gunman ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5111_Gunman/CMD_summon_s5111_LV1_Sp_Air.Default__CMD_summon_s5111_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_start"} -- 原动画: SP_s5110_air
}

-- ========== s5112_Gunman ==========
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Summon/s5112_Gunman/CMD_summon_s5112_LV1_Sp_Air.Default__CMD_summon_s5112_LV1_Sp_Air_C:CommandModule_PlayAnimation_0"] = {
    AnimationDefinitions = {"attack_SP_air_start"} -- 原动画: SP_s5110_air
}

-- ================================================
-- CommandModule_PlayAnimation_InputDirection
-- ================================================
Lilac2LilyAnimationConfig["/Game/_Zion/Gameplay/Commands/Player/BP_Command_Dodge_Swimming.Default__BP_Command_Dodge_Swimming_C:CommandModule_PlayAnimation_InputDirection_0"] = {
    -- 基础动画定义
    AnimationDefinitions = {
        "swim_dodge_forward" -- 原动画: dive_dodge_forward
    },
    -- 方向相关动画（EInputDirection 枚举值：0-8）
    -- ((Up, (AnimationDefinitions=((AnimationName="dive_dodge_up")))),
    --  (Down, (AnimationDefinitions=((AnimationName="dive_dodge_down")))),
    --  (Left, (AnimationDefinitions=((AnimationName="dive_dodge_forward")))),
    --  (Right, (AnimationDefinitions=((AnimationName="dive_dodge_forward")))),
    --  (UpLeft, (AnimationDefinitions=((AnimationName="dive_dodge_halfup")))),
    --  (UpRight, (AnimationDefinitions=((AnimationName="dive_dodge_halfup")))),
    --  (DownRight, (AnimationDefinitions=((AnimationName="dive_dodge_halfdown")))),
    --  (DownLeft, (AnimationDefinitions=((AnimationName="dive_dodge_halfdown")))),
    --  (None, (AnimationDefinitions=((AnimationName="dive_dodge_forward")))))
    AnimationsForDirections = {
        [0] = {"swim_dodge_forward"}, -- None, 原动画: dive_dodge_forward
        [1] = {"swim_dodge_up"}, -- Up, 原动画: dive_dodge_up
        [2] = {"swim_dodge_down"}, -- Down, 原动画: dive_dodge_down
        [3] = {"swim_dodge_forward"}, -- Left, 原动画: dive_dodge_left
        [4] = {"swim_dodge_forward"}, -- Right, 原动画: dive_dodge_right
        [5] = {"swim_dodge_halfup"}, -- UpLeft, 原动画: dive_dodge_halfup
        [6] = {"swim_dodge_halfup"}, -- UpRight, 原动画: dive_dodge_halfup
        [7] = {"swim_dodge_halfdown"}, -- DownRight, 原动画: dive_dodge_halfdown
        [8] = {"swim_dodge_halfdown"}  -- DownLeft, 原动画: dive_dodge_halfdown
    }
}

-- ================================================
-- EventAction_PlayAnimations
-- ================================================
Lilac2LilyAnimationConfig["/Game/_Zion/Events/EVT_RestPoint.EVT_RestPoint:EventNodeAction_Sequence_7.EventAction_PlayAnimations_0"] = {
    AnimationDefinitions = {
        "rest_end" -- 原动画: rest_sit_end
    }
}

-- ================================================
-- EventAction_PlayRandomAnimations
-- ================================================
Lilac2LilyAnimationConfig["/Game/_Zion/Events/EVT_RestPoint.EVT_RestPoint:EventNodeAction_Sequence_6.EventAction_PlayRandomAnimations_0"] = {
    StartAnimationDefinitions = {
        "rest_start" -- 原动画: rest_sit_start
    },
    RandomAnimationDefinitions = {
        "rest_loop", -- 原动画: rest_sit_loop
        "rest_loop", -- 原动画: rest_sit_b_loop
        "rest_loop"  -- 原动画: rest_sit_c_loop
    }
}
Lilac2LilyAnimationConfig["/Game/_Zion/Events/EVT_RestPoint.EVT_RestPoint:EventNodeAction_Sequence_11.EventAction_PlayRandomAnimations_0"] = {
    StartAnimationDefinitions = {
        "rest_loop" -- 原动画: rest_sit_loop
    },
    RandomAnimationDefinitions = {
        "rest_loop", -- 原动画: rest_sit_loop
        "rest_loop", -- 原动画: rest_sit_b_loop
        "rest_loop"  -- 原动画: rest_sit_c_loop
    }
}

-- ================================================
-- SpineAnimatorComponent
-- ================================================
Lilac2LilyAnimationConfig["/Game/_Zion/Characters/p0000_Lilac/BP_p0000_Lilac.Default__BP_p0000_Lilac_C:SpineAnimator"] = {
    -- ========== 67个AnimationDefinitionsTypeComponent字段 ==========
    
    -- 1-2: 基础事件动画
    EventIdle = {"event_idle"}, -- 原动画: event_idle
    EventTurn = {"idle_turn"}, -- 原动画: event_idle_turn
    
    -- 3-7: 地面移动动画
    LocomotionIdle = {"idle"}, -- 原动画: idle
    LocomotionWalk = {"walk"}, -- 原动画: walk
    LocomotionRun = {"run"}, -- 原动画: run
    LocomotionDash = {"run"}, -- 原动画: dash
    LocomotionRide = {"dash_loop"}, -- 原动画: ride_dash
    
    -- 8-10: 普通下落动画
    LocomotionFallingUp = {"jump_up"}, -- 原动画: jump_up
    LocomotionFallingNeutral = {"jump_apex"}, -- 原动画: jump_apex
    LocomotionFallingDown = {"jump_down"}, -- 原动画: jump_down
    
    -- 11-13: 冲刺下落动画
    LocomotionDashFallingUp = {"jump_up"}, -- 原动画: dash_jump_up
    LocomotionDashFallingNeutral = {"jump_apex"}, -- 原动画: dash_jump_apex
    LocomotionDashFallingDown = {"jump_down"}, -- 原动画: dash_jump_down
    
    -- 14-16: 骑乘下落动画
    LocomotionRideFallingUp = {"dash_loop"}, -- 原动画: ride_jump_up
    LocomotionRideFallingNeutral = {"dash_loop"}, -- 原动画: ride_jump_apex
    LocomotionRideFallingDown = {"dash_loop"}, -- 原动画: ride_jump_down
    
    -- 17-22: 击退下落动画
    LocomotionFallingKnockbackUp_Forward = {"damage_launch_up"}, -- 原动画: damage_launch_up
    LocomotionFallingKnockbackUp_Backward = {"damage_launch_up"}, -- 原动画: damage_launch_up_b
    LocomotionFallingKnockbackNeutral_Forward = {"damage_launch_neutral"}, -- 原动画: damage_launch_neutral
    LocomotionFallingKnockbackNeutral_Backward = {"damage_launch_neutral"}, -- 原动画: damage_launch_neutral_b
    LocomotionFallingKnockbackDown_Forward = {"damage_launch_down"}, -- 原动画: damage_launch_down
    LocomotionFallingKnockbackDown_Backward = {"damage_launch_down_fast"}, -- 原动画: damage_launch_down_b
    
    -- 23-25: 墙壁相关动画
    LocomotionWallGrab = {"wall_grab_loop"}, -- 原动画: wall_grab_loop
    LocomotionSlide = {"crouch_start", "crouch_loop"}, -- 原动画: slide_down_start, slide_down_loop
    LocomotionHookAttach = {"wire_air", "dive_idle"}, -- 原动画: hook_attach_start, hook_attach_loop
    
    -- 26-27: 游泳动画
    LocomotionSwimIdle = {"swim_idle"}, -- 原动画: swim_idle
    LocomotionSwimLateral = {"swim_forward"}, -- 原动画: swim_forward
    
    -- 28-33: 水下移动动画
    LocomotionUnderwaterIdle = {"dive_idle"}, -- 原动画: dive_idle
    LocomotionUnderwaterUp = {"dive_up"}, -- 原动画: dive_up
    LocomotionUnderwaterUpLateral = {"dive_up"}, -- 原动画: dive_halfup
    LocomotionUnderwaterDown = {"dive_down"}, -- 原动画: dive_down
    LocomotionUnderwaterDownLateral = {"dive_down"}, -- 原动画: dive_halfdown
    LocomotionUnderwaterLateral = {"dive_forward"}, -- 原动画: dive_forward
    
    -- 34-38: 水下冲刺动画
    LocomotionUnderwaterDashUp = {"dive_up"}, -- 原动画: dive_dash_up
    LocomotionUnderwaterDashUpLateral = {"dive_up"}, -- 原动画: dive_dash_halfup
    LocomotionUnderwaterDashDown = {"dive_down"}, -- 原动画: dive_dash_down
    LocomotionUnderwaterDashDownLateral = {"dive_down"}, -- 原动画: dive_dash_halfdown
    LocomotionUnderwaterDashLateral = {"dive_forward"}, -- 原动画: dive_dash_forward
    
    -- 39-43: 水下骑乘动画
    LocomotionUnderwaterRideUp = {"dive_up"}, -- 原动画: dive_ride_up
    LocomotionUnderwaterRideUpLateral = {"dive_up"}, -- 原动画: dive_ride_halfup
    LocomotionUnderwaterRideDown = {"dive_down"}, -- 原动画: dive_ride_down
    LocomotionUnderwaterRideDownLateral = {"dive_down"}, -- 原动画: dive_ride_halfdown
    LocomotionUnderwaterRideLateral = {"dive_forward"}, -- 原动画: dive_ride_forward
    
    -- 44-47: 飞行动画, 跳过
    -- LocomotionFlyIdle = {},  -- 原动画: fly_idle (定义了但是永远不会被调用, 可能是废案, 也可能只是默认填充值)
    -- LocomotionFly = {},  -- 原动画: fly_forward (定义了但是永远不会被调用, 可能是废案, 也可能只是默认填充值)
    -- LocomotionFlyUp = {},  -- 原动画: fly_up (定义了但是永远不会被调用, 可能是废案, 也可能只是默认填充值)
    -- LocomotionFlyDown = {},  -- 原动画: fly_down (定义了但是永远不会被调用, 可能是废案, 也可能只是默认填充值)

    -- 48-50: 墙壁攀爬动画, 跳过
    -- LocomotionWallScalingIdle = {},  -- Lilac没有墙壁攀爬原动画
    -- LocomotionWallScalingForward = {},  -- Lilac没有墙壁攀爬原动画
    -- LocomotionWallScalingBackward = {},  -- Lilac没有墙壁攀爬原动画

    -- 51-54: 击退相关动画
    KnockbackLaunchLand = {"damage_launch_landing"}, -- 原动画: damage_launch_landing
    KnockbackLaunchLandBack = {"down_landing"}, -- 原动画: damage_launch_landing_b
    KnockbackLaunchStagger = {"down_loop"}, -- 原动画: down_loop
    KnockbackLaunchRecovery = {"wake"}, -- 原动画: wake
    
    -- 55-56: 眩晕动画, 跳过
    -- Stun = {},  -- Lilac没有眩晕原动画
    -- StunRecovery = {},  -- Lilac没有眩晕恢复原动画

    -- 57-59: 地面转身动画
    TurnGrounded_Slow = {"idle_turn"}, -- 原动画: idle_turn
    TurnGrounded_Default = {"run_turn"}, -- 原动画: run_turn
    TurnGrounded_Fast = {"run_turn"}, -- 原动画: dash_turn
    
    -- 60-61: 游泳转身动画
    TurnSwim_Slow = {"swim_idle_turn"}, -- 原动画: swim_idle_turn
    TurnSwim_Default = {"swim_forward_turn"}, -- 原动画: swim_forward_turn
    
    -- 62-66: 水下转身动画
    TurnUnderwater_Default = {"dive_turn"}, -- 原动画: dive_idle_turn
    TurnUnderwater_Dash_Up = {"dive_turn"}, -- 原动画: dive_dash_up_turn
    TurnUnderwater_Dash_Down = {"dive_turn"}, -- 原动画: dive_dash_down_turn
    TurnUnderwater_Ride_Up = {"dive_turn"}, -- 原动画: dive_ride_up_turn
    TurnUnderwater_Ride_Down = {"dive_turn"}, -- 原动画: dive_ride_down_turn

    -- 67: 飞行转身动画, 跳过
    -- TurnFlying_Default = {},  -- Lilac没有飞行转身原动画
    
    -- ========== 击退硬直动画组 ==========
    -- 注意：KnockbackStaggers 是数组，每个元素包含 Stagger 和 Recovery
    KnockbackStaggers = {
        {
            Stagger = {"damage_loop"}, -- 原动画: damage_loop
            Recovery = {"damage_end"}, -- 原动画: damage_end
        }
    },
    
    -- ========== 游泳时击退硬直动画组 ==========
    KnockbackStaggersSwimming = {
        {
            Stagger = {"damage_air_loop"}, -- 原动画: damage_dive_loop
            Recovery = {"damage_air_end"}  -- 原动画: damage_dive_end
        }
    },
    
    -- ========== 动画过渡定义 ==========
    -- 注意：TransitionDefinitions 有39个元素（每个是动画名数组）
    TransitionDefinitions = {
        {"landing"}, -- 1. landing
        {"landing"}, -- 2. landing_heavy
        {"landing"}, -- 3. walk_landing
        {"landing"}, -- 4. run_landing
        {"landing"}, -- 5. run_landing_heavy
        {"landing"}, -- 6. dash_landing
        {"run_stop"}, -- 7. run_stop
        {"run_stop"}, -- 8. run_stop
        {"run_stop"}, -- 9. run_stop
        {"run_stop"}, -- 10. dash_stop
        {"run_stop"}, -- 11. dash_stop
        {"run_stop"}, -- 12. run_stop
        {"dash_loop"}, -- 13. ride_jump_apex_transition
        {"dash_loop"}, -- 14. ride_jump_apex_transition
        {"dash_loop"}, -- 15. ride_jump_apex_transition
        {"dash_loop"}, -- 16. ride_jump_down_transition
        {"dash_loop"}, -- 17. ride_jump_apex_transition
        {"dash_loop"}, -- 18. ride_jump_down_transition
        {"dash_loop"}, -- 19. ride_jump_down_transition
        {"dash_loop"}, -- 20. ride_jump_down_transition
        {"dash_loop"}, -- 21. ride_jump_down_transition
        {"dash_loop"}, -- 22. ride_jump_up_air_transition
        {"dash_loop"}, -- 23. ride_jump_up_air_transition
        {"dash_loop"}, -- 24. ride_jump_up_air_transition
        {"dash_loop"}, -- 25. ride_jump_up_air_transition
        {"dash_loop"}, -- 26. ride_jump_up_air_transition
        {"dash_loop"}, -- 27. ride_jump_up_air_transition
        {"dash_loop"}, -- 28. ride_landing
        {"dash_loop"}, -- 29. ride_landing
        {"dash_loop"}, -- 30. ride_landing
        {"dash_loop"}, -- 31. ride_landing
        {"dash_loop"}, -- 32. ride_landing
        {"dash_loop"}, -- 33. ride_landing
        {"dash_loop"}, -- 34. ride_landing
        {"dash_loop"}, -- 35. ride_jump_apex_transition
        {"crouch_start"}, -- 36. crouch_start
        {"crouch_end"}, -- 37. crouch_end
        {"lookup_start"}, -- 38. look_up_start
        {"lookup_end"}  -- 39. look_up_end
    }
}

return Lilac2LilyAnimationConfig
