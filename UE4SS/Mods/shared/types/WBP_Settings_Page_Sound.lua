---@meta

---@class UWBP_Settings_Page_Sound_C : UWBP_Settings_Page_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Button_Generic_RevertToDefault UWBP_Button_Generic_C
---@field WBP_Settings_Entry_Sound_Ambient UWBP_Settings_Entry_Sound_C
---@field WBP_Settings_Entry_Sound_BGM UWBP_Settings_Entry_Sound_C
---@field WBP_Settings_Entry_Sound_Master UWBP_Settings_Entry_Sound_C
---@field WBP_Settings_Entry_Sound_SE_Game UWBP_Settings_Entry_Sound_C
---@field WBP_Settings_Entry_Sound_SE_UI UWBP_Settings_Entry_Sound_C
---@field WBP_Settings_Entry_Sound_Voice UWBP_Settings_Entry_Sound_C
local UWBP_Settings_Page_Sound_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Page_Sound_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Settings_Page_Sound_C:BndEvt__WBP_Settings_Page_Audio_WBP_Button_Generic_RevertToDefault_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Settings_Page_Sound_C:OnConfirmResetToDefault() end
---@param EntryPoint int32
function UWBP_Settings_Page_Sound_C:ExecuteUbergraph_WBP_Settings_Page_Sound(EntryPoint) end


