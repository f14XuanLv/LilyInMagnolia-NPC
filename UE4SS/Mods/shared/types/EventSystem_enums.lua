---@enum EActorAnchor
local EActorAnchor = {
    Center = 0,
    Top = 1,
    Bottom = 2,
    EActorAnchor_MAX = 3,
}

---@enum EActorBindingTransformType
local EActorBindingTransformType = {
    LocalSpace = 0,
    WorldSpace = 1,
    ActorBinding = 2,
    EActorBindingTransformType_MAX = 3,
}

---@enum EActorBindingType
local EActorBindingType = {
    Runtime = 0,
    Spawn = 1,
    EActorBindingType_MAX = 2,
}

---@enum EActorPivotTarget
local EActorPivotTarget = {
    Center = 0,
    Bottom = 1,
    Top = 2,
    EActorPivotTarget_MAX = 3,
}

---@enum EEventActionState
local EEventActionState = {
    None = 0,
    InProgress = 1,
    Finished = 2,
    EEventActionState_MAX = 3,
}

---@enum EEventNodeState
local EEventNodeState = {
    None = 0,
    InProgress = 1,
    Finished = 2,
    EEventNodeState_MAX = 3,
}

---@enum EEventPlayerResult
local EEventPlayerResult = {
    None = 0,
    Completed = 1,
    Skipped = 2,
    Aborted = 3,
    EEventPlayerResult_MAX = 4,
}

---@enum EEventPlayerState
local EEventPlayerState = {
    None = 0,
    Initializing = 1,
    PostInitialize = 2,
    Playing = 3,
    Skipping = 4,
    PostSkip = 5,
    Finishing = 6,
    Aborting = 7,
    EEventPlayerState_MAX = 8,
}

---@enum EWaitType
local EWaitType = {
    Time = 0,
    Frame = 1,
    EWaitType_MAX = 2,
}

