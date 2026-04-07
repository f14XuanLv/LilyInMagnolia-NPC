---@meta

---@class AFMODAmbientSound : AActor
---@field AudioComponent UFMODAudioComponent
local AFMODAmbientSound = {}



---@class FCustomPoolSizes
---@field Desktop int32
---@field Mobile int32
---@field PS4 int32
---@field SWITCH int32
---@field XBoxOne int32
local FCustomPoolSizes = {}



---@class FFMODAssetLookupRow : FTableRowBase
---@field PackageName FString
---@field AssetName FString
local FFMODAssetLookupRow = {}



---@class FFMODAttenuationDetails
---@field bOverrideAttenuation boolean
---@field MinimumDistance float
---@field MaximumDistance float
local FFMODAttenuationDetails = {}



---@class FFMODEventControlChannel : FMovieSceneByteChannel
local FFMODEventControlChannel = {}


---@class FFMODEventControlSectionTemplate : FMovieSceneEvalTemplate
---@field ControlKeys FFMODEventControlChannel
local FFMODEventControlSectionTemplate = {}



---@class FFMODEventInstance
local FFMODEventInstance = {}


---@class FFMODEventParameterSectionTemplate : FMovieSceneParameterSectionTemplate
local FFMODEventParameterSectionTemplate = {}


---@class FFMODLocalizedBankRow : FTableRowBase
---@field Path FString
local FFMODLocalizedBankRow = {}



---@class FFMODLocalizedBankTable : FTableRowBase
---@field Banks UDataTable
local FFMODLocalizedBankTable = {}



---@class FFMODOcclusionDetails
---@field bEnableOcclusion boolean
---@field OcclusionTraceChannel ECollisionChannel
---@field bUseComplexCollisionForOcclusion boolean
local FFMODOcclusionDetails = {}



---@class FFMODPlatformSettings
---@field RealChannelCount int32
---@field SampleRate int32
---@field SpeakerMode EFMODSpeakerMode::Type
---@field OutputType EFMODOutput::Type
---@field CustomPoolSize int32
---@field Codecs TMap<EFMODCodec::Type, int32>
local FFMODPlatformSettings = {}



---@class FFMODProjectLocale
---@field LocaleName FString
---@field LocaleCode FString
---@field bDefault boolean
local FFMODProjectLocale = {}



---@class UFMODAnimNotifyPlay : UAnimNotify
---@field bFollow boolean
---@field AttachName FString
---@field Event UFMODEvent
local UFMODAnimNotifyPlay = {}



---@class UFMODAsset : UObject
---@field AssetGuid FGuid
local UFMODAsset = {}



---@class UFMODAudioComponent : USceneComponent
---@field Event UFMODEvent
---@field ParameterCache TMap<FName, float>
---@field ProgrammerSoundName FString
---@field bEnableTimelineCallbacks boolean
---@field bAutoDestroy boolean
---@field bStopWhenOwnerDestroyed boolean
---@field OnEventStopped FFMODAudioComponentOnEventStopped
---@field OnSoundStopped FFMODAudioComponentOnSoundStopped
---@field OnTimelineMarker FFMODAudioComponentOnTimelineMarker
---@field OnTimelineBeat FFMODAudioComponentOnTimelineBeat
---@field AttenuationDetails FFMODAttenuationDetails
---@field OcclusionDetails FFMODOcclusionDetails
local UFMODAudioComponent = {}

function UFMODAudioComponent:Stop() end
---@param Volume float
function UFMODAudioComponent:SetVolume(Volume) end
---@param Time int32
function UFMODAudioComponent:SetTimelinePosition(Time) end
---@param Property EFMODEventProperty::Type
---@param Value float
function UFMODAudioComponent:SetProperty(Property, Value) end
---@param Value FString
function UFMODAudioComponent:SetProgrammerSoundName(Value) end
---@param Pitch float
function UFMODAudioComponent:SetPitch(Pitch) end
---@param paused boolean
function UFMODAudioComponent:SetPaused(paused) end
---@param Name FName
---@param Value float
function UFMODAudioComponent:SetParameter(Name, Value) end
---@param NewEvent UFMODEvent
function UFMODAudioComponent:SetEvent(NewEvent) end
function UFMODAudioComponent:Release() end
function UFMODAudioComponent:Play() end
function UFMODAudioComponent:KeyOff() end
---@return boolean
function UFMODAudioComponent:IsPlaying() end
---@return int32
function UFMODAudioComponent:GetTimelinePosition() end
---@param Property EFMODEventProperty::Type
---@return float
function UFMODAudioComponent:GetProperty(Property) end
---@return boolean
function UFMODAudioComponent:GetPaused() end
---@param Name FName
---@param UserValue float
---@param FinalValue float
function UFMODAudioComponent:GetParameterValue(Name, UserValue, FinalValue) end
---@param Name FName
---@return float
function UFMODAudioComponent:GetParameter(Name) end
---@return int32
function UFMODAudioComponent:GetLength() end


