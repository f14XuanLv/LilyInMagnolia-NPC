---@meta

---@class UWBP_Settings_Entry_FPS_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Choice_FPSLimit UWBP_Settings_Entry_Choice_Toggle_C
---@field WBP_Settings_Entry_Slider_FPS UWBP_Settings_Entry_Slider_C
---@field DefaultFPS double
---@field SavedFPS double
local UWBP_Settings_Entry_FPS_C = {}

function UWBP_Settings_Entry_FPS_C:Reset() end
---@param IsSliderEnabled boolean
function UWBP_Settings_Entry_FPS_C:IsSliderEnabled(IsSliderEnabled) end
---@param FPS double
function UWBP_Settings_Entry_FPS_C:SetFPS(FPS) end
function UWBP_Settings_Entry_FPS_C:SetSliderEnabled() end
function UWBP_Settings_Entry_FPS_C:Refresh() end
function UWBP_Settings_Entry_FPS_C:Construct() end
---@param Value double
function UWBP_Settings_Entry_FPS_C:BndEvt__WBP_Settings_Entry_FPS_WBP_Settings_Entry_Slider_FPS_K2Node_ComponentBoundEvent_0_OnSliderValueChanged__DelegateSignature(Value) end
---@param ToggleValue boolean
function UWBP_Settings_Entry_FPS_C:BndEvt__WBP_Settings_Entry_FPS_WBP_Settings_Entry_Choice_FPSLimit_K2Node_ComponentBoundEvent_1_OnToggle__DelegateSignature(ToggleValue) end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_FPS_C:OnSetIsEnabled(bInIsEnabled) end
---@param EntryPoint int32
function UWBP_Settings_Entry_FPS_C:ExecuteUbergraph_WBP_Settings_Entry_FPS(EntryPoint) end


