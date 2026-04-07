---@meta

---@class FSkinCustomMaterialData
---@field atlasCustomMaterials TArray<UMaterialInstanceDynamic>
local FSkinCustomMaterialData = {}



---@class FSpineAnimationStateMixData
---@field From FString
---@field To FString
---@field Mix float
local FSpineAnimationStateMixData = {}



---@class FSpineEvent
---@field Name FString
---@field StringValue FString
---@field IntValue int32
---@field FloatValue float
---@field Time float
local FSpineEvent = {}



---@class FSpineMeshSectionUpdateSettings
---@field bUpdateColorData boolean
---@field bUpdateUVData boolean
local FSpineMeshSectionUpdateSettings = {}



---@class USpineAtlasAsset : UObject
---@field atlasPages TArray<UTexture2D>
---@field rawData FString
---@field atlasFileName FName
local USpineAtlasAsset = {}



---@class USpineBoneDriverComponent : USceneComponent
---@field TargetBoneName FName
---@field UseComponentTransform boolean
---@field UsePosition boolean
---@field UseRotation boolean
---@field UseScale boolean
---@field bDriverEnabled boolean
---@field BoneName FString
local USpineBoneDriverComponent = {}

---@param bNewDriverEnable boolean
function USpineBoneDriverComponent:SetDriverEnable(bNewDriverEnable) end
---@return boolean
function USpineBoneDriverComponent:IsDriverEnabled() end


---@class USpineBoneFollowerComponent : USceneComponent
---@field TargetBoneName FName
---@field UsePosition boolean
---@field UseRotation boolean
---@field UseScale boolean
---@field bAllowLowPerformanceMode boolean
---@field TranslationEqualityTolerance float
---@field RotationEqualityTolerance float
---@field ScaleEqualityTolerance float
---@field MaxTimeBeforeForceUpdate float
---@field BoneName FString
---@field SpineSkeletonComponent USpineSkeletonComponent
local USpineBoneFollowerComponent = {}



---@class USpineSkeletonAnimationComponent : USpineSkeletonComponent
---@field PreviewAnimation FString
---@field PreviewSkin FString
---@field trackEntries TSet<UTrackEntry>
---@field bAutoPlaying boolean
local USpineSkeletonAnimationComponent = {}

---@param TimeScale float
function USpineSkeletonAnimationComponent:SetTimeScale(TimeScale) end
---@param InPlaybackTime float
---@param bCallDelegates boolean
function USpineSkeletonAnimationComponent:SetPlaybackTime(InPlaybackTime, bCallDelegates) end
---@param TrackIndex int32
---@param mixDuration float
---@return UTrackEntry
function USpineSkeletonAnimationComponent:SetEmptyAnimation(TrackIndex, mixDuration) end
---@param bInAutoPlays boolean
function USpineSkeletonAnimationComponent:SetAutoPlay(bInAutoPlays) end
---@param TrackIndex int32
---@param AnimationName FString
---@param Loop boolean
---@return UTrackEntry
function USpineSkeletonAnimationComponent:SetAnimation(TrackIndex, AnimationName, Loop) end
---@param Tag FName
function USpineSkeletonAnimationComponent:RemoveTimeScaleFactor(Tag) end
---@return float
function USpineSkeletonAnimationComponent:GetTimeScale() end
---@param TrackIndex int32
---@return UTrackEntry
function USpineSkeletonAnimationComponent:GetCurrent(TrackIndex) end
function USpineSkeletonAnimationComponent:ClearTracks() end
---@param TrackIndex int32
function USpineSkeletonAnimationComponent:ClearTrack(TrackIndex) end
---@param TimeScale float
---@param Tag FName
function USpineSkeletonAnimationComponent:AddTimeScaleFactor(TimeScale, Tag) end
---@param TrackIndex int32
---@param mixDuration float
---@param Delay float
---@return UTrackEntry
function USpineSkeletonAnimationComponent:AddEmptyAnimation(TrackIndex, mixDuration, Delay) end
---@param TrackIndex int32
---@param AnimationName FString
---@param Loop boolean
---@param Delay float
---@return UTrackEntry
function USpineSkeletonAnimationComponent:AddAnimation(TrackIndex, AnimationName, Loop, Delay) end


---@class USpineSkeletonComponent : UActorComponent
---@field Atlas USpineAtlasAsset
---@field SkeletonData USpineSkeletonDataAsset
---@field RendererComponent USpineSkeletonRendererComponent
local USpineSkeletonComponent = {}