---@class UFMODAudioLinkComponent : USceneComponent
---@field Settings UFMODAudioLinkSettings
---@field Sound USoundBase
---@field AudioComponent UAudioComponent
local UFMODAudioLinkComponent = {}



---@class UFMODAudioLinkSettings : UAudioLinkSettingsAbstract
---@field LinkEvent TSoftObjectPtr<UFMODEvent>
---@field bShouldClearBufferOnReceipt boolean
---@field ProducerToConsumerBufferRatio float
---@field InitialSilenceFillRatio float
---@field LinkEventResolved UFMODEvent
local UFMODAudioLinkSettings = {}



---@class UFMODBank : UFMODAsset
local UFMODBank = {}


---@class UFMODBankLookup : UObject
---@field DataTable UDataTable
---@field MasterBankPath FString
---@field MasterAssetsBankPath FString
---@field MasterStringsBankPath FString
local UFMODBankLookup = {}



---@class UFMODBlueprintStatics : UBlueprintFunctionLibrary
local UFMODBlueprintStatics = {}

---@param Vca UFMODVCA
---@param Volume float
function UFMODBlueprintStatics:VCASetVolume(Vca, Volume) end
---@param WorldContextObject UObject
---@param Event UFMODEvent
function UFMODBlueprintStatics:UnloadEventSampleData(WorldContextObject, Event) end
---@param Bank UFMODBank
function UFMODBlueprintStatics:UnloadBankSampleData(Bank) end
---@param Bank UFMODBank
function UFMODBlueprintStatics:UnloadBank(Bank) end
---@param NewDriverName FString
function UFMODBlueprintStatics:SetOutputDriverByName(NewDriverName) end
---@param NewDriverIndex int32
function UFMODBlueprintStatics:SetOutputDriverByIndex(NewDriverIndex) end
---@param Locale FString
function UFMODBlueprintStatics:SetLocale(Locale) end
---@param Name FName
---@param Value float
function UFMODBlueprintStatics:SetGlobalParameterByName(Name, Value) end
---@param Event UFMODEvent
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param LocationType EAttachLocation::Type
---@param bStopWhenAttachedToDestroyed boolean
---@param bAutoPlay boolean
---@param bAutoDestroy boolean
---@return UFMODAudioComponent
function UFMODBlueprintStatics:PlayEventAttached(Event, AttachToComponent, AttachPointName, Location, LocationType, bStopWhenAttachedToDestroyed, bAutoPlay, bAutoDestroy) end
---@param WorldContextObject UObject
---@param Event UFMODEvent
---@param Location FTransform
---@param bAutoPlay boolean
---@return FFMODEventInstance
function UFMODBlueprintStatics:PlayEventAtLocation(WorldContextObject, Event, Location, bAutoPlay) end
---@param WorldContextObject UObject
---@param Event UFMODEvent
---@param bAutoPlay boolean
---@return FFMODEventInstance
function UFMODBlueprintStatics:PlayEvent2D(WorldContextObject, Event, bAutoPlay) end
function UFMODBlueprintStatics:MixerSuspend() end
function UFMODBlueprintStatics:MixerResume() end
---@param WorldContextObject UObject
---@param Event UFMODEvent
function UFMODBlueprintStatics:LoadEventSampleData(WorldContextObject, Event) end
---@param Bank UFMODBank
function UFMODBlueprintStatics:LoadBankSampleData(Bank) end
---@param Bank UFMODBank
---@param bBlocking boolean
---@param bLoadSampleData boolean
function UFMODBlueprintStatics:LoadBank(Bank, bBlocking, bLoadSampleData) end
---@param Bank UFMODBank
---@return boolean
function UFMODBlueprintStatics:IsBankLoaded(Bank) end
---@return TArray<FString>
function UFMODBlueprintStatics:GetOutputDrivers() end
---@return FString
function UFMODBlueprintStatics:GetLocale() end
---@param Name FName
---@param UserValue float
---@param FinalValue float
function UFMODBlueprintStatics:GetGlobalParameterValueByName(Name, UserValue, FinalValue) end
---@param Name FName
---@return float
function UFMODBlueprintStatics:GetGlobalParameterByName(Name) end
---@param WorldContextObject UObject
---@param Event UFMODEvent
---@return TArray<FFMODEventInstance>
function UFMODBlueprintStatics:FindEventInstances(WorldContextObject, Event) end
---@param Name FString
---@return UFMODEvent
function UFMODBlueprintStatics:FindEventByName(Name) end
---@param Name FString
---@return UFMODAsset
function UFMODBlueprintStatics:FindAssetByName(Name) end
---@param EventInstance FFMODEventInstance
---@param Release boolean
function UFMODBlueprintStatics:EventInstanceStop(EventInstance, Release) end
---@param EventInstance FFMODEventInstance
---@param Volume float
function UFMODBlueprintStatics:EventInstanceSetVolume(EventInstance, Volume) end
---@param EventInstance FFMODEventInstance
---@param Location FTransform
function UFMODBlueprintStatics:EventInstanceSetTransform(EventInstance, Location) end
---@param EventInstance FFMODEventInstance
---@param Property EFMODEventProperty::Type
---@param Value float
function UFMODBlueprintStatics:EventInstanceSetProperty(EventInstance, Property, Value) end
---@param EventInstance FFMODEventInstance
---@param Pitch float
function UFMODBlueprintStatics:EventInstanceSetPitch(EventInstance, Pitch) end
---@param EventInstance FFMODEventInstance
---@param paused boolean
function UFMODBlueprintStatics:EventInstanceSetPaused(EventInstance, paused) end
---@param EventInstance FFMODEventInstance
---@param Name FName
---@param Value float
function UFMODBlueprintStatics:EventInstanceSetParameter(EventInstance, Name, Value) end
---@param EventInstance FFMODEventInstance
function UFMODBlueprintStatics:EventInstanceRelease(EventInstance) end
---@param EventInstance FFMODEventInstance
function UFMODBlueprintStatics:EventInstancePlay(EventInstance) end
---@param EventInstance FFMODEventInstance
function UFMODBlueprintStatics:EventInstanceKeyOff(EventInstance) end
---@param EventInstance FFMODEventInstance
---@return boolean
function UFMODBlueprintStatics:EventInstanceIsValid(EventInstance) end
---@param EventInstance FFMODEventInstance
---@param Name FName
---@param UserValue float
---@param FinalValue float
function UFMODBlueprintStatics:EventInstanceGetParameterValue(EventInstance, Name, UserValue, FinalValue) end
---@param EventInstance FFMODEventInstance
---@param Name FName
---@return float
function UFMODBlueprintStatics:EventInstanceGetParameter(EventInstance, Name) end
---@param Bus UFMODBus
---@param stopMode EFMOD_STUDIO_STOP_MODE
function UFMODBlueprintStatics:BusStopAllEvents(Bus, stopMode) end
---@param Bus UFMODBus
---@param Volume float
function UFMODBlueprintStatics:BusSetVolume(Bus, Volume) end
---@param Bus UFMODBus
---@param bPaused boolean
function UFMODBlueprintStatics:BusSetPaused(Bus, bPaused) end
---@param Bus UFMODBus
---@param bMute boolean
function UFMODBlueprintStatics:BusSetMute(Bus, bMute) end


