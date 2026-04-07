---@meta

---@class UWBP_Dialog_TitleScreenSelection_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field WBP_Button_Generic_Default UWBP_Button_Generic_C
---@field WBP_Button_Generic_EndingA UWBP_Button_Generic_C
---@field WBP_Button_Generic_EndingB UWBP_Button_Generic_C
---@field WBP_Dialog UWBP_Dialog_C
---@field OnTitleSelected FWBP_Dialog_TitleScreenSelection_COnTitleSelected
local UWBP_Dialog_TitleScreenSelection_C = {}

function UWBP_Dialog_TitleScreenSelection_C:SetupButtons() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Dialog_TitleScreenSelection_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Dialog_TitleScreenSelection_C:OnPressCancel(KeyEvent) end
function UWBP_Dialog_TitleScreenSelection_C:OnFinish_72C7DC1544F90D6FD9C2188427626E12() end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_TitleScreenSelection_C:BndEvt__WBP_Dialog_TitleSelection_WBP_Button_Generic_Default_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_TitleScreenSelection_C:BndEvt__WBP_Dialog_TitleSelection_WBP_Button_Generic_EndingA_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_TitleScreenSelection_C:BndEvt__WBP_Dialog_TitleSelection_WBP_Button_Generic_EndingB_K2Node_ComponentBoundEvent_2_OnPressed__DelegateSignature(KeyEvent) end
---@param TitleType EGameEndingType
function UWBP_Dialog_TitleScreenSelection_C:ApplyAndClose(TitleType) end
function UWBP_Dialog_TitleScreenSelection_C:Close() end
function UWBP_Dialog_TitleScreenSelection_C:Construct() end
---@param EntryPoint int32
function UWBP_Dialog_TitleScreenSelection_C:ExecuteUbergraph_WBP_Dialog_TitleScreenSelection(EntryPoint) end
function UWBP_Dialog_TitleScreenSelection_C:OnTitleSelected__DelegateSignature() end


