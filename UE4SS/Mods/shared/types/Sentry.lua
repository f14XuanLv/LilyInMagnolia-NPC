---@meta

---@class FAutomaticBreadcrumbs
---@field bOnMapLoadingStarted boolean
---@field bOnMapLoaded boolean
---@field bOnGameStateClassChanged boolean
---@field bOnGameSessionIDChanged boolean
---@field bOnUserActivityStringChanged boolean
local FAutomaticBreadcrumbs = {}



---@class FAutomaticBreadcrumbsForLogs
---@field bOnFatalLog boolean
---@field bOnErrorLog boolean
---@field bOnWarningLog boolean
---@field bOnInfoLog boolean
---@field bOnDebugLog boolean
local FAutomaticBreadcrumbsForLogs = {}



---@class FEnableBuildConfigurations
---@field bEnableDebug boolean
---@field bEnableDebugGame boolean
---@field bEnableDevelopment boolean
---@field bEnableTest boolean
---@field bEnableShipping boolean
local FEnableBuildConfigurations = {}



---@class FEnableBuildPlatforms
---@field bEnableLinux boolean
---@field bEnableWindows boolean
---@field bEnableIOS boolean
---@field bEnableAndroid boolean
---@field bEnableMac boolean
local FEnableBuildPlatforms = {}



---@class FEnableBuildTargets
---@field bEnableClient boolean
---@field bEnableGame boolean
---@field bEnableEditor boolean
---@field bEnableServer boolean
---@field bEnableProgram boolean
local FEnableBuildTargets = {}



---@class FTagsPromotion
---@field bPromoteBuildConfiguration boolean
---@field bPromoteTargetType boolean
---@field bPromoteEngineMode boolean
---@field bPromoteIsGame boolean
---@field bPromoteIsStandalone boolean
---@field bPromoteIsUnattended boolean
local FTagsPromotion = {}



---@class USentryAttachment : UObject
local USentryAttachment = {}

---@param Path FString
---@param Filename FString
---@param ContentType FString
function USentryAttachment:InitializeWithPath(Path, Filename, ContentType) end
---@param Data TArray<uint8>
---@param Filename FString
---@param ContentType FString
function USentryAttachment:InitializeWithData(Data, Filename, ContentType) end
---@return FString
function USentryAttachment:GetPath() end
---@return FString
function USentryAttachment:GetFilename() end
---@return TArray<uint8>
function USentryAttachment:GetData() end
---@return FString
function USentryAttachment:GetContentType() end


---@class USentryBeforeSendHandler : UObject
local USentryBeforeSendHandler = {}

---@param Event USentryEvent
---@param Hint USentryHint
---@return USentryEvent
function USentryBeforeSendHandler:HandleBeforeSend(Event, Hint) end


---@class USentryBreadcrumb : UObject
local USentryBreadcrumb = {}

---@param Type FString
function USentryBreadcrumb:SetType(Type) end
---@param Message FString
function USentryBreadcrumb:SetMessage(Message) end
---@param Level ESentryLevel
function USentryBreadcrumb:SetLevel(Level) end
---@param Data TMap<FString, FString>
function USentryBreadcrumb:SetData(Data) end
---@param Category FString
function USentryBreadcrumb:SetCategory(Category) end
---@return FString
function USentryBreadcrumb:GetType() end
---@return FString
function USentryBreadcrumb:GetMessage() end
---@return ESentryLevel
function USentryBreadcrumb:GetLevel() end
---@return TMap<FString, FString>
function USentryBreadcrumb:GetData() end
---@return FString
function USentryBreadcrumb:GetCategory() end


---@class USentryEvent : UObject
local USentryEvent = {}

---@param Message FString
function USentryEvent:SetMessage(Message) end
---@param Level ESentryLevel
function USentryEvent:SetLevel(Level) end
---@return boolean
function USentryEvent:IsCrash() end
---@return FString
function USentryEvent:GetMessage() end
---@return ESentryLevel
function USentryEvent:GetLevel() end
---@param Message FString
---@param Level ESentryLevel
---@return USentryEvent
function USentryEvent:CreateEventWithMessageAndLevel(Message, Level) end


