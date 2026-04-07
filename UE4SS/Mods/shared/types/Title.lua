---@meta

---@class ATitle_C : ALevelScriptActor
---@field UberGraphFrame FPointerToUberGraphFrame
local ATitle_C = {}

---@param bCanUseGamma boolean
function ATitle_C:CanUseGammaSetting(bCanUseGamma) end
function ATitle_C:SetupProfile() end
function ATitle_C:LoadSettingsData() end
function ATitle_C:CreateTitleUI() end
function ATitle_C:OnRequestSettingsDeletion() end
function ATitle_C:OnCancelSettingsDeletion() end
function ATitle_C:OnSettingsLoaded() end
function ATitle_C:CreateProfileConfirmationUI() end
function ATitle_C:OnProfileConfirmationFinished() end
---@param EndPlayReason EEndPlayReason::Type
function ATitle_C:ReceiveEndPlay(EndPlayReason) end
function ATitle_C:DoInitialSettingsProcess() end
function ATitle_C:CreateLanguageSelection() end
function ATitle_C:OnLanguageSelecitonFinished() end
function ATitle_C:FinalizeInitialSettings() end
function ATitle_C:CreateGammaSelection() end
---@param bConfirmed boolean
function ATitle_C:OnGammaSelected(bConfirmed) end
function ATitle_C:CreateAutoUploadCrashSetting() end
function ATitle_C:OnAutoUploadCrashYES() end
function ATitle_C:OnAutoUploadCrashNO() end
function ATitle_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ATitle_C:ExecuteUbergraph_Title(EntryPoint) end


