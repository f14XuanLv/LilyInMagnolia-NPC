---@meta

---@class UWBP_Dialog_OK_C : UUserWidgetDialogOk
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field WBP_Button_Generic_OK UWBP_Button_Generic_C
---@field WBP_Dialog UWBP_Dialog_C
local UWBP_Dialog_OK_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Dialog_OK_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Dialog_OK_C:OnFinish_C8050D4F4A403A1A1F8EBB9260178FE6() end
function UWBP_Dialog_OK_C:OnFinish_23B14E63469CEBAA28D71EB1C96F3EFA() end
---@param IsDesignTime boolean
function UWBP_Dialog_OK_C:PreConstruct(IsDesignTime) end
function UWBP_Dialog_OK_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_OK_C:BndEvt__WBP_Dialog_OK_WBP_Button_Generic_OK_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param EntryPoint int32
function UWBP_Dialog_OK_C:ExecuteUbergraph_WBP_Dialog_OK(EntryPoint) end


