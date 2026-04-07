---@meta

---@class UWBP_Settings_Entry_Choice_Text_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OptionLabel UTextBlock
---@field WBP_Settings_Entry_Choice UWBP_Settings_Entry_Choice_C
---@field Label FText
---@field OnLeft FWBP_Settings_Entry_Choice_Text_COnLeft
---@field OnRight FWBP_Settings_Entry_Choice_Text_COnRight
---@field LabelScaleStretch EStretch::Type
local UWBP_Settings_Entry_Choice_Text_C = {}

---@param InStretch EStretch::Type
function UWBP_Settings_Entry_Choice_Text_C:SetLabelScaleBoxStretch(InStretch) end
---@param ChoiceCount int32
function UWBP_Settings_Entry_Choice_Text_C:SetChoiceCount(ChoiceCount) end
---@param InColorAndOpacity FSlateColor
function UWBP_Settings_Entry_Choice_Text_C:SetOptionColor(InColorAndOpacity) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_Text_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param InText FText
---@param ChoiceIndex int32
function UWBP_Settings_Entry_Choice_Text_C:SetOptionText(InText, ChoiceIndex) end
---@param InText FText
function UWBP_Settings_Entry_Choice_Text_C:SetLabel(InText) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Choice_Text_C:PreConstruct(IsDesignTime) end
function UWBP_Settings_Entry_Choice_Text_C:BndEvt__WBP_Settings_Entry_Choice_Text_WBP_Settings_Entry_Choice_K2Node_ComponentBoundEvent_2_OnLeft__DelegateSignature() end
function UWBP_Settings_Entry_Choice_Text_C:BndEvt__WBP_Settings_Entry_Choice_Text_WBP_Settings_Entry_Choice_K2Node_ComponentBoundEvent_3_OnRight__DelegateSignature() end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_Choice_Text_C:OnSetIsEnabled(bInIsEnabled) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_Text_C:ExecuteUbergraph_WBP_Settings_Entry_Choice_Text(EntryPoint) end
function UWBP_Settings_Entry_Choice_Text_C:OnRight__DelegateSignature() end
function UWBP_Settings_Entry_Choice_Text_C:OnLeft__DelegateSignature() end