---@class USentryHint : UObject
local USentryHint = {}

---@param Attachment USentryAttachment
function USentryHint:AddAttachment(Attachment) end


---@class USentryId : UObject
local USentryId = {}

---@return FString
function USentryId:ToString() end


---@class USentryLibrary : UBlueprintFunctionLibrary
local USentryLibrary = {}

---@param InString FString
---@return TArray<uint8>
function USentryLibrary:StringToBytesArray(InString) end
---@param InString FString
---@param Filename FString
---@return FString
function USentryLibrary:SaveStringToFile(InString, Filename) end
---@param EventId USentryId
---@param Name FString
---@param Email FString
---@param Comments FString
---@return USentryUserFeedback
function USentryLibrary:CreateSentryUserFeedback(EventId, Name, Email, Comments) end
---@param Email FString
---@param ID FString
---@param UserName FString
---@param IpAddress FString
---@param Data TMap<FString, FString>
---@return USentryUser
function USentryLibrary:CreateSentryUser(Email, ID, UserName, IpAddress, Data) end
---@param Name FString
---@param Operation FString
---@return USentryTransactionContext
function USentryLibrary:CreateSentryTransactionContext(Name, Operation) end
---@param Message FString
---@param Level ESentryLevel
---@return USentryEvent
function USentryLibrary:CreateSentryEvent(Message, Level) end
---@param Message FString
---@param Type FString
---@param Category FString
---@param Data TMap<FString, FString>
---@param Level ESentryLevel
---@return USentryBreadcrumb
function USentryLibrary:CreateSentryBreadcrumb(Message, Type, Category, Data, Level) end
---@param Path FString
---@param Filename FString
---@param ContentType FString
---@return USentryAttachment
function USentryLibrary:CreateSentryAttachmentWithPath(Path, Filename, ContentType) end
---@param Data TArray<uint8>
---@param Filename FString
---@param ContentType FString
---@return USentryAttachment
function USentryLibrary:CreateSentryAttachmentWithData(Data, Filename, ContentType) end
---@param Array TArray<uint8>
---@return FString
function USentryLibrary:ByteArrayToString(Array) end


---@class USentrySamplingContext : UObject
local USentrySamplingContext = {}

---@return USentryTransactionContext
function USentrySamplingContext:GetTransactionContext() end
---@return TMap<FString, FString>
function USentrySamplingContext:GetCustomSamplingContext() end


---@class USentryScope : UObject
local USentryScope = {}

---@param Key FString
---@param Value FString
function USentryScope:SetTagValue(Key, Value) end
---@param Tags TMap<FString, FString>
function USentryScope:SetTags(Tags) end
---@param Level ESentryLevel
function USentryScope:SetLevel(Level) end
---@param Fingerprint TArray<FString>
function USentryScope:SetFingerprint(Fingerprint) end
---@param Key FString
---@param Value FString
function USentryScope:SetExtraValue(Key, Value) end
---@param Extras TMap<FString, FString>
function USentryScope:SetExtras(Extras) end
---@param Environment FString
function USentryScope:SetEnvironment(Environment) end
---@param Dist FString
function USentryScope:SetDist(Dist) end
---@param Key FString
---@param Values TMap<FString, FString>
function USentryScope:SetContext(Key, Values) end
---@param Key FString
function USentryScope:RemoveTag(Key) end
---@param Key FString
function USentryScope:RemoveExtra(Key) end
---@param Key FString
function USentryScope:RemoveContext(Key) end
---@param Key FString
---@return FString
function USentryScope:GetTagValue(Key) end
---@return TMap<FString, FString>
function USentryScope:GetTags() end
---@return ESentryLevel
function USentryScope:GetLevel() end
---@return TArray<FString>
function USentryScope:GetFingerprint() end
---@param Key FString
---@return FString
function USentryScope:GetExtraValue(Key) end
---@return TMap<FString, FString>
function USentryScope:GetExtras() end
---@return FString
function USentryScope:GetEnvironment() end
---@return FString
function USentryScope:GetDist() end
function USentryScope:ClearBreadcrumbs() end
function USentryScope:ClearAttachments() end
function USentryScope:Clear() end
---@param Breadcrumb USentryBreadcrumb
function USentryScope:AddBreadcrumb(Breadcrumb) end
---@param Attachment USentryAttachment
function USentryScope:AddAttachment(Attachment) end


