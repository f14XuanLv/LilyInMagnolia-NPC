---@enum EAITargetDetectionType
local EAITargetDetectionType = {
    None = 0,
    PlayerOnly = 1,
    ClosestTarget = 2,
    EAITargetDetectionType_MAX = 3,
}

---@enum EAbilityDirectionMode
local EAbilityDirectionMode = {
    SourceLocation = 0,
    AbilityLocation = 1,
    SourceForward = 2,
    AbilityForward = 3,
    AlwaysFrontal = 4,
    EAbilityDirectionMode_MAX = 5,
}

---@enum EAbilityInstantTarget
local EAbilityInstantTarget = {
    None = 0,
    Player = 1,
    OverlapSphere = 2,
    EAbilityInstantTarget_MAX = 3,
}

---@enum EAbilityInstantTriggerCondition
local EAbilityInstantTriggerCondition = {
    None = 0,
    ParriedActorFaction = 1,
    EAbilityInstantTriggerCondition_MAX = 2,
}

---@enum EAbilityOffsetMode
local EAbilityOffsetMode = {
    None = 0,
    InputDirection = 1,
    InputDirectionAbsoluteX = 2,
    EAbilityOffsetMode_MAX = 3,
}

---@enum EAbilityOriginActorType
local EAbilityOriginActorType = {
    Source = 0,
    ClosestEnemy = 1,
    Spawner = 2,
    EAbilityOriginActorType_MAX = 3,
}

---@enum EAbilityWeightCategory
local EAbilityWeightCategory = {
    None = 0,
    Light = 10,
    Medium = 20,
    Heavy = 30,
    EAbilityWeightCategory_MAX = 31,
}

---@enum EActionInputType
local EActionInputType = {
    None = 0,
    Jump = 1,
    Move = 2,
    Move_Right = 3,
    Move_Left = 4,
    Move_Up = 5,
    Move_Down = 6,
    Dodge = 7,
    Pause = 8,
    CameraOffset = 9,
    CameraOffset_Right = 10,
    CameraOffset_Left = 11,
    CameraOffset_Up = 12,
    CameraOffset_Down = 13,
    Attack_A = 14,
    Attack_B = 15,
    Attack_C = 16,
    Attack_D = 17,
    AttackSpecial_A = 18,
    AttackSpecial_B = 19,
    AttackSpecial_C = 20,
    AttackSpecial_D = 21,
    Menu = 22,
    Hook = 23,
    Heal = 24,
    Interact = 25,
    Special_Modifier = 26,
    Minimap = 27,
    Shortcut_AttackSpecial_A = 28,
    Shortcut_AttackSpecial_B = 29,
    Shortcut_AttackSpecial_C = 30,
    Shortcut_AttackSpecial_D = 31,
    EActionInputType_MAX = 32,
}

---@enum EActorHideMode
local EActorHideMode = {
    None = 0,
    SetHiddenInGame = 1,
    Destroy = 2,
    Animation = 3,
    EActorHideMode_MAX = 4,
}

---@enum EAfterImageType
local EAfterImageType = {
    None = 0,
    FX = 1,
    Texture = 2,
    EAfterImageType_MAX = 3,
}

---@enum EAptitudeType
local EAptitudeType = {
    None = 0,
    Crouch = 1,
    Heal = 2,
    Dodge = 5,
    DodgeWeak = 6,
    Jump = 10,
    DoubleJump = 11,
    Dash = 30,
    DashCharge = 31,
    DashChargeUnderwater = 32,
    PileAttack = 40,
    HighJump = 50,
    WallGrab = 60,
    WallCharge = 65,
    Dive = 75,
    Hook = 100,
    SP = 110,
    FastTravel = 150,
    EAptitudeType_MAX = 151,
}

---@enum EAttackElement
local EAttackElement = {
    None = 0,
    Fire = 10,
    Ice = 15,
    Electric = 20,
    Dash = 50,
    HighJump = 55,
    WallDash = 60,
    PileAttackLv1 = 65,
    PileAttackLv2 = 66,
    EAttackElement_MAX = 67,
}

---@enum EAttackType
local EAttackType = {
    Physic = 0,
    Magic = 5,
    EAttackType_MAX = 6,
}

---@enum EAuraFXDeactivateTiming
local EAuraFXDeactivateTiming = {
    None = 0,
    OnDeathProcessStart = 1,
    EAuraFXDeactivateTiming_MAX = 2,
}

---@enum EAutoClimbDirectionMode
local EAutoClimbDirectionMode = {
    None = 0,
    Upward = 1,
    UpwardNeutral = 2,
    UpwardNeutralDownward = 3,
    EAutoClimbDirectionMode_MAX = 4,
}

---@enum EAutoClimbType
local EAutoClimbType = {
    None = 0,
    Low = 1,
    Middle = 2,
    High = 3,
    Dash = 4,
    DashCharge = 5,
    EAutoClimbType_MAX = 6,
}

---@enum EBorderType
local EBorderType = {
    None = 0,
    Left = 1,
    Right = 2,
    LeftOrRight = 3,
    Top = 4,
    Bottom = 5,
    TopOrBottom = 6,
    Any = 7,
    TargetForward = 8,
    TargetBackward = 9,
    EBorderType_MAX = 10,
}

---@enum EBreadcrumbType
local EBreadcrumbType = {
    Default = 0,
    World = 1,
    Event = 2,
    Zone = 3,
    Save = 4,
    EBreadcrumbType_MAX = 5,
}

---@enum EBreakType
local EBreakType = {
    None = 0,
    PileAttack = 1,
    Dash = 2,
    DiveDash = 3,
    WallDash = 4,
    HighJump = 5,
    SPAttack = 6,
    Fall = 7,
    SwimDeath = 8,
    EBreakType_MAX = 9,
}

---@enum EBuildPlatformType
local EBuildPlatformType = {
    Default = 0,
    Playstation = 1,
    Switch = 2,
    Xbox = 3,
    EBuildPlatformType_MAX = 4,
}

