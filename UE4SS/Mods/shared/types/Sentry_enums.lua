---@enum ESentryCrashedLastRun
local ESentryCrashedLastRun = {
    NotEvaluated = 0,
    NotCrashed = 1,
    Crashed = 2,
    ESentryCrashedLastRun_MAX = 3,
}

---@enum ESentryLevel
local ESentryLevel = {
    Debug = 0,
    Info = 1,
    Warning = 2,
    Error = 3,
    Fatal = 4,
    ESentryLevel_MAX = 5,
}

---@enum ESentryTracesSamplingType
local ESentryTracesSamplingType = {
    UniformSampleRate = 0,
    TracesSampler = 1,
    ESentryTracesSamplingType_MAX = 2,
}

