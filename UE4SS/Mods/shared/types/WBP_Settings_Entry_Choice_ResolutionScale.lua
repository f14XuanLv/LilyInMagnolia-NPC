---@meta

---@class UWBP_Settings_Entry_Choice_ResolutionScale_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Slider UWBP_Settings_Entry_Slider_C
local UWBP_Settings_Entry_Choice_ResolutionScale_C = {}

function UWBP_Settings_Entry_Choice_ResolutionScale_C:Refresh() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_ResolutionScale_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_Entry_Choice_ResolutionScale_C:Construct() end
---@param Value double
function UWBP_Settings_Entry_Choice_ResolutionScale_C:BndEvt__WBP_Settings_Entry_Choice_ResolutionScale_WBP_Settings_Entry_ProgressBar_K2Node_ComponentBoundEvent_0_OnSliderValueChanged__DelegateSignature(Value) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_ResolutionScale_C:ExecuteUbergraph_WBP_Settings_Entry_Choice_ResolutionScale(EntryPoint) end


