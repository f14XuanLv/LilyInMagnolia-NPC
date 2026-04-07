---@meta

---@class UWBP_MapIconDetails_Default_C : UUserWidgetMapIconDetails
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field AptitudeIcon UImageZion
---@field AptitudeRequired UTextBlock
---@field MapIconName UTextBlock
---@field Overlay_1 UOverlay
---@field Overlay_Aptitude UOverlay
---@field Overlay_Item UOverlay
---@field VerticalBox_ItemContainer UVerticalBox
local UWBP_MapIconDetails_Default_C = {}

function UWBP_MapIconDetails_Default_C:UpdateItemOverlay() end
function UWBP_MapIconDetails_Default_C:UpdateAptitudeOverlay() end
function UWBP_MapIconDetails_Default_C:OnFinish_90525EB9443409BE5780DCB434001197() end
function UWBP_MapIconDetails_Default_C:OnFinish_83512B1A43BE04F1C2933DB0E6278976() end
function UWBP_MapIconDetails_Default_C:Construct() end
---@param bInstant boolean
function UWBP_MapIconDetails_Default_C:OnRemoveIconDetails(bInstant) end
---@param EntryPoint int32
function UWBP_MapIconDetails_Default_C:ExecuteUbergraph_WBP_MapIconDetails_Default(EntryPoint) end