---@enum ECameraClampLocation
local ECameraClampLocation = {
    None = 0,
    Up = 1,
    Down = 2,
    Left = 3,
    Right = 4,
    ECameraClampLocation_MAX = 5,
}

---@enum ECameraLocalOffsetBlendType
local ECameraLocalOffsetBlendType = {
    None = 0,
    Lerp = 1,
    EaseIn = 2,
    EaseOut = 3,
    EaseInOut = 4,
    ECameraLocalOffsetBlendType_MAX = 5,
}

---@enum ECameraModifierActivationType
local ECameraModifierActivationType = {
    None = 0,
    ActivationBox = 1,
    Manual = 2,
    ECameraModifierActivationType_MAX = 3,
}

---@enum ECameraModifierType
local ECameraModifierType = {
    None = 0,
    OverrideSettings = 1,
    CameraClamp = 2,
    FixedCamera = 3,
    LimitControl = 4,
    ECameraModifierType_MAX = 5,
}

---@enum ECameraModifierVolumeProcessAction
local ECameraModifierVolumeProcessAction = {
    None = 0,
    Add = 1,
    Remove = 2,
    ECameraModifierVolumeProcessAction_MAX = 3,
}

---@enum ECameraModuleOverrideType
local ECameraModuleOverrideType = {
    AbsoluteValue = 0,
    Factor = 1,
    ECameraModuleOverrideType_MAX = 2,
}

---@enum EClearStatus
local EClearStatus = {
    Undefined = 0,
    NotCleared = 1,
    Cleared = 2,
    EClearStatus_MAX = 3,
}

---@enum ECollisionProfile
local ECollisionProfile = {
    NoCollision = 0,
    Player = 1,
    Enemy = 2,
    NPC = 3,
    Spirit = 4,
    PlayerDead = 5,
    EnemyDead = 6,
    ECollisionProfile_MAX = 7,
}

---@enum ECommandCategory
local ECommandCategory = {
    Default = 0,
    Jump = 1,
    Summon = 2,
    Dodge = 3,
    ECommandCategory_MAX = 4,
}

---@enum ECommandFinishType
local ECommandFinishType = {
    Normal = 0,
    Override = 1,
    Abort = 2,
    ECommandFinishType_MAX = 3,
}

---@enum ECommandLayerType
local ECommandLayerType = {
    Default = 0,
    Alternative = 1,
    RepeatA = 2,
    RepeatB = 3,
    Free = 4,
    ECommandLayerType_MAX = 5,
}

---@enum ECommandMinimumChargeType
local ECommandMinimumChargeType = {
    None = 0,
    FirstChargeLevel = 1,
    Custom = 2,
    ECommandMinimumChargeType_MAX = 3,
}

---@enum ECommandModuleActiveType
local ECommandModuleActiveType = {
    Always = 0,
    UntilCommandEnd = 1,
    UntilEndTime = 2,
    ECommandModuleActiveType_MAX = 3,
}

---@enum ECommandModuleResult
local ECommandModuleResult = {
    None = 0,
    InProgress = 1,
    Finished = 2,
    ECommandModuleResult_MAX = 3,
}

---@enum ECommandPriorityType
local ECommandPriorityType = {
    Override = 10,
    Aptitudes = 15,
    OverrideParryActions = 16,
    OverrideDodgeActions = 17,
    DodgeActions = 20,
    SpecialSkills = 45,
    Skills = 50,
    Default = 100,
    ECommandPriorityType_MAX = 101,
}

---@enum ECommandResult
local ECommandResult = {
    None = 0,
    InProgress = 1,
    Finished = 2,
    ECommandResult_MAX = 3,
}

---@enum ECommandSetCategory
local ECommandSetCategory = {
    None = 0,
    Combo = 1,
    Repeat = 2,
    Recast = 3,
    Auto = 4,
    Defense = 5,
    Special = 6,
    ECommandSetCategory_MAX = 7,
}

---@enum ECommandState
local ECommandState = {
    None = 0,
    Running = 1,
    Finished = 2,
    ECommandState_MAX = 3,
}

---@enum ECommonDirection
local ECommonDirection = {
    None = 0,
    Left = 1,
    Right = 2,
    ECommonDirection_MAX = 3,
}

---@enum ECommonOperator
local ECommonOperator = {
    None = 0,
    Superior = 1,
    SuperiorOrEqual = 2,
    Inferior = 3,
    InferiorOrEqual = 4,
    Equal = 5,
    NotEqual = 6,
    ECommonOperator_MAX = 7,
}

---@enum EConditionDestroyMode
local EConditionDestroyMode = {
    DestroyOnSuccess = 0,
    DestroyOnFailure = 1,
    EConditionDestroyMode_MAX = 2,
}

---@enum EConditionOperator
local EConditionOperator = {
    And = 0,
    Or = 1,
    EConditionOperator_MAX = 2,
}

---@enum EConditionType
local EConditionType = {
    Superior = 0,
    SuperiorOrEqual = 1,
    Equal = 2,
    InferiorOrEqual = 3,
    Inferior = 4,
    EConditionType_MAX = 5,
}

---@enum EConstraintCameraAspectRatio
local EConstraintCameraAspectRatio = {
    CameraAR_Off = 0,
    CameraAR_16_9 = 1,
    CameraAR_21_9 = 2,
    CameraAR_32_9 = 3,
    CameraAR_4_3 = 4,
    CameraAR_16_10 = 5,
    CameraAR_MAX = 6,
}

---@enum ECurrencyType
local ECurrencyType = {
    Default = 0,
    Rare = 5,
    GradePoints = 10,
    ECurrencyType_MAX = 11,
}

---@enum ECustomMoveToAcceptableRadiusType
local ECustomMoveToAcceptableRadiusType = {
    None = 0,
    Absolute = 1,
    Random = 2,
    ECustomMoveToAcceptableRadiusType_MAX = 3,
}

