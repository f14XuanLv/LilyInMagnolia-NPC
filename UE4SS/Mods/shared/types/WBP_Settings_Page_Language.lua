---@meta

---@class UWBP_Settings_Page_Language_C : UWBP_Settings_Page_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Choice_Text_LanguageText UWBP_Settings_Entry_Choice_Text_C
---@field WBP_Settings_Entry_Choice_Text_LanguageVoice UWBP_Settings_Entry_Choice_Text_C
---@field Languages TArray<FString>
---@field CurrLanguageIndex int32
---@field VoiceLanguages TArray<FString>
---@field VoiceLanguageTexts TMap<FString, FText>
---@field CurrVoiceIndex int32
local UWBP_Settings_Page_Language_C = {}

---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Page_Language_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_Page_Language_C:ApplyVoiceSettings() end
---@param Index int32
function UWBP_Settings_Page_Language_C:SetVoiceFromIndex(Index) end
---@param Index int32
function UWBP_Settings_Page_Language_C:SetLanguageFromIndex(Index) end
function UWBP_Settings_Page_Language_C:RefreshText() end
function UWBP_Settings_Page_Language_C:Construct() end
function UWBP_Settings_Page_Language_C:BndEvt__WBP_Settings_Page_Language_WBP_Settings_Entry_Choice_Text_LanguageText_K2Node_ComponentBoundEvent_1_OnRight__DelegateSignature() end
function UWBP_Settings_Page_Language_C:BndEvt__WBP_Settings_Page_Language_WBP_Settings_Entry_Choice_Text_LanguageText_K2Node_ComponentBoundEvent_0_OnLeft__DelegateSignature() end
function UWBP_Settings_Page_Language_C:BndEvt__WBP_Settings_Page_Language_WBP_Settings_Entry_Choice_Text_LanguageVoice_K2Node_ComponentBoundEvent_2_OnLeft__DelegateSignature() end
function UWBP_Settings_Page_Language_C:BndEvt__WBP_Settings_Page_Language_WBP_Settings_Entry_Choice_Text_LanguageVoice_K2Node_ComponentBoundEvent_3_OnRight__DelegateSignature() end
function UWBP_Settings_Page_Language_C:Destruct() end
---@param EntryPoint int32
function UWBP_Settings_Page_Language_C:ExecuteUbergraph_WBP_Settings_Page_Language(EntryPoint) end


