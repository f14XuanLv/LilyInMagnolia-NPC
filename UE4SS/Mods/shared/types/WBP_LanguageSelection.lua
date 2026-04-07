---@meta

---@class UWBP_LanguageSelection_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field BG UImage
---@field LanguageContainer UWrapBox
---@field WBP_Footer UWBP_Footer_C
---@field WBP_SeparateLine UWBP_SeparateLine_C
---@field LanguageEntries TArray<UWBP_LanguageSelection_Entry_C>
---@field OnClosed FWBP_LanguageSelection_COnClosed
local UWBP_LanguageSelection_C = {}

function UWBP_LanguageSelection_C:GenerateLanguageEntries() end
---@param Language FString
---@param FallbackLanguageEntry UWBP_LanguageSelection_Entry_C
---@param LanguageEntry UWBP_LanguageSelection_Entry_C
function UWBP_LanguageSelection_C:FindLanguageEntryForLanguage(Language, FallbackLanguageEntry, LanguageEntry) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_LanguageSelection_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_LanguageSelection_C:OnFinish_72C7DC1544F90D6FD9C21884DE6DF918() end
function UWBP_LanguageSelection_C:OnFinish_72C7DC1544F90D6FD9C21884051FFD94() end
function UWBP_LanguageSelection_C:Construct() end
---@param LanguageEntry UWBP_LanguageSelection_Entry_C
function UWBP_LanguageSelection_C:OnEntryPressed(LanguageEntry) end
function UWBP_LanguageSelection_C:Close() end
---@param EntryPoint int32
function UWBP_LanguageSelection_C:ExecuteUbergraph_WBP_LanguageSelection(EntryPoint) end
function UWBP_LanguageSelection_C:OnClosed__DelegateSignature() end


