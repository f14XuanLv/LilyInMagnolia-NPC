---@meta

---@class UWBP_Dialog_YesNo_SaveSlot_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field WBP_Button_Generic_NO UWBP_Button_Generic_C
---@field WBP_Button_Generic_YES UWBP_Button_Generic_C
---@field WBP_Dialog UWBP_Dialog_C
---@field WBP_SlotSelection_Entry UWBP_SlotSelection_Entry_C
---@field Message FText
---@field ButtonYES FText
---@field ButtonNO FText
---@field OnYES FWBP_Dialog_YesNo_SaveSlot_COnYES
---@field OnNO FWBP_Dialog_YesNo_SaveSlot_COnNO
---@field SaveSlotEntry UWBP_SlotSelection_Entry_C
local UWBP_Dialog_YesNo_SaveSlot_C = {}

---@param Content UWidget
---@param Slot UCanvasPanelSlot
function UWBP_Dialog_YesNo_SaveSlot_C:AddTopContent(Content, Slot) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Dialog_YesNo_SaveSlot_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Dialog_YesNo_SaveSlot_C:OnFinish_72C7DC1544F90D6FD9C218846C42C3FF() end
function UWBP_Dialog_YesNo_SaveSlot_C:OnFinish_72C7DC1544F90D6FD9C218841A2348B6() end
function UWBP_Dialog_YesNo_SaveSlot_C:OnFinish_72C7DC1544F90D6FD9C21884B2232695() end
---@param IsDesignTime boolean
function UWBP_Dialog_YesNo_SaveSlot_C:PreConstruct(IsDesignTime) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_YesNo_SaveSlot_C:BndEvt__WBP_Dialog_YesNo_WBP_Button_Generic_YES_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_YesNo_SaveSlot_C:BndEvt__WBP_Dialog_YesNo_WBP_Button_Generic_NO_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Dialog_YesNo_SaveSlot_C:Construct() end
---@param EntryPoint int32
function UWBP_Dialog_YesNo_SaveSlot_C:ExecuteUbergraph_WBP_Dialog_YesNo_SaveSlot(EntryPoint) end
function UWBP_Dialog_YesNo_SaveSlot_C:OnNO__DelegateSignature() end
function UWBP_Dialog_YesNo_SaveSlot_C:OnYES__DelegateSignature() end