---@enum EDamageAdditiveType
local EDamageAdditiveType = {
    Never = 0,
    Always = 1,
    GroundedOnly = 2,
    EDamageAdditiveType_MAX = 3,
}

---@enum EDamageEffectType
local EDamageEffectType = {
    AttackParameter = 0,
    Absolute = 1,
    TargetPercentage = 2,
    EDamageEffectType_MAX = 3,
}

---@enum EDashChargeAnimationMode
local EDashChargeAnimationMode = {
    None = 0,
    Mirror = 1,
    Orientation = 2,
    EDashChargeAnimationMode_MAX = 3,
}

---@enum EDashChargeMode
local EDashChargeMode = {
    None = 0,
    Ground = 1,
    Swim = 2,
    EDashChargeMode_MAX = 3,
}

---@enum EDashChargeOrientationMode
local EDashChargeOrientationMode = {
    None = 0,
    GroundNormal = 1,
    Velocity = 2,
    Input = 3,
    EDashChargeOrientationMode_MAX = 4,
}

---@enum EDeathFacingMode
local EDeathFacingMode = {
    None = 0,
    Left = 1,
    Right = 2,
    TowardEnemySpawner = 3,
    FallbackTowardEnemySpawner = 4,
    EDeathFacingMode_MAX = 5,
}

---@enum EDebugDisplayFilter
local EDebugDisplayFilter = {
    None = 0,
    Player = 1,
    Spirit = 2,
    Enemy = 3,
    EDebugDisplayFilter_MAX = 4,
}

---@enum EDecoratorNearGroundDirection
local EDecoratorNearGroundDirection = {
    None = 0,
    Forward = 1,
    Backward = 2,
    EDecoratorNearGroundDirection_MAX = 3,
}

---@enum EDecoratorNearGroundUpVectorMode
local EDecoratorNearGroundUpVectorMode = {
    World = 0,
    Actor = 1,
    EDecoratorNearGroundUpVectorMode_MAX = 2,
}

---@enum EDecoratorNearWallDirection
local EDecoratorNearWallDirection = {
    None = 0,
    Forward = 1,
    Backward = 2,
    Up = 3,
    Down = 4,
    WorldRight = 5,
    WorldLeft = 6,
    WorldUp = 7,
    WorldDown = 8,
    EDecoratorNearWallDirection_MAX = 9,
}

---@enum EDifficultyMode
local EDifficultyMode = {
    DefaultGame = 0,
    BossRush = 1,
    EDifficultyMode_MAX = 2,
}

---@enum EDifficultyPreset
local EDifficultyPreset = {
    None = 0,
    Easy = 1,
    Normal = 2,
    Hard = 3,
    Custom = 100,
    EDifficultyPreset_MAX = 101,
}

---@enum EDirectionSource
local EDirectionSource = {
    SourceActorLocation = 0,
    AbilityLocation = 1,
    EDirectionSource_MAX = 2,
}

---@enum EDismissType
local EDismissType = {
    None = 0,
    Default = 1,
    Instant = 2,
    Delayed = 3,
    EDismissType_MAX = 4,
}

---@enum EDistanceComparisonType
local EDistanceComparisonType = {
    Distance3D = 0,
    DistanceX = 1,
    DistanceY = 2,
    DistanceZ = 3,
    EDistanceComparisonType_MAX = 4,
}

---@enum EDropType
local EDropType = {
    None = 0,
    Currency = 1,
    Item = 2,
    CollectableGameplayEffect = 3,
    EDropType_MAX = 4,
}

---@enum EEffectActionType
local EEffectActionType = {
    None = 0,
    Cut = 1,
    Blow = 2,
    MagicBullet = 3,
    Magic = 4,
    EEffectActionType_MAX = 5,
}

---@enum EEffectAttackType
local EEffectAttackType = {
    None = 0,
    Light = 1,
    Medium = 2,
    Heavy = 3,
    EEffectAttackType_MAX = 4,
}

---@enum EEffectGuardMaterialType
local EEffectGuardMaterialType = {
    None = 0,
    Iron = 1,
    Meat = 2,
    Magic = 3,
    EEffectGuardMaterialType_MAX = 4,
}

---@enum EEffectMaterialType
local EEffectMaterialType = {
    None = 0,
    Iron = 1,
    Meat = 2,
    EEffectMaterialType_MAX = 3,
}

---@enum EElevatorState
local EElevatorState = {
    Undefined = 0,
    Origin = 1,
    Destination = 2,
    EElevatorState_MAX = 3,
}

---@enum EEmulatedFogBlendType
local EEmulatedFogBlendType = {
    TwoColors = 0,
    Gradient = 1,
    EEmulatedFogBlendType_MAX = 2,
}

---@enum EEnableCustomHurtboxActiveType
local EEnableCustomHurtboxActiveType = {
    UntilCommandEnd = 0,
    UntilEndTime = 1,
    EEnableCustomHurtboxActiveType_MAX = 2,
}

---@enum EEnemyRepulsionOrigin
local EEnemyRepulsionOrigin = {
    ColliderCenter = 0,
    ActorCenter = 1,
    ActorLocation = 2,
    EEnemyRepulsionOrigin_MAX = 3,
}

---@enum EEnemySpawnerClearTiming
local EEnemySpawnerClearTiming = {
    None = 0,
    OnDeathProcessStart = 1,
    OnDeathProcessEnd = 2,
    EEnemySpawnerClearTiming_MAX = 3,
}

---@enum EEquipmentSlot
local EEquipmentSlot = {
    A = 0,
    B = 1,
    Extra = 2,
    EEquipmentSlot_MAX = 3,
}

---@enum EEquipmentType
local EEquipmentType = {
    None = 0,
    Default = 1,
    Extra = 2,
    EEquipmentType_MAX = 3,
}

---@enum EEventClearedCheckMode
local EEventClearedCheckMode = {
    AnyGameGeneration = 0,
    CurrentGameGenerationOnly = 1,
    PreviousGameGenerationsOnly = 2,
    EEventClearedCheckMode_MAX = 3,
}