function USpineSkeletonComponent:UpdateWorldTransform() end
function USpineSkeletonComponent:SetToSetupPose() end
function USpineSkeletonComponent:SetSlotsToSetupPose() end
---@param SlotName FString
---@param Color FColor
function USpineSkeletonComponent:SetSlotColor(SlotName, Color) end
---@param SkinNames TArray<FString>
---@return boolean
function USpineSkeletonComponent:SetSkins(SkinNames) end
---@param SkinName FString
---@return boolean
function USpineSkeletonComponent:SetSkin(SkinName) end
---@param ScaleY float
function USpineSkeletonComponent:SetScaleY(ScaleY) end
---@param ScaleX float
function USpineSkeletonComponent:SetScaleX(ScaleX) end
---@param IKConstraintBaseName FString
---@param Mix float
function USpineSkeletonComponent:SetIKConstraintsMix(IKConstraintBaseName, Mix) end
---@param IKConstraintName FString
---@param Mix float
function USpineSkeletonComponent:SetIKConstraintMix(IKConstraintName, Mix) end
---@param BoneName FName
---@param Rotation FQuat
function USpineSkeletonComponent:SetBoneWorldRotation(BoneName, Rotation) end
---@param BoneName FName
---@param Position FVector
function USpineSkeletonComponent:SetBoneWorldPosition(BoneName, Position) end
function USpineSkeletonComponent:SetBonesToSetupPose() end
---@param SlotName FString
---@param attachmentName FString
---@return boolean
function USpineSkeletonComponent:SetAttachment(SlotName, attachmentName) end
---@param SlotName FString
---@return boolean
function USpineSkeletonComponent:HasSlot(SlotName) end
---@param SkinName FString
---@return boolean
function USpineSkeletonComponent:HasSkin(SkinName) end
---@param BoneName FString
---@return boolean
function USpineSkeletonComponent:HasBone(BoneName) end
---@param AnimationName FString
---@return boolean
function USpineSkeletonComponent:HasAnimation(AnimationName) end
---@param Slots TArray<FString>
function USpineSkeletonComponent:GetSlots(Slots) end
---@param Skins TArray<FString>
function USpineSkeletonComponent:GetSkins(Skins) end
---@return float
function USpineSkeletonComponent:GetScaleY() end
---@return float
function USpineSkeletonComponent:GetScaleX() end
---@param RootMotionID int32
---@return FVector2D
function USpineSkeletonComponent:GetRootMotionDelta(RootMotionID) end
---@param IKConstraintName FString
---@return float
function USpineSkeletonComponent:GetIKConstraintMix(IKConstraintName) end
---@param BoneName FName
---@return FTransform
function USpineSkeletonComponent:GetBoneWorldTransform(BoneName) end
---@param Bones TArray<FString>
function USpineSkeletonComponent:GetBones(Bones) end
---@param Animations TArray<FString>
function USpineSkeletonComponent:GetAnimations(Animations) end
---@param AnimationName FString
---@return float
function USpineSkeletonComponent:getAnimationDuration(AnimationName) end


---@class USpineSkeletonDataAsset : UObject
---@field MeshUpdateSettings FSpineMeshSectionUpdateSettings
---@field ScaleFactor float
---@field DefaultMix float
---@field MixData TArray<FSpineAnimationStateMixData>
---@field DefaultSkins TArray<FString>
---@field BreakSkins TArray<FString>
---@field FootIKAnimations TArray<FString>
---@field Bones TArray<FString>
---@field Slots TArray<FString>
---@field Skins TArray<FString>
---@field Animations TArray<FString>
---@field Events TArray<FString>
---@field rawData TArray<uint8>
---@field skeletonDataFileName FName
local USpineSkeletonDataAsset = {}



---@class USpineSkeletonRendererComponent : USpineMeshComponent
---@field NormalBlendMaterial UMaterialInterface
---@field AdditiveBlendMaterial UMaterialInterface
---@field MultiplyBlendMaterial UMaterialInterface
---@field ScreenBlendMaterial UMaterialInterface
---@field atlasNormalBlendMaterials TArray<UMaterialInstanceDynamic>
---@field atlasAdditiveBlendMaterials TArray<UMaterialInstanceDynamic>
---@field atlasMultiplyBlendMaterials TArray<UMaterialInstanceDynamic>
---@field atlasScreenBlendMaterials TArray<UMaterialInstanceDynamic>
---@field DepthOffset float
---@field bInvertDepthOffsetWithRotation boolean
---@field DefaultForwardForDepthOffset FVector
---@field TextureParameterName FName
---@field Color FLinearColor
---@field MaterialParamScalars TMap<FName, float>
---@field MaterialParamVectors TMap<FName, FLinearColor>
---@field MaterialParamTextures TMap<FName, UTexture>
---@field SkinsCustomMaterials TMap<FString, FSkinCustomMaterialData>
---@field MaterialForSections TMap<int32, UMaterialInterface>
---@field SpineSkeletonComponent USpineSkeletonComponent
local USpineSkeletonRendererComponent = {}

