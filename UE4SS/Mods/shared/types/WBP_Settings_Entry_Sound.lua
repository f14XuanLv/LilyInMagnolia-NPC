---@meta

---@class UWBP_Settings_Entry_Sound_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Slider UWBP_Settings_Entry_Slider_C
---@field Label FText
---@field SoundFamily ESoundFamily
---@field ReleaseSampleEvent UFMODEvent
---@field LoopSampleEvent UFMODEvent
---@field SampleEventInstance FFMODEventInstance
local UWBP_Settings_Entry_Sound_C = {}

---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Sound_C:OnKeyUp(MyGeometry, InKeyEvent) end
function UWBP_Settings_Entry_Sound_C:Refresh() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Sound_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param Value double
function UWBP_Settings_Entry_Sound_C:BndEvt__WBP_Settings_Entry_Sound_WBP_Settings_Entry_Slider_K2Node_ComponentBoundEvent_0_OnSliderValueChanged__DelegateSignature(Value) end
function UWBP_Settings_Entry_Sound_C:Construct() end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Sound_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Sound_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Sound_C:OnRemovedFromFocusPath(InFocusEvent) end
function UWBP_Settings_Entry_Sound_C:OnKeyReleased() end
---@param EntryPoint int32
function UWBP_Settings_Entry_Sound_C:ExecuteUbergraph_WBP_Settings_Entry_Sound(EntryPoint) end