---@enum EExtraAnimationRootMotionMode
local EExtraAnimationRootMotionMode = {
    None = 0,
    On = 1,
    XAxis = 2,
    YAxis = 3,
    EExtraAnimationRootMotionMode_MAX = 4,
}

---@enum EExtraInfoLocomotionMode
local EExtraInfoLocomotionMode = {
    Grounded = 0,
    Airborne = 1,
    Underwater = 2,
    UnderwaterGrounded = 3,
    EExtraInfoLocomotionMode_MAX = 4,
}

---@enum EFacingAnimationType
local EFacingAnimationType = {
    Auto = 1,
    IdleTurn = 2,
    EventIdleTurn = 3,
    Custom = 4,
    EFacingAnimationType_MAX = 5,
}

---@enum EFacingType
local EFacingType = {
    None = 0,
    Left = 1,
    Right = 2,
    EFacingType_MAX = 3,
}

---@enum EFaction
local EFaction = {
    None = 0,
    Player = 1,
    Spirit = 2,
    Enemy = 3,
    NPC = 4,
    BreakableBlock = 5,
    BreakableDrop = 6,
    LevelHazard = 7,
    EFaction_MAX = 8,
}

---@enum EFadeLayer
local EFadeLayer = {
    None = 0,
    Default = 1,
    WorldLoader = 2,
    Zone = 3,
    Event = 4,
    EFadeLayer_MAX = 5,
}

---@enum EFadeState
local EFadeState = {
    None = 0,
    FadingIn = 1,
    FadedIn = 2,
    FadingOut = 3,
    FadedOut = 4,
    EFadeState_MAX = 5,
}

---@enum EFadeType
local EFadeType = {
    FadeIn = 0,
    FadeOut = 1,
    EFadeType_MAX = 2,
}

---@enum EFallbackMovementModeUse
local EFallbackMovementModeUse = {
    MovementNull = 0,
    MovementNullOrInactive = 1,
    Always = 2,
    EFallbackMovementModeUse_MAX = 3,
}

---@enum EFallingExecutionCountType
local EFallingExecutionCountType = {
    Command = 0,
    Category = 1,
    EFallingExecutionCountType_MAX = 2,
}

---@enum EFieldMessageNPCMode
local EFieldMessageNPCMode = {
    Default = 0,
    AI = 1,
    EFieldMessageNPCMode_MAX = 2,
}

---@enum EFieldMessageType
local EFieldMessageType = {
    FirstValid = 0,
    Random = 1,
    EFieldMessageType_MAX = 2,
}

---@enum EFixedCameraMatch
local EFixedCameraMatch = {
    Width = 0,
    Height = 1,
    EFixedCameraMatch_MAX = 2,
}

---@enum EFixedCameraType
local EFixedCameraType = {
    FixedFOV = 0,
    FixedZoomOffset = 1,
    EFixedCameraType_MAX = 2,
}

---@enum EFluidMeshType
local EFluidMeshType = {
    None = 0,
    XY = 1,
    YZ = 2,
    XYZ = 3,
    EFluidMeshType_MAX = 4,
}

---@enum EFlyToTargetOffsetType
local EFlyToTargetOffsetType = {
    None = 0,
    Absolute = 1,
    RandomBox = 2,
    EFlyToTargetOffsetType_MAX = 3,
}

---@enum EFollowGeometryMovementPhase
local EFollowGeometryMovementPhase = {
    None = 0,
    Moving = 1,
    Falling = 2,
    Turning = 3,
    EFollowGeometryMovementPhase_MAX = 4,
}

---@enum EFollowTargetBlendSpeedMode
local EFollowTargetBlendSpeedMode = {
    None = 0,
    Value = 1,
    Curve = 2,
    EFollowTargetBlendSpeedMode_MAX = 3,
}

---@enum EGameEndingType
local EGameEndingType = {
    None = 0,
    EndingA = 1,
    EndingB = 2,
    EGameEndingType_MAX = 3,
}

---@enum EGameModeType
local EGameModeType = {
    Default = 0,
    RecollectionBoss = 1,
    BossRush = 2,
    EGameModeType_MAX = 3,
}

---@enum EGameSettingsType
local EGameSettingsType = {
    All = 0,
    Game = 1,
    Input = 2,
    Video = 3,
    EGameSettingsType_MAX = 4,
}

---@enum EHasStateConditionType
local EHasStateConditionType = {
    AllStates = 0,
    AnyState = 1,
    EHasStateConditionType_MAX = 2,
}

---@enum EHealEffectType
local EHealEffectType = {
    Absolute = 0,
    TargetPercentage = 1,
    EHealEffectType_MAX = 2,
}

---@enum EHighJumpStopCondition
local EHighJumpStopCondition = {
    None = 0,
    Distance = 1,
    Duration = 2,
    EHighJumpStopCondition_MAX = 3,
}

---@enum EHitBoxTargetType
local EHitBoxTargetType = {
    Opponents = 0,
    Allies = 10,
    All = 20,
    None = 25,
    Custom = 30,
    EHitBoxTargetType_MAX = 31,
}

---@enum EHomingPropertyType
local EHomingPropertyType = {
    Direct = 0,
    Random = 1,
    EHomingPropertyType_MAX = 2,
}

---@enum EHookType
local EHookType = {
    None = 0,
    Point = 1,
    OverrideLocation = 2,
    Attach = 3,
    EHookType_MAX = 4,
}

---@enum EIKBoneBlendMode
local EIKBoneBlendMode = {
    None = 0,
    InjectionByDT = 1,
    ConstantRotation = 2,
    EIKBoneBlendMode_MAX = 3,
}

---@enum EIKBoneDriver
local EIKBoneDriver = {
    None = 0,
    AttackTarget = 1,
    FootLeft = 2,
    FootRight = 3,
    HookTarget = 100,
    EIKBoneDriver_MAX = 101,
}