---@param ParameterName FName
---@param Value FLinearColor
function USpineSkeletonRendererComponent:SetVectorParameterValue(ParameterName, Value) end
---@param ParameterName FName
---@param Value UTexture
function USpineSkeletonRendererComponent:SetTextureParameterValue(ParameterName, Value) end
---@param SkinNames TArray<FString>
---@param ParameterName FName
---@param Value FLinearColor
function USpineSkeletonRendererComponent:SetSkinsCustomMaterialVectorParameterValue(SkinNames, ParameterName, Value) end
---@param SkinNames TArray<FString>
---@param ParameterName FName
---@param Value UTexture
function USpineSkeletonRendererComponent:SetSkinsCustomMaterialTextureParameterValue(SkinNames, ParameterName, Value) end
---@param SkinNames TArray<FString>
---@param ParameterName FName
---@param Value float
function USpineSkeletonRendererComponent:SetSkinsCustomMaterialScalarParameterValue(SkinNames, ParameterName, Value) end
---@param ParameterName FName
---@param Value float
function USpineSkeletonRendererComponent:SetScalarParameterValue(ParameterName, Value) end
---@param SkinNames TArray<FString>
function USpineSkeletonRendererComponent:RemoveCustomMaterialToSkins(SkinNames) end
---@param SkinNames TArray<FString>
---@param CustomMaterial UMaterialInterface
function USpineSkeletonRendererComponent:AddCustomMaterialToSkins(SkinNames, CustomMaterial) end


---@class USpineWidget : UWidget
---@field InitialSkin FString
---@field Atlas USpineAtlasAsset
---@field SkeletonData USpineSkeletonDataAsset
---@field NormalBlendMaterial UMaterialInterface
---@field AdditiveBlendMaterial UMaterialInterface
---@field MultiplyBlendMaterial UMaterialInterface
---@field ScreenBlendMaterial UMaterialInterface
---@field TextureParameterName FName
---@field DepthOffset float
---@field Color FLinearColor
---@field Brush FSlateBrush
---@field RenderMode ESpineWidgetRenderMode
---@field BeforeUpdateWorldTransform FSpineWidgetBeforeUpdateWorldTransform
---@field AfterUpdateWorldTransform FSpineWidgetAfterUpdateWorldTransform
---@field atlasNormalBlendMaterials TArray<UMaterialInstanceDynamic>
---@field atlasAdditiveBlendMaterials TArray<UMaterialInstanceDynamic>
---@field atlasMultiplyBlendMaterials TArray<UMaterialInstanceDynamic>
---@field atlasScreenBlendMaterials TArray<UMaterialInstanceDynamic>
---@field trackEntries TSet<UTrackEntry>
---@field bAutoPlaying boolean
---@field FullyLoadTextureFlags TMap<TWeakObjectPtr<UTexture2D>, boolean>
local USpineWidget = {}