---@class USentrySettings : UObject
---@field InitAutomatically boolean
---@field Dsn FString
---@field Debug boolean
---@field EnableAutoCrashCapturing boolean
---@field Environment FString
---@field SampleRate float
---@field EnableAutoLogAttachment boolean
---@field AttachStacktrace boolean
---@field SendDefaultPii boolean
---@field AttachScreenshot boolean
---@field MaxBreadcrumbs int32
---@field AutomaticBreadcrumbs FAutomaticBreadcrumbs
---@field AutomaticBreadcrumbsForLogs FAutomaticBreadcrumbsForLogs
---@field EnableAutoSessionTracking boolean
---@field SessionTimeout int32
---@field OverrideReleaseName boolean
---@field Release FString
---@field UseProxy boolean
---@field ProxyUrl FString
---@field BeforeSendHandler TSubclassOf<USentryBeforeSendHandler>
---@field InAppInclude TArray<FString>
---@field InAppExclude TArray<FString>
---@field EnableTracing boolean
---@field SamplingType ESentryTracesSamplingType
---@field TracesSampleRate float
---@field TracesSampler TSubclassOf<USentryTraceSampler>
---@field TagsPromotion FTagsPromotion
---@field EnableBuildConfigurations FEnableBuildConfigurations
---@field EnableBuildTargets FEnableBuildTargets
---@field EnableBuildPlatforms FEnableBuildPlatforms
---@field EnableForPromotedBuildsOnly boolean
---@field UploadSymbolsAutomatically boolean
---@field ProjectName FString
---@field OrgName FString
---@field AuthToken FString
---@field IncludeSources boolean
---@field CrashReporterUrl FString
local USentrySettings = {}



---@class USentrySpan : UObject
local USentrySpan = {}

---@param Key FString
---@param Value FString
function USentrySpan:SetTag(Key, Value) end
---@param Key FString
---@param Values TMap<FString, FString>
function USentrySpan:SetData(Key, Values) end
---@param Key FString
function USentrySpan:RemoveTag(Key) end
---@param Key FString
function USentrySpan:RemoveData(Key) end
---@return boolean
function USentrySpan:IsFinished() end
function USentrySpan:Finish() end


---@class USentrySubsystem : UEngineSubsystem
---@field BeforeSendHandler USentryBeforeSendHandler
---@field TraceSampler USentryTraceSampler
local USentrySubsystem = {}

