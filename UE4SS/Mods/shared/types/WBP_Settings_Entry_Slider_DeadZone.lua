---@meta

---@class UWBP_Settings_Entry_Slider_DeadZone_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Slider UWBP_Settings_Entry_Slider_C
---@field Label FText
---@field InputStick EInputStick
local UWBP_Settings_Entry_Slider_DeadZone_C = {}

---@param Label FText
function UWBP_Settings_Entry_Slider_DeadZone_C:SetLabel(Label) end
function UWBP_Settings_Entry_Slider_DeadZone_C:Refresh() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Slider_DeadZone_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param Value double
function UWBP_Settings_Entry_Slider_DeadZone_C:BndEvt__WBP_Settings_Entry_Sound_WBP_Settings_Entry_Slider_K2Node_ComponentBoundEvent_0_OnSliderValueChanged__DelegateSignature(Value) end
function UWBP_Settings_Entry_Slider_DeadZone_C:Construct() end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Slider_DeadZone_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Slider_DeadZone_C:ExecuteUbergraph_WBP_Settings_Entry_Slider_DeadZone(EntryPoint) end


