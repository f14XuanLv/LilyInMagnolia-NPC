---@meta

---@class UWBP_ProfileConfirmation_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Loop UWidgetAnimation
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field ProfileName UTextBlock
---@field WBP_Title_BG UWBP_Title_BG_Default_C
---@field OnProfileConfirmationFinished FWBP_ProfileConfirmation_COnProfileConfirmationFinished
local UWBP_ProfileConfirmation_C = {}

---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_ProfileConfirmation_C:OnPressConfirm(KeyEvent) end
function UWBP_ProfileConfirmation_C:RefreshUserProfile() end
function UWBP_ProfileConfirmation_C:OnFinish_72C7DC1544F90D6FD9C21884A5669BDC() end
function UWBP_ProfileConfirmation_C:OnFinish_72C7DC1544F90D6FD9C21884B9702A43() end
function UWBP_ProfileConfirmation_C:Construct() end
function UWBP_ProfileConfirmation_C:OnProfileConfirmed() end
---@param EntryPoint int32
function UWBP_ProfileConfirmation_C:ExecuteUbergraph_WBP_ProfileConfirmation(EntryPoint) end
function UWBP_ProfileConfirmation_C:OnProfileConfirmationFinished__DelegateSignature() end