---@class UFMODBus : UFMODAsset
local UFMODBus = {}


---@class UFMODEvent : UFMODAsset
local UFMODEvent = {}


---@class UFMODEventControlSection : UMovieSceneSection
---@field ControlKeys FFMODEventControlChannel
local UFMODEventControlSection = {}



---@class UFMODEventControlTrack : UMovieSceneNameableTrack
---@field ControlSections TArray<UMovieSceneSection>
local UFMODEventControlTrack = {}



---@class UFMODEventParameterTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
local UFMODEventParameterTrack = {}



---@class UFMODPort : UFMODAsset
local UFMODPort = {}


---@class UFMODSettings : UObject
---@field bLoadAllBanks boolean
---@field bLoadAllSampleData boolean
---@field bEnableLiveUpdate boolean
---@field bEnableEditorLiveUpdate boolean
---@field BankOutputDirectory FDirectoryPath
---@field OutputFormat EFMODSpeakerMode::Type
---@field OutputType EFMODOutput::Type
---@field Locales TArray<FFMODProjectLocale>
---@field Vol0VirtualLevel float
---@field SampleRate int32
---@field bMatchHardwareSampleRate boolean
---@field RealChannelCount int32
---@field TotalChannelCount int32
---@field DSPBufferLength int32
---@field DSPBufferCount int32
---@field FileBufferSize int32
---@field StudioUpdatePeriod int32
---@field InitialOutputDriverName FString
---@field bLockAllBuses boolean
---@field MemoryPoolSizes FCustomPoolSizes
---@field LiveUpdatePort int32
---@field EditorLiveUpdatePort int32
---@field ReloadBanksDelay int32
---@field bEnableAPIErrorLogging boolean
---@field bEnableMemoryTracking boolean
---@field PluginFiles TArray<FString>
---@field ContentBrowserPrefix FString
---@field ForcePlatformName FString
---@field MasterBankName FString
---@field SkipLoadBankName FString
---@field StudioBankKey FString
---@field WavWriterPath FString
---@field LoggingLevel EFMODLogging
---@field OcclusionParameter FString
---@field AmbientVolumeParameter FString
---@field AmbientLPFParameter FString
---@field bFMODAudioLinkEnabled boolean
---@field Platforms TMap<EFMODPlatforms::Type, FFMODPlatformSettings>
local UFMODSettings = {}



---@class UFMODSnapshot : UFMODEvent
local UFMODSnapshot = {}


---@class UFMODSnapshotReverb : UReverbEffect
---@field AssetGuid FGuid
local UFMODSnapshotReverb = {}



---@class UFMODVCA : UFMODAsset
local UFMODVCA = {}


