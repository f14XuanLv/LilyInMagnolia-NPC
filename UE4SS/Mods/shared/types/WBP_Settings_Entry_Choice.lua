---@meta

---@class UWBP_Settings_Entry_Choice_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ChoicesSlot UNamedSlot
---@field Left UImage
---@field LeftButton UButton
---@field Right UImage
---@field RightButton UButton
---@field WBP_ChoiceMarker UWBP_ChoiceMarker_C
---@field WBP_Settings_Entry_Label UWBP_Settings_Entry_Label_C
---@field Label FText
---@field OnLeft FWBP_Settings_Entry_Choice_COnLeft
---@field OnRight FWBP_Settings_Entry_Choice_COnRight
---@field LabelScaleStretch EStretch::Type
---@field SE_SettingsChanged UFMODEvent
local UWBP_Settings_Entry_Choice_C = {}

---@param InStretch EStretch::Type
function UWBP_Settings_Entry_Choice_C:SetLabelScaleBoxStretch(InStretch) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_C:OnPressConfirm(KeyEvent) end
---@param InText FText
function UWBP_Settings_Entry_Choice_C:SetLabel(InText) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_C:OnPressRight(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_C:OnPressLeft(KeyEvent) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Choice_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Choice_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Choice_C:OnRemovedFromFocusPath(InFocusEvent) end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_Choice_C:OnSetIsEnabled(bInIsEnabled) end
function UWBP_Settings_Entry_Choice_C:BndEvt__WBP_Settings_Entry_Choice_LeftButton_K2Node_ComponentBoundEvent_3_OnButtonClickedEvent__DelegateSignature() end
function UWBP_Settings_Entry_Choice_C:BndEvt__WBP_Settings_Entry_Choice_RightButton_K2Node_ComponentBoundEvent_4_OnButtonClickedEvent__DelegateSignature() end
function UWBP_Settings_Entry_Choice_C:GoLeft() end
function UWBP_Settings_Entry_Choice_C:GoRight() end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_C:ExecuteUbergraph_WBP_Settings_Entry_Choice(EntryPoint) end
function UWBP_Settings_Entry_Choice_C:OnRight__DelegateSignature() end
function UWBP_Settings_Entry_Choice_C:OnLeft__DelegateSignature() end