---@enum EIKBoneReferenceVectorMode
local EIKBoneReferenceVectorMode = {
    Forward = 0,
    Upward = 1,
    EIKBoneReferenceVectorMode_MAX = 2,
}

---@enum EInputActionTriggerMode
local EInputActionTriggerMode = {
    None = 0,
    JustTriggered = 1,
    Triggering = 2,
    EInputActionTriggerMode_MAX = 3,
}

---@enum EInputDirection
local EInputDirection = {
    None = 0,
    Up = 1,
    Down = 2,
    Left = 3,
    Right = 4,
    UpLeft = 5,
    UpRight = 6,
    DownRight = 7,
    DownLeft = 8,
    EInputDirection_MAX = 9,
}

---@enum EInputMappingPriority
local EInputMappingPriority = {
    BelowDefault = 0,
    Default = 10,
    AboveDefault = 20,
    Interactable = 50,
    Debug = 200,
    EInputMappingPriority_MAX = 201,
}

---@enum EInputStick
local EInputStick = {
    LeftStick = 0,
    RightStick = 1,
    EInputStick_MAX = 2,
}

---@enum EInputStyle
local EInputStyle = {
    None = 0,
    MouseAndKeyboard = 1,
    Xbox360 = 10,
    XboxOne = 11,
    PS4 = 20,
    PS5 = 21,
    Switch = 30,
    PC_PS4 = 100,
    PC_PS5 = 101,
    PC_Switch = 102,
    EInputStyle_MAX = 103,
}

---@enum EInputType
local EInputType = {
    UI = 0,
    Action = 1,
    InputAction = 2,
    EInputType_MAX = 3,
}

---@enum EInventoryItemType
local EInventoryItemType = {
    None = 0,
    Currency = 1,
    Stats = 2,
    Aptitude = 3,
    Spirit = 4,
    Skill = 5,
    Passive = 6,
    Tip = 7,
    Key = 8,
    Quest = 9,
    Material = 10,
    Equipment = 11,
    Assist = 12,
    Tutorial = 13,
    Costume = 14,
    EnemyInfo = 15,
    NPCInfo = 16,
    Gallery = 17,
    EInventoryItemType_MAX = 18,
}

---@enum EKnockbackDirectionMode
local EKnockbackDirectionMode = {
    FrontalAbility = 0,
    Location = 1,
    OppositeTargetForward = 2,
    Absolute = 3,
    EKnockbackDirectionMode_MAX = 4,
}

---@enum EKnockbackPhase
local EKnockbackPhase = {
    None = 0,
    Starting = 1,
    Launch = 2,
    WaitForLanding = 3,
    Stagger = 4,
    Recovery = 5,
    Finish = 6,
    EKnockbackPhase_MAX = 7,
}

---@enum EKnockbackTriggerCondition
local EKnockbackTriggerCondition = {
    Always = 0,
    StaminaBroken = 1,
    EKnockbackTriggerCondition_MAX = 2,
}

---@enum ELaunchGameIntent
local ELaunchGameIntent = {
    Unknown = 0,
    NewGame = 1,
    Continue = 2,
    NewGamePlus = 3,
    Demo = 4,
    ELaunchGameIntent_MAX = 5,
}

---@enum ELocalDirection
local ELocalDirection = {
    None = 0,
    Up = 1,
    Down = 2,
    Forward = 3,
    ForwardUp = 4,
    ForwardDown = 5,
    Backward = 6,
    BackwardUp = 7,
    BackwardDown = 8,
    ELocalDirection_MAX = 9,
}

---@enum ELocomotionMoveSource
local ELocomotionMoveSource = {
    PendingInputVector = 0,
    Velocity = 1,
    ELocomotionMoveSource_MAX = 2,
}

---@enum EMapIconGenerationType
local EMapIconGenerationType = {
    MatchActorLocation = 0,
    MatchActorCenter = 1,
    MatchActorBounds = 2,
    EMapIconGenerationType_MAX = 3,
}

---@enum EMapIconType
local EMapIconType = {
    None = 0,
    PlayerLocation = 1,
    RestPoint = 2,
    Switch = 3,
    Door = 4,
    MagicBarrier = 5,
    MagicDoor = 6,
    Breakable = 7,
    Tumor = 8,
    Locked = 9,
    Shop = 10,
    Item = 11,
    AreaChange = 12,
    Warp = 13,
    LilyLock = 14,
    ZoneIncomplete = 15,
    ZoneComplete = 16,
    AreaIncomplete = 17,
    AreaComplete = 18,
    EMapIconType_MAX = 19,
}

---@enum EMaterialParameterMode
local EMaterialParameterMode = {
    Direct = 0,
    Curve = 1,
    EMaterialParameterMode_MAX = 2,
}

---@enum EMoveTimelineMovementModeChangeBehavior
local EMoveTimelineMovementModeChangeBehavior = {
    None = 0,
    Finish = 1,
    Abort = 2,
    EMoveTimelineMovementModeChangeBehavior_MAX = 3,
}

---@enum EMoveTimelineRotation
local EMoveTimelineRotation = {
    None = 0,
    FollowInput = 1,
    EMoveTimelineRotation_MAX = 2,
}

---@enum EMoveToTalkDistanceMovementType
local EMoveToTalkDistanceMovementType = {
    None = 0,
    Closer = 1,
    Left = 2,
    Right = 3,
    FrontOfTarget = 4,
    BackOfTarget = 5,
    EMoveToTalkDistanceMovementType_MAX = 6,
}

---@enum EMoveToTalkDistanceTargetFacingType
local EMoveToTalkDistanceTargetFacingType = {
    None = 0,
    BeforeSubjectMovement = 1,
    AfterSubjectMovement = 2,
    EMoveToTalkDistanceTargetFacingType_MAX = 3,
}

---@enum EMovementModeCustom
local EMovementModeCustom = {
    None = 0,
    WallGrabbing = 1,
    Sliding = 2,
    HookAttach = 3,
    WallScaling = 4,
    EMovementModeCustom_MAX = 5,
}

