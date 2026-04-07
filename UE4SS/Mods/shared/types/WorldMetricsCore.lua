---@meta

---@class IWorldMetricsActorTrackerSubscriber : IInterface
local IWorldMetricsActorTrackerSubscriber = {}


---@class UWorldMetricInterface : UObject
local UWorldMetricInterface = {}


---@class UWorldMetricsActorTracker : UWorldMetricsExtension
local UWorldMetricsActorTracker = {}


---@class UWorldMetricsExtension : UObject
local UWorldMetricsExtension = {}


---@class UWorldMetricsSubsystem : UWorldSubsystem
---@field Metrics TArray<UWorldMetricInterface>
---@field Extensions TArray<UWorldMetricsExtension>
---@field UpdateRateInSeconds float
---@field WarmUpFrames int32
local UWorldMetricsSubsystem = {}



