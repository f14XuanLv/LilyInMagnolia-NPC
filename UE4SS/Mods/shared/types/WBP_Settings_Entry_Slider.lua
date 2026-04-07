---@meta

---@class UWBP_Settings_Entry_Slider_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DisabledText UTextBlock
---@field HorizontalBox_Slider UHorizontalBox
---@field HorizontalBox_UnlimitedText UHorizontalBox
---@field Overlay_TextContainer UOverlay
---@field SizeBox_ValueText USizeBox
---@field ValueText UTextBlock
---@field WBP_Settings_Entry_Label UWBP_Settings_Entry_Label_C
---@field WBP_Slider UWBP_Slider_C
---@field WidgetSwitcher UWidgetSwitcher
---@field Label FText
---@field LabelImage UPaperSprite
---@field SliderMinValue double
---@field SliderMaxValue double
---@field SliderStepSize double
---@field OnSliderValueChanged FWBP_Settings_Entry_Slider_COnSliderValueChanged
---@field SliderStepFastFactor int32
---@field SliderFastFactorTime double
---@field bMouseUseStep boolean
---@field DisplayValue boolean
---@field ValueFormat FText
---@field ValueWidth float
---@field ChangeTextWhenDisabled boolean
---@field DisabledValueText FText
---@field ColorValue boolean
---@field ReferenceColorValue double
---@field ColorSuperior FSlateColor
---@field ColorEqual FSlateColor
---@field ColorInferior FSlateColor
---@field LastPressedTime double
---@field bPlaySoundEffectOnRelease boolean
---@field SE_KeyReleased UFMODEvent
local UWBP_Settings_Entry_Slider_C = {}

---@param LabelImage UPaperSprite
function UWBP_Settings_Entry_Slider_C:SetLabelImage(LabelImage) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Slider_C:OnKeyUp(MyGeometry, InKeyEvent) end
---@return int32
UWBP_Settings_Entry_Slider_C['Get Slider Step Factor'] = function(self, ) end
function UWBP_Settings_Entry_Slider_C:UpdateValueText() end
function UWBP_Settings_Entry_Slider_C:UpdateValueColor() end
---@param SliderValue float
function UWBP_Settings_Entry_Slider_C:GetSliderValue(SliderValue) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Slider_C:OnDownRight(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Slider_C:OnDownLeft(KeyEvent) end
function UWBP_Settings_Entry_Slider_C:StepSlider() end
---@param InText FText
function UWBP_Settings_Entry_Slider_C:SetLabel(InText) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Slider_C:OnPressRight(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_Slider_C:OnPressLeft(KeyEvent) end
---@param InValue double
function UWBP_Settings_Entry_Slider_C:SetSliderValue(InValue) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Slider_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Slider_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Slider_C:OnRemovedFromFocusPath(InFocusEvent) end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_Slider_C:OnSetIsEnabled(bInIsEnabled) end
---@param Value double
function UWBP_Settings_Entry_Slider_C:BndEvt__WBP_Settings_Entry_Slider_WBP_Slider_K2Node_ComponentBoundEvent_1_OnValueChanged__DelegateSignature(Value) end
function UWBP_Settings_Entry_Slider_C:OnKeyReleased() end
---@param EntryPoint int32
function UWBP_Settings_Entry_Slider_C:ExecuteUbergraph_WBP_Settings_Entry_Slider(EntryPoint) end
---@param Value double
function UWBP_Settings_Entry_Slider_C:OnSliderValueChanged__DelegateSignature(Value) end