---@enum EMovementSpeedMode
local EMovementSpeedMode = {
    None = 0,
    Default = 1,
    Slow = 2,
    Fast = 3,
    Fastest = 4,
    EMovementSpeedMode_MAX = 5,
}

---@enum ENotificationTypes
local ENotificationTypes = {
    None = 0,
    ItemReceived = 1,
    ENotificationTypes_MAX = 2,
}

---@enum EOrientTargetType
local EOrientTargetType = {
    None = 0,
    Actor = 1,
    Component = 2,
    VisualPivot = 3,
    EOrientTargetType_MAX = 4,
}

---@enum EOrientToTargetBlendMode
local EOrientToTargetBlendMode = {
    None = 0,
    InjectionByDT = 1,
    ConstantRotation = 2,
    EOrientToTargetBlendMode_MAX = 3,
}

---@enum EPassiveCountType
local EPassiveCountType = {
    None = 0,
    Finding = 1,
    Upgrade = 2,
    EPassiveCountType_MAX = 3,
}

---@enum EPassiveEquipResult
local EPassiveEquipResult = {
    Success = 0,
    InsufficientFreeSlotCount = 1,
    PassiveEquipLimitReached = 2,
    InvalidPassive = 3,
    EPassiveEquipResult_MAX = 4,
}

---@enum EPassiveOnAttackRestoreType
local EPassiveOnAttackRestoreType = {
    None = 0,
    FlatAmount = 1,
    DamagePercentage = 2,
    StatPercentage = 3,
    EPassiveOnAttackRestoreType_MAX = 4,
}

---@enum EPassiveOnKillRestoreType
local EPassiveOnKillRestoreType = {
    None = 0,
    FlatAmount = 1,
    StatPercentage = 2,
    EPassiveOnKillRestoreType_MAX = 3,
}

---@enum EPathFollowingMode
local EPathFollowingMode = {
    Default = 0,
    QuadraticBezier = 1,
    Step = 2,
    EPathFollowingMode_MAX = 3,
}

---@enum EPlayerCostumeFX
local EPlayerCostumeFX = {
    None = 0,
    DoubleJump = 1,
    EPlayerCostumeFX_MAX = 2,
}

---@enum EPlayerUIAnimation
local EPlayerUIAnimation = {
    None = 0,
    HealFailure_NoHeal = 1,
    HealFailure_FullHP = 2,
    EPlayerUIAnimation_MAX = 3,
}

---@enum ERandomRuntimeLinearBlendType
local ERandomRuntimeLinearBlendType = {
    Linear = 0,
    EaseIn = 1,
    EaseOut = 2,
    EaseInOut = 3,
    ERandomRuntimeLinearBlendType_MAX = 4,
}

---@enum ERecollectionItemType
local ERecollectionItemType = {
    Boss = 0,
    Movie = 1,
    ERecollectionItemType_MAX = 2,
}

---@enum ERecollectionPageType
local ERecollectionPageType = {
    Movies = 0,
    Bosses = 1,
    BossRush = 2,
    ERecollectionPageType_MAX = 3,
}

---@enum ERespawnReason
local ERespawnReason = {
    None = 0,
    Default = 1,
    Death = 2,
    FastTravel = 3,
    BackToRestpoint = 4,
    ExitBossRush = 5,
    ExitBossRecollection = 6,
    RetryBossRush = 7,
    RetryBossRecollection = 8,
    ERespawnReason_MAX = 9,
}

---@enum ERestEventSkipTarget
local ERestEventSkipTarget = {
    None = 0,
    FadeIn = 1,
    BossRush = 2,
    BossRecollection = 3,
    ERestEventSkipTarget_MAX = 4,
}

---@enum ERestPointEventPriority
local ERestPointEventPriority = {
    Default = 0,
    High = 1,
    ERestPointEventPriority_MAX = 2,
}

---@enum ERichPresenceType
local ERichPresenceType = {
    None = 0,
    Default = 1,
    Title = 2,
    StoryLevel = 3,
    ERichPresenceType_MAX = 4,
}

---@enum ERichTextDecoratorMode
local ERichTextDecoratorMode = {
    Auto = 0,
    ForceKeyboard = 1,
    ForceGamepad = 2,
    ERichTextDecoratorMode_MAX = 3,
}

---@enum ERotationBlendMode
local ERotationBlendMode = {
    None = 0,
    InjectionByDT = 1,
    ConstantRotation = 2,
    ERotationBlendMode_MAX = 3,
}

---@enum ESaveCopyResult
local ESaveCopyResult = {
    Undefined = 0,
    Success = 1,
    NoEmptySlot = 2,
    ESaveCopyResult_MAX = 3,
}

---@enum ESaveExistsType
local ESaveExistsType = {
    OK = 0,
    DoesNotExist = 1,
    Corrupt = 2,
    UnspecifiedError = 3,
    IncompatibleVersion = 4,
    ESaveExistsType_MAX = 5,
}

---@enum ESetFacingMode
local ESetFacingMode = {
    FaceAttacker = 0,
    FaceAbility = 1,
    ESetFacingMode_MAX = 2,
}

---@enum EShopType
local EShopType = {
    None = 0,
    Main = 1,
    EShopType_MAX = 2,
}

---@enum ESkillSlot
local ESkillSlot = {
    Invalid = 0,
    A = 1,
    B = 2,
    C = 3,
    D = 4,
    ESkillSlot_MAX = 5,
}

---@enum ESkillUnlockResultType
local ESkillUnlockResultType = {
    Invalid = 0,
    Success = 1,
    NotEnoughMaterial = 2,
    AlreadyMaxLevel = 3,
    ESkillUnlockResultType_MAX = 4,
}

---@enum ESoundFamily
local ESoundFamily = {
    None = 0,
    BGM = 1,
    SE_UI = 2,
    SE_Game = 3,
    Ambience = 4,
    Voice = 5,
    Master = 100,
    ESoundFamily_MAX = 101,
}