function USpineWidget:UpdateWorldTransform() end
---@param DeltaTime float
---@param CallDelegates boolean
function USpineWidget:Tick(DeltaTime, CallDelegates) end
function USpineWidget:SetToSetupPose() end
---@param TimeScale float
function USpineWidget:SetTimeScale(TimeScale) end
function USpineWidget:SetSlotsToSetupPose() end
---@param SkinNames TArray<FString>
---@return boolean
function USpineWidget:SetSkins(SkinNames) end
---@param SkinName FString
---@return boolean
function USpineWidget:SetSkin(SkinName) end
---@param ScaleY float
function USpineWidget:SetScaleY(ScaleY) end
---@param ScaleX float
function USpineWidget:SetScaleX(ScaleX) end
---@param InPlaybackTime float
---@param bCallDelegates boolean
function USpineWidget:SetPlaybackTime(InPlaybackTime, bCallDelegates) end
---@param TrackIndex int32
---@param mixDuration float
---@return UTrackEntry
function USpineWidget:SetEmptyAnimation(TrackIndex, mixDuration) end
function USpineWidget:SetBonesToSetupPose() end
---@param bInAutoPlays boolean
function USpineWidget:SetAutoPlay(bInAutoPlays) end
---@param SlotName FString
---@param attachmentName FString
---@return boolean
function USpineWidget:SetAttachment(SlotName, attachmentName) end
---@param TrackIndex int32
---@param AnimationName FString
---@param Loop boolean
---@return UTrackEntry
function USpineWidget:SetAnimation(TrackIndex, AnimationName, Loop) end
function USpineWidget:RevertFullyLoadAtlasTextures() end
---@param NewAtlas USpineAtlasAsset
---@param NewSkeletonData USpineSkeletonDataAsset
function USpineWidget:ReplaceSpineData(NewAtlas, NewSkeletonData) end
---@param SlotName FString
---@return boolean
function USpineWidget:HasSlot(SlotName) end
---@param SkinName FString
---@return boolean
function USpineWidget:HasSkin(SkinName) end
---@param BoneName FString
---@return boolean
function USpineWidget:HasBone(BoneName) end
---@param AnimationName FString
---@return boolean
function USpineWidget:HasAnimation(AnimationName) end
---@return float
function USpineWidget:GetTimeScale() end
---@param Slots TArray<FString>
function USpineWidget:GetSlots(Slots) end
---@param Skins TArray<FString>
function USpineWidget:GetSkins(Skins) end
---@return float
function USpineWidget:GetScaleY() end
---@return float
function USpineWidget:GetScaleX() end
---@param TrackIndex int32
---@return UTrackEntry
function USpineWidget:GetCurrent(TrackIndex) end
---@return FVector
function USpineWidget:GetBoundsSize() end
---@return FVector
function USpineWidget:GetBoundsMin() end
---@param BoneName FString
---@return FTransform
function USpineWidget:GetBoneTransform(BoneName) end
---@param Bones TArray<FString>
function USpineWidget:GetBones(Bones) end
---@param Animations TArray<FString>
function USpineWidget:GetAnimations(Animations) end
---@param AnimationName FString
---@return float
function USpineWidget:getAnimationDuration(AnimationName) end
function USpineWidget:ForceFullyLoadAtlasTextures() end
function USpineWidget:ClearTracks() end
---@param TrackIndex int32
function USpineWidget:ClearTrack(TrackIndex) end
---@param TrackIndex int32
---@param mixDuration float
---@param Delay float
---@return UTrackEntry
function USpineWidget:AddEmptyAnimation(TrackIndex, mixDuration, Delay) end
---@param TrackIndex int32
---@param AnimationName FString
---@param Loop boolean
---@param Delay float
---@return UTrackEntry
function USpineWidget:AddAnimation(TrackIndex, AnimationName, Loop, Delay) end


---@class UTrackEntry : UObject
local UTrackEntry = {}

---@param trackTime float
function UTrackEntry:SetTrackTime(trackTime) end
---@param trackEnd float
function UTrackEntry:SetTrackEnd(trackEnd) end
---@param TimeScale float
function UTrackEntry:SetTimeScale(TimeScale) end
---@param RootMotionID int32
function UTrackEntry:SetRootMotionID(RootMotionID) end
---@param mixTime float
function UTrackEntry:SetMixTime(mixTime) end
---@param mixDuration float
function UTrackEntry:SetMixDuration(mixDuration) end
---@param Loop boolean
function UTrackEntry:SetLoop(Loop) end
---@param eventThreshold float
function UTrackEntry:SetEventThreshold(eventThreshold) end
---@param drawOrderThreshold float
function UTrackEntry:SetDrawOrderThreshold(drawOrderThreshold) end
---@param Delay float
function UTrackEntry:SetDelay(Delay) end
---@param attachmentThreshold float
function UTrackEntry:SetAttachmentThreshold(attachmentThreshold) end
---@param animationStart float
function UTrackEntry:SetAnimationStart(animationStart) end
---@param animationLast float
function UTrackEntry:SetAnimationLast(animationLast) end
---@param animationEnd float
function UTrackEntry:SetAnimationEnd(animationEnd) end
---@param Alpha float
function UTrackEntry:SetAlpha(Alpha) end
---@return boolean
function UTrackEntry:isValidAnimation() end
---@return float
function UTrackEntry:GetTrackTime() end
---@return int32
function UTrackEntry:GetTrackIndex() end
---@return float
function UTrackEntry:GetTrackEnd() end
---@return float
function UTrackEntry:GetTimeScale() end
---@return float
function UTrackEntry:GetMixTime() end
---@return float
function UTrackEntry:GetMixDuration() end
---@return boolean
function UTrackEntry:GetLoop() end
---@return float
function UTrackEntry:GetEventThreshold() end
---@return float
function UTrackEntry:GetDrawOrderThreshold() end
---@return float
function UTrackEntry:GetDelay() end
---@return float
function UTrackEntry:GetAttachmentThreshold() end
---@return boolean
function UTrackEntry:GetApplyRootMotion() end
---@return float
function UTrackEntry:getAnimationTime() end
---@return float
function UTrackEntry:GetAnimationStart() end
---@return float
function UTrackEntry:getAnimationOriginalDuration() end
---@return FString
function UTrackEntry:getAnimationName() end
---@return float
function UTrackEntry:GetAnimationLast() end
---@return float
function UTrackEntry:GetAnimationEnd() end
---@return float
function UTrackEntry:getAnimationDuration() end
---@return float
function UTrackEntry:GetAlpha() end


