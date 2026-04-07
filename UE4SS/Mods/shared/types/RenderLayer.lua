---@meta

---@class URenderLayerComponent : UActorComponent
---@field RenderLayerType ERenderLayerTypes
---@field ComponentsToSet TArray<FComponentReference>
---@field RenderLayerPriorities TArray<int32>
local URenderLayerComponent = {}



---@class URenderLayerSubsystem : UGameInstanceSubsystem
local URenderLayerSubsystem = {}

---@param RenderLayer ERenderLayerTypes
---@return int32
function URenderLayerSubsystem:GetPriorityForRenderLayer(RenderLayer) end


