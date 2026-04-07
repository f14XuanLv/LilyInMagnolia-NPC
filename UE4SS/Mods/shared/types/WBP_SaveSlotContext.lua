---@meta

---@class UWBP_SaveSlotContext_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field Overlay_NGPlusContainer UOverlay
---@field Overlay_NoSaveData UOverlay
---@field Overlay_SaveDataValid UOverlay
---@field WBP_Button_Generic_Copy UWBP_Button_Generic_C
---@field WBP_Button_Generic_Delete UWBP_Button_Generic_C
---@field WBP_Button_Generic_Load UWBP_Button_Generic_C
---@field WBP_Button_Generic_NewGame UWBP_Button_Generic_C
---@field ['WBP_Button_Generic_NG+'] UWBP_Button_Generic_C
---@field WBP_Explanation UWBP_Explanation_C
---@field WBP_Footer UWBP_Footer_C
---@field WBP_SlotSelection_Entry UWBP_SlotSelection_Entry_C
---@field WidgetSwitcher_HasSaveData UWidgetSwitcher
---@field OnRequestNewGameOrLoad FWBP_SaveSlotContext_COnRequestNewGameOrLoad
---@field OnRequestDelete FWBP_SaveSlotContext_COnRequestDelete
---@field OnRequestCopy FWBP_SaveSlotContext_COnRequestCopy
---@field SlotSelectionEntry UWBP_SlotSelection_Entry_C
---@field ['OnRequestNG+'] FWBP_SaveSlotContext_COnRequestNG+
local UWBP_SaveSlotContext_C = {}

---@param bCanUseNGPlus boolean
function UWBP_SaveSlotContext_C:CanUseNGPlus(bCanUseNGPlus) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_SaveSlotContext_C:OnPressCancel(KeyEvent) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_SaveSlotContext_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_SaveSlotContext_C:OnFinish_B292860845428054BA6E2499F5893E4F() end
function UWBP_SaveSlotContext_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_SaveSlotContext_C:BndEvt__WBP_Title_WBP_Button_Generic_Settings_K2Node_ComponentBoundEvent_2_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_SaveSlotContext_C:Cancel() end
---@param KeyEvent FKeyEvent
function UWBP_SaveSlotContext_C:BndEvt__WBP_SaveSlotContext_WBP_Button_Generic_Load_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_SaveSlotContext_C:BndEvt__WBP_Title_WBP_Button_Generic_Start_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_SaveSlotContext_C:BndEvt__WBP_SaveSlotContext_WBP_Button_Generic_NewGame_K2Node_ComponentBoundEvent_3_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_SaveSlotContext_C:OnDeleteConfirm() end
function UWBP_SaveSlotContext_C:OnCopyConfirm() end
---@param KeyEvent FKeyEvent
UWBP_SaveSlotContext_C['BndEvt__WBP_SaveSlotContext_WBP_Button_Generic_NG+_K2Node_ComponentBoundEvent_4_OnPressed__DelegateSignature'] = function(self, KeyEvent) end
---@param EntryPoint int32
function UWBP_SaveSlotContext_C:ExecuteUbergraph_WBP_SaveSlotContext(EntryPoint) end
UWBP_SaveSlotContext_C['OnRequestNG+__DelegateSignature'] = function(self, ) end
function UWBP_SaveSlotContext_C:OnRequestNewGameOrLoad__DelegateSignature() end
function UWBP_SaveSlotContext_C:OnRequestCopy__DelegateSignature() end
function UWBP_SaveSlotContext_C:OnRequestDelete__DelegateSignature() end


