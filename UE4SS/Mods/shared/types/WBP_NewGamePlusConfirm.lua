---@meta

---@class UWBP_NewGamePlusConfirm_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field TextBlock_153 UTextBlock
---@field WBP_Button_Generic_BackUp UWBP_Button_Generic_C
---@field WBP_Button_Generic_Cancel UWBP_Button_Generic_C
---@field WBP_Button_Generic_Convert UWBP_Button_Generic_C
---@field WBP_Dialog UWBP_Dialog_C
---@field OnBackUpAndConvert FWBP_NewGamePlusConfirm_COnBackUpAndConvert
---@field OnConvert FWBP_NewGamePlusConfirm_COnConvert
local UWBP_NewGamePlusConfirm_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_NewGamePlusConfirm_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_NewGamePlusConfirm_C:OnFinish_AEB281AA4461D34E4548EEA2A89CFDFD() end
function UWBP_NewGamePlusConfirm_C:OnFinish_2C57CAD94B01089FF3A477A460CC2164() end
function UWBP_NewGamePlusConfirm_C:OnFinish_5F012C864380CBB3ECC4529EC0A6C1CD() end
function UWBP_NewGamePlusConfirm_C:OnFinish_E87C4428471FDBBCC3B480925029F5EA() end
function UWBP_NewGamePlusConfirm_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_NewGamePlusConfirm_C:BndEvt__WBP_NewGamePlusConfirm_WBP_Button_Generic_BackUp_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_NewGamePlusConfirm_C:BndEvt__WBP_NewGamePlusConfirm_WBP_Button_Generic_Convert_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_NewGamePlusConfirm_C:BndEvt__WBP_NewGamePlusConfirm_WBP_Button_Generic_Cancel_K2Node_ComponentBoundEvent_2_OnPressed__DelegateSignature(KeyEvent) end
---@param EntryPoint int32
function UWBP_NewGamePlusConfirm_C:ExecuteUbergraph_WBP_NewGamePlusConfirm(EntryPoint) end
function UWBP_NewGamePlusConfirm_C:OnConvert__DelegateSignature() end
function UWBP_NewGamePlusConfirm_C:OnBackUpAndConvert__DelegateSignature() end


