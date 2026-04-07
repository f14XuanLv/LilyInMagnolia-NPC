---@meta

---@class FArtifactSettings
---@field ArtifactName FString
---@field ClientId FString
---@field ClientSecret FString
---@field ProductId FString
---@field SandboxId FString
---@field DeploymentId FString
---@field ClientEncryptionKey FString
local FArtifactSettings = {}



---@class UDEPRECATED_EOSArtifactSettings : UDataAsset
local UDEPRECATED_EOSArtifactSettings = {}


---@class UEOSSettings : URuntimeOptionsBase
---@field CacheDir FString
---@field DefaultArtifactName FString
---@field RTCBackgroundMode FString
---@field TickBudgetInMilliseconds int32
---@field bEnableOverlay boolean
---@field bEnableSocialOverlay boolean
---@field bEnableEditorOverlay boolean
---@field bPreferPersistentAuth boolean
---@field TitleStorageTags TArray<FString>
---@field TitleStorageReadChunkLength int32
---@field Artifacts TArray<FArtifactSettings>
---@field AuthScopeFlags TArray<FString>
---@field bUseEAS boolean
---@field bUseEOSConnect boolean
---@field bMirrorStatsToEOS boolean
---@field bMirrorAchievementsToEOS boolean
---@field bUseEOSSessions boolean
---@field bMirrorPresenceToEAS boolean
---@field SteamTokenType FString
local UEOSSettings = {}



---@class UNetDriverEOS : UNetDriverEOSBase
local UNetDriverEOS = {}