---@enum ESpineAnimationPlayType
local ESpineAnimationPlayType = {
    Once = 0,
    Loop = 1,
    Hold = 2,
    ESpineAnimationPlayType_MAX = 3,
}

---@enum ESpineAnimatorLayer
local ESpineAnimatorLayer = {
    None = 0,
    Locomotion = 1,
    Action = 2,
    Death = 30,
    ESpineAnimatorLayer_MAX = 31,
}

---@enum ESpineLocomotionType
local ESpineLocomotionType = {
    None = 0,
    Idle = 1,
    Walk = 2,
    Run = 3,
    Dash = 4,
    Ride = 5,
    FallingUp = 6,
    FallingNeutral = 7,
    FallingDown = 8,
    DashFallingUp = 9,
    DashFallingNeutral = 10,
    DashFallingDown = 11,
    RideFallingUp = 12,
    RideFallingNeutral = 13,
    RideFallingDown = 14,
    FallingKnockbackUp_Backward = 15,
    FallingKnockbackNeutral_Backward = 16,
    FallingKnockbackDown_Backward = 17,
    FallingKnockbackUp_Forward = 18,
    FallingKnockbackNeutral_Forward = 19,
    FallingKnockbackDown_Forward = 20,
    WallGrab = 21,
    Slide = 22,
    HookAttach = 23,
    SwimIdle = 24,
    SwimMove = 25,
    UnderWaterIdle = 26,
    UnderWaterUp = 27,
    UnderWaterUpLateral = 28,
    UnderWaterDown = 29,
    UnderWaterDownLateral = 30,
    UnderWaterLateral = 31,
    UnderWaterDashUp = 32,
    UnderWaterDashUpLateral = 33,
    UnderWaterDashDown = 34,
    UnderWaterDashDownLateral = 35,
    UnderWaterDashLateral = 36,
    UnderWaterRideUp = 37,
    UnderWaterRideUpLateral = 38,
    UnderWaterRideDown = 39,
    UnderWaterRideDownLateral = 40,
    UnderWaterRideLateral = 41,
    FlyIdle = 42,
    Fly = 43,
    FlyUp = 44,
    FlyDown = 45,
    WallScaling_Idle = 46,
    WallScaling_Forward = 47,
    WallScaling_Backward = 48,
    Stun = 49,
    ESpineLocomotionType_MAX = 50,
}

---@enum ESpiritActivationCheckMode
local ESpiritActivationCheckMode = {
    Active = 0,
    Category = 1,
    ESpiritActivationCheckMode_MAX = 2,
}

---@enum ESpiritAttachType
local ESpiritAttachType = {
    None = 0,
    ActorOrigin = 1,
    VisualPivot = 2,
    ESpiritAttachType_MAX = 3,
}

---@enum ESpiritAutoType
local ESpiritAutoType = {
    None = 0,
    AI = 1,
    SummonerDodge = 2,
    ESpiritAutoType_MAX = 3,
}

---@enum ESpiritDetachType
local ESpiritDetachType = {
    OnDeactivate = 0,
    OnDismiss = 1,
    ESpiritDetachType_MAX = 2,
}

---@enum ESpiritDismissType
local ESpiritDismissType = {
    Manual = 0,
    CommandQueueEnd = 1,
    SummonInputActionReleased = 2,
    ESpiritDismissType_MAX = 3,
}

---@enum ESpiritLocationValidityOriginMode
local ESpiritLocationValidityOriginMode = {
    GroundedSpiritOrigin = 0,
    TargetHeightSpiritOrigin = 1,
    SummonerOrigin = 2,
    ESpiritLocationValidityOriginMode_MAX = 3,
}

---@enum ESpiritRepeatAbilityUseType
local ESpiritRepeatAbilityUseType = {
    Sequence = 0,
    Random = 1,
    ESpiritRepeatAbilityUseType_MAX = 2,
}

---@enum ESpiritSummonLocationType
local ESpiritSummonLocationType = {
    Reset = 0,
    Keep = 1,
    Blend = 2,
    KeepOrBlendOnFacingChange = 3,
    ESpiritSummonLocationType_MAX = 4,
}

---@enum ESpiritSummonRotationType
local ESpiritSummonRotationType = {
    Keep = 0,
    Reset = 1,
    Absolute = 2,
    ESpiritSummonRotationType_MAX = 3,
}

---@enum ESpiritSummonType
local ESpiritSummonType = {
    AlwaysSummon = 0,
    Toggle = 1,
    ESpiritSummonType_MAX = 2,
}

---@enum ESplashSize
local ESplashSize = {
    None = 0,
    Small = 1,
    Medium = 2,
    Large = 3,
    ESplashSize_MAX = 4,
}

---@enum EStatusEffectType
local EStatusEffectType = {
    None = 0,
    Burn = 1,
    Freeze = 2,
    Shock = 3,
    AttackUpAssist = 4,
    AttackUpSpirit = 5,
    DamageCutAssist = 6,
    DamageCutSpirit = 7,
    EStatusEffectType_MAX = 8,
}

---@enum EStencilCategory
local EStencilCategory = {
    None = 0,
    Player = 5,
    Spirit = 6,
    Enemy = 10,
    Boss = 11,
    NPC = 20,
    Object = 50,
    EStencilCategory_MAX = 51,
}

---@enum EStepHeavinessCategory
local EStepHeavinessCategory = {
    None = 0,
    Light = 1,
    Medium = 2,
    Heavy = 3,
    EStepHeavinessCategory_MAX = 4,
}

---@enum EStepOrientation
local EStepOrientation = {
    Default = 0,
    Wall = 1,
    Ceiling = 2,
    EStepOrientation_MAX = 3,
}

---@enum ESummonIdleSpiritState
local ESummonIdleSpiritState = {
    WaitForIdle = 0,
    WaitForSummon = 1,
    SummonCooldown = 2,
    ESummonIdleSpiritState_MAX = 3,
}

