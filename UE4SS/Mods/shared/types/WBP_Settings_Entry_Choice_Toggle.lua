---@meta

---@class UWBP_Settings_Entry_Choice_Toggle_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Choice_Text UWBP_Settings_Entry_Choice_Text_C
---@field Label FText
---@field ToggleValue boolean
---@field OnToggle FWBP_Settings_Entry_Choice_Toggle_COnToggle
---@field ToggleOFF FText
---@field ToggleON FText
---@field bColorValue boolean
---@field ColorOFF FSlateColor
---@field ColorON FSlateColor
local UWBP_Settings_Entry_Choice_Toggle_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_Toggle_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_Entry_Choice_Toggle_C:RefreshOptionText() end
---@param InText FText
function UWBP_Settings_Entry_Choice_Toggle_C:SetLabel(InText) end
---@param ToggleValue boolean
function UWBP_Settings_Entry_Choice_Toggle_C:SetToggle(ToggleValue) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Choice_Toggle_C:PreConstruct(IsDesignTime) end
function UWBP_Settings_Entry_Choice_Toggle_C:BndEvt__WBP_Settings_Entry_Choice_Toggle_WBP_Settings_Entry_Choice_Text_K2Node_ComponentBoundEvent_2_OnLeft__DelegateSignature() end
function UWBP_Settings_Entry_Choice_Toggle_C:BndEvt__WBP_Settings_Entry_Choice_Toggle_WBP_Settings_Entry_Choice_Text_K2Node_ComponentBoundEvent_3_OnRight__DelegateSignature() end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_Choice_Toggle_C:OnSetIsEnabled(bInIsEnabled) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_Toggle_C:ExecuteUbergraph_WBP_Settings_Entry_Choice_Toggle(EntryPoint) end
---@param ToggleValue boolean
function UWBP_Settings_Entry_Choice_Toggle_C:OnToggle__DelegateSignature(ToggleValue) end