---@param Context USentryTransactionContext
---@param Options TMap<FString, FString>
---@return USentryTransaction
function USentrySubsystem:StartTransactionWithContextAndOptions(Context, Options) end
---@param Context USentryTransactionContext
---@return USentryTransaction
function USentrySubsystem:StartTransactionWithContext(Context) end
---@param Name FString
---@param Operation FString
---@return USentryTransaction
function USentrySubsystem:StartTransaction(Name, Operation) end
function USentrySubsystem:StartSession() end
---@param User USentryUser
function USentrySubsystem:SetUser(User) end
---@param Key FString
---@param Value FString
function USentrySubsystem:SetTag(Key, Value) end
---@param Level ESentryLevel
function USentrySubsystem:SetLevel(Level) end
---@param Key FString
---@param Values TMap<FString, FString>
function USentrySubsystem:SetContext(Key, Values) end
function USentrySubsystem:RemoveUser() end
---@param Key FString
function USentrySubsystem:RemoveTag(Key) end
---@return boolean
function USentrySubsystem:IsSupportedForCurrentSettings() end
---@return boolean
function USentrySubsystem:IsEnabled() end
---@return ESentryCrashedLastRun
function USentrySubsystem:IsCrashedLastRun() end
---@param OnConfigureSettings FInitializeWithSettingsOnConfigureSettings
function USentrySubsystem:InitializeWithSettings(OnConfigureSettings) end
function USentrySubsystem:Initialize() end
function USentrySubsystem:EndSession() end
---@param OnConfigureScope FConfigureScopeOnConfigureScope
function USentrySubsystem:ConfigureScope(OnConfigureScope) end
function USentrySubsystem:Close() end
function USentrySubsystem:ClearBreadcrumbs() end
---@param EventId USentryId
---@param Email FString
---@param Comments FString
---@param Name FString
function USentrySubsystem:CaptureUserFeedbackWithParams(EventId, Email, Comments, Name) end
---@param UserFeedback USentryUserFeedback
function USentrySubsystem:CaptureUserFeedback(UserFeedback) end
---@param Message FString
---@param OnConfigureScope FCaptureMessageWithScopeOnConfigureScope
---@param Level ESentryLevel
---@return USentryId
function USentrySubsystem:CaptureMessageWithScope(Message, OnConfigureScope, Level) end
---@param Message FString
---@param Level ESentryLevel
---@return USentryId
function USentrySubsystem:CaptureMessage(Message, Level) end
---@param Event USentryEvent
---@param OnConfigureScope FCaptureEventWithScopeOnConfigureScope
---@return USentryId
function USentrySubsystem:CaptureEventWithScope(Event, OnConfigureScope) end
---@param Event USentryEvent
---@return USentryId
function USentrySubsystem:CaptureEvent(Event) end
---@param Message FString
---@param Category FString
---@param Type FString
---@param Data TMap<FString, FString>
---@param Level ESentryLevel
function USentrySubsystem:AddBreadcrumbWithParams(Message, Category, Type, Data, Level) end
---@param Breadcrumb USentryBreadcrumb
function USentrySubsystem:AddBreadcrumb(Breadcrumb) end


---@class USentryTraceSampler : UObject
local USentryTraceSampler = {}

---@param samplingContext USentrySamplingContext
---@param samplingValue float
---@return boolean
function USentryTraceSampler:Sample(samplingContext, samplingValue) end


---@class USentryTransaction : UObject
local USentryTransaction = {}

---@param Operation FString
---@param Description FString
---@return USentrySpan
function USentryTransaction:StartChild(Operation, Description) end
---@param Key FString
---@param Value FString
function USentryTransaction:SetTag(Key, Value) end
---@param Name FString
function USentryTransaction:SetName(Name) end
---@param Key FString
---@param Values TMap<FString, FString>
function USentryTransaction:SetData(Key, Values) end
---@param Key FString
function USentryTransaction:RemoveTag(Key) end
---@param Key FString
function USentryTransaction:RemoveData(Key) end
---@return boolean
function USentryTransaction:IsFinished() end
function USentryTransaction:Finish() end


---@class USentryTransactionContext : UObject
local USentryTransactionContext = {}

---@param Name FString
---@param Operation FString
function USentryTransactionContext:Initialize(Name, Operation) end
---@return FString
function USentryTransactionContext:GetOperation() end
---@return FString
function USentryTransactionContext:GetName() end


---@class USentryUser : UObject
local USentryUser = {}

---@param UserName FString
function USentryUser:SetUsername(UserName) end
---@param IpAddress FString
function USentryUser:SetIpAddress(IpAddress) end
---@param ID FString
function USentryUser:SetId(ID) end
---@param Email FString
function USentryUser:SetEmail(Email) end
---@param Data TMap<FString, FString>
function USentryUser:SetData(Data) end
---@return FString
function USentryUser:GetUsername() end
---@return FString
function USentryUser:GetIpAddress() end
---@return FString
function USentryUser:GetId() end
---@return FString
function USentryUser:GetEmail() end
---@return TMap<FString, FString>
function USentryUser:GetData() end


---@class USentryUserFeedback : UObject
local USentryUserFeedback = {}

---@param Name FString
function USentryUserFeedback:SetName(Name) end
---@param Email FString
function USentryUserFeedback:SetEmail(Email) end
---@param Comments FString
function USentryUserFeedback:SetComment(Comments) end
---@param EventId USentryId
function USentryUserFeedback:Initialize(EventId) end
---@return FString
function USentryUserFeedback:GetName() end
---@return FString
function USentryUserFeedback:GetEmail() end
---@return FString
function USentryUserFeedback:GetComment() end