---@enum ETalkAnimationType
local ETalkAnimationType = {
    None = 0,
    TalkA = 1,
    TalkB = 2,
    Custom = 3,
    ETalkAnimationType_MAX = 4,
}

---@enum ETalkDesign
local ETalkDesign = {
    Arrow = 0,
    Line = 1,
    ETalkDesign_MAX = 2,
}

---@enum ETimelineEntryActiveType
local ETimelineEntryActiveType = {
    OneShot = 0,
    UntilEndTime = 1,
    UntilTimelineStop = 2,
    ETimelineEntryActiveType_MAX = 3,
}

---@enum ETimelineResult
local ETimelineResult = {
    None = 0,
    InProgress = 1,
    Finished = 2,
    ETimelineResult_MAX = 3,
}

---@enum ETutorialHook
local ETutorialHook = {
    None = 0,
    RestPoint = 1,
    Difficulty = 2,
    Extra = 3,
    ETutorialHook_MAX = 4,
}

---@enum EUIInputType
local EUIInputType = {
    None = 0,
    Confirm = 1,
    Cancel = 2,
    Context = 3,
    ContextAlt = 4,
    Next = 5,
    Previous = 6,
    NextAlt = 7,
    PreviousAlt = 8,
    Up = 9,
    Down = 10,
    Left = 11,
    Right = 12,
    EUIInputType_MAX = 13,
}

---@enum EUMGLayer
local EUMGLayer = {
    Default = 0,
    Event = 1,
    Menu = 2,
    MenuOverlay = 3,
    Notification = 4,
    Movie = 5,
    Fade = 6,
    Dialog = 7,
    System_InputDevice = 8,
    System_Profile = 9,
    SaveLoad = 10,
    EUMGLayer_MAX = 11,
}

---@enum EUpgradeType
local EUpgradeType = {
    None = 0,
    AttackUp = 1,
    SpeedUp = 2,
    ComboCountUp = 3,
    EUpgradeType_MAX = 4,
}

---@enum EValueType
local EValueType = {
    Fixed = 0,
    Curve = 1,
    Random = 2,
    RandomCurve = 3,
    EValueType_MAX = 4,
}

---@enum EWarpExecutionTiming
local EWarpExecutionTiming = {
    AtStart = 0,
    AtTime = 1,
    AtAnimationStart = 2,
    EWarpExecutionTiming_MAX = 3,
}

---@enum EWarpFacingMode
local EWarpFacingMode = {
    None = 0,
    WarpTarget = 1,
    EnemyTarget = 2,
    SpawnLocation = 3,
    EWarpFacingMode_MAX = 4,
}

---@enum EWarpLocationComputationTiming
local EWarpLocationComputationTiming = {
    AtStart = 0,
    AtWarp = 1,
    EWarpLocationComputationTiming_MAX = 2,
}

---@enum EWarpOffsetMode
local EWarpOffsetMode = {
    None = 0,
    Absolute = 1,
    Random = 2,
    EWarpOffsetMode_MAX = 3,
}

---@enum EWarpWorldSpaceOffsetType
local EWarpWorldSpaceOffsetType = {
    None = 0,
    Constant = 1,
    RandomRange = 2,
    EWarpWorldSpaceOffsetType_MAX = 3,
}

---@enum EWidgetActorAnchor
local EWidgetActorAnchor = {
    Origin = 0,
    Top = 1,
    Bottom = 2,
    EWidgetActorAnchor_MAX = 3,
}

---@enum EWidgetMinimapDisplayMode
local EWidgetMinimapDisplayMode = {
    Default = 0,
    Fullscreen = 1,
    Hidden = 2,
    EWidgetMinimapDisplayMode_MAX = 3,
}

---@enum EWidgetReleaseMode
local EWidgetReleaseMode = {
    Manual = 0,
    AutoReleaseHolder = 1,
    AutoReleaseWidget = 2,
    AutoReleaseHolderAndWidget = 3,
    EWidgetReleaseMode_MAX = 4,
}

---@enum EZionAchievement
local EZionAchievement = {
    Invalid = 0,
    SpiritGet_s5000 = 1,
    SpiritGet_s5010 = 2,
    SpiritGet_s5030 = 3,
    SpiritGet_s5040 = 4,
    SpiritGet_s5050 = 5,
    SpiritGet_s5060 = 6,
    SpiritGet_s5070 = 7,
    SpiritGet_s5080 = 8,
    SpiritGet_s5090 = 9,
    SpiritGet_s5110 = 10,
    SpiritAptGet_s5200_PileAttack = 11,
    SpiritAptGet_s5200_HighJump = 12,
    SpiritAptGet_s5210_FastTravel = 13,
    SpiritAptGet_s5210_DashCharge = 14,
    SpiritAptGet_s5220_Hook = 15,
    SpiritAptGet_s5220_UnderwaterCharge = 16,
    SpiritAptGet_s5230_WallGrab = 17,
    SpiritAptGet_s5230_WallCharge = 18,
    AptGet_Dive = 19,
    AptGet_SP = 20,
    Skill_Count_All = 21,
    Skill_MaxLevel_All = 22,
    Passive_Count_1 = 23,
    Passive_Count_All = 24,
    Passive_Upgrade_1 = 25,
    Equipment_Default_Count_1 = 26,
    Equipment_Default_Count_All = 27,
    Equipment_Extra_Count_1 = 28,
    Equipment_Extra_Count_All = 29,
    Assist_Count_1 = 30,
    Assist_Count_All = 31,
    Tip_Count_All = 32,
    Stats_HPUp_All = 33,
    Stats_ShopLevelUp_All = 34,
    Story_Progress_1 = 35,
    Story_Progress_2 = 36,
    Story_Progress_3 = 37,
    Story_Progress_4 = 38,
    Ending_A = 39,
    Ending_B = 40,
    EZionAchievement_MAX = 41,
}

