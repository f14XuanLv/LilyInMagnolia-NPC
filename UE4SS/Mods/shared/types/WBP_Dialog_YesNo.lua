---@meta

---@class UWBP_Dialog_YesNo_C : UUserWidgetDialogYesNo
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field WBP_Button_Generic_NO UWBP_Button_Generic_C
---@field WBP_Button_Generic_YES UWBP_Button_Generic_C
---@field WBP_Dialog UWBP_Dialog_C
local UWBP_Dialog_YesNo_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Dialog_YesNo_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Dialog_YesNo_C:OnFinish_72C7DC1544F90D6FD9C21884236CC3B7() end
function UWBP_Dialog_YesNo_C:OnFinish_72C7DC1544F90D6FD9C2188455F6B577() end
function UWBP_Dialog_YesNo_C:OnFinish_72C7DC1544F90D6FD9C21884EF580793() end
---@param IsDesignTime boolean
function UWBP_Dialog_YesNo_C:PreConstruct(IsDesignTime) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_YesNo_C:BndEvt__WBP_Dialog_YesNo_WBP_Button_Generic_YES_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_YesNo_C:BndEvt__WBP_Dialog_YesNo_WBP_Button_Generic_NO_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Dialog_YesNo_C:Construct() end
---@param EntryPoint int32
function UWBP_Dialog_YesNo_C:ExecuteUbergraph_WBP_Dialog_YesNo(EntryPoint) end


