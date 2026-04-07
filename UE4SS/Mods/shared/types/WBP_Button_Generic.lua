---@meta

---@class UWBP_Button_Generic_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Focused UWidgetAnimation
---@field ButtonText UTextBlock
---@field NiagaraSystemWidget_61 UNiagaraSystemWidget
---@field Overlay_FocusedContainer UOverlay
---@field ScaleBox_Text UScaleBox
---@field Text FText
---@field OnPressed FWBP_Button_Generic_COnPressed
---@field OnFocused FWBP_Button_Generic_COnFocused
---@field TextHorizontalAlignement EHorizontalAlignment
local UWBP_Button_Generic_C = {}

function UWBP_Button_Generic_C:SequenceEvent__ENTRYPOINTWBP_Button_Generic() end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Button_Generic_C:OnPressConfirm(KeyEvent) end
---@param Focus boolean
function UWBP_Button_Generic_C:SetFocusedState(Focus) end
---@param InText FText
function UWBP_Button_Generic_C:SetText(InText) end
function UWBP_Button_Generic_C:SequenceEvent() end
---@param IsDesignTime boolean
function UWBP_Button_Generic_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_Button_Generic_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_Button_Generic_C:OnRemovedFromFocusPath(InFocusEvent) end
function UWBP_Button_Generic_C:Construct() end
---@param EntryPoint int32
function UWBP_Button_Generic_C:ExecuteUbergraph_WBP_Button_Generic(EntryPoint) end
function UWBP_Button_Generic_C:OnFocused__DelegateSignature() end
---@param KeyEvent FKeyEvent
function UWBP_Button_Generic_C:OnPressed__DelegateSignature(KeyEvent) end


