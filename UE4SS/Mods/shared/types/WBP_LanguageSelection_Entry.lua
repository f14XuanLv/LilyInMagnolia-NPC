---@meta

---@class UWBP_LanguageSelection_Entry_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Button_Generic UWBP_Button_Generic_C
---@field Language FString
---@field OnPressed FWBP_LanguageSelection_Entry_COnPressed
local UWBP_LanguageSelection_Entry_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_LanguageSelection_Entry_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_LanguageSelection_Entry_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_LanguageSelection_Entry_C:BndEvt__WBP_LanguageSelection_Entry_WBP_Button_Generic_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param EntryPoint int32
function UWBP_LanguageSelection_Entry_C:ExecuteUbergraph_WBP_LanguageSelection_Entry(EntryPoint) end
---@param LanguageEntry UWBP_LanguageSelection_Entry_C
function UWBP_LanguageSelection_Entry_C:OnPressed__DelegateSignature(LanguageEntry) end


