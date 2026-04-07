---@meta

---@class FRootMotionFinishVelocitySettingsBP
---@field Mode ERootMotionFinishVelocityMode
---@field SetVelocity FVector
---@field ClampVelocity float
local FRootMotionFinishVelocitySettingsBP = {}



---@class FRootMotionSettings
---@field FinishSettings FRootMotionFinishVelocitySettingsBP
local FRootMotionSettings = {}



---@class FSpineFXData
---@field System UNiagaraSystem
---@field SpawnBone ESpineBone
---@field SpawnBoneCustomName FName
---@field RotationMode ESpineBoneRotationMode
---@field bIgnoreScale boolean
---@field bAttachToBone boolean
---@field LocalSpaceOffset FTransform
---@field WorldSpaceOffset FTransform
---@field bMirrorWhenFacingLeft boolean
---@field bRenderLayerOverride boolean
---@field RenderLayer ERenderLayerTypes
---@field bTranslucencyOffsetOverride boolean
---@field TranslucencyOffset int32
---@field AttachLocationType EAttachLocation::Type
---@field bDeactivateOnCommandAbort boolean
---@field IsPlayerEffect boolean
---@field PoolMethod ENCPoolMethod
local FSpineFXData = {}



---@class USpineAnimInstance : UObject
---@field SpineAnimationComponent USpineSkeletonAnimationComponent
---@field SourceSequence USpineAnimSequence
local USpineAnimInstance = {}



---@class USpineAnimNotify : UAnimNotify
local USpineAnimNotify = {}

---@param SpineAnimationComponent USpineSkeletonAnimationComponent
---@return boolean
function USpineAnimNotify:Received_SpineNotify(SpineAnimationComponent) end


---@class USpineAnimNotifyState : UAnimNotifyState
local USpineAnimNotifyState = {}

---@param SpineAnimationComponent USpineSkeletonAnimationComponent
---@param DeltaTime float
---@return boolean
function USpineAnimNotifyState:Received_SpineNotifyTick(SpineAnimationComponent, DeltaTime) end
---@param SpineAnimationComponent USpineSkeletonAnimationComponent
---@return boolean
function USpineAnimNotifyState:Received_SpineNotifyEnd(SpineAnimationComponent) end
---@param SpineAnimationComponent USpineSkeletonAnimationComponent
---@param TotalDuration float
---@return boolean
function USpineAnimNotifyState:Received_SpineNotifyBegin(SpineAnimationComponent, TotalDuration) end
---@return boolean
function USpineAnimNotifyState:IsExecuting() end
---@return float
function USpineAnimNotifyState:GetExecutionTime() end
---@return float
function USpineAnimNotifyState:GetExecutionRatio() end


---@class USpineAnimNotifyState_TimedFX : USpineAnimNotifyState
---@field FXData FSpineFXData
local USpineAnimNotifyState_TimedFX = {}

---@param FX UNiagaraComponent
function USpineAnimNotifyState_TimedFX:CustomizeFX(FX) end


---@class USpineAnimNotify_PlayFX : USpineAnimNotify
---@field FXData FSpineFXData
local USpineAnimNotify_PlayFX = {}

---@param FX UNiagaraComponent
function USpineAnimNotify_PlayFX:CustomizeFX(FX) end


---@class USpineAnimSequence : UAnimSequenceBase
local USpineAnimSequence = {}


---@class USpineBPFLibrary : UBlueprintFunctionLibrary
local USpineBPFLibrary = {}

---@param FXData FSpineFXData
---@param Actor AActor
---@param BoneComponent USpineBoneComponent
---@return UNiagaraComponent
function USpineBPFLibrary:SpawnFXData(FXData, Actor, BoneComponent) end
---@param FXComponent UNiagaraComponent
function USpineBPFLibrary:MarkFXAsGenerated(FXComponent) end
---@param SkeletonDataAsset USpineSkeletonDataAsset
---@param AtlasAsset USpineAtlasAsset
---@return TArray<FString>
function USpineBPFLibrary:GenerateSkinList(SkeletonDataAsset, AtlasAsset) end
---@param SkeletonDataAsset USpineSkeletonDataAsset
---@param AtlasAsset USpineAtlasAsset
---@return TArray<FString>
function USpineBPFLibrary:GenerateAnimationList(SkeletonDataAsset, AtlasAsset) end


---@class USpineBoneComponent : UActorComponent
---@field DefaultBone ESpineBone
---@field DefaultCustomBoneName FName
---@field OverrideBoneNames TMap<ESpineBone, FName>
---@field BoneFollowers TMap<FName, USceneComponent>
---@field BoneFollowers_NoRotation TMap<FName, USceneComponent>
local USpineBoneComponent = {}



---@class USpineFXComponent : UActorComponent
local USpineFXComponent = {}

---@param FXDataList TArray<FSpineFXData>
---@param out_FXInstances TArray<UNiagaraComponent>
function USpineFXComponent:SpawnFXs(FXDataList, out_FXInstances) end
---@param FXData FSpineFXData
---@return UNiagaraComponent
function USpineFXComponent:SpawnFX(FXData) end
---@param FX UNiagaraComponent
function USpineFXComponent:OnFXSystemEnd(FX) end


---@class USpineNotifyAsset : UObject
---@field AnimSequencePerAnims TMap<FString, USpineAnimSequence>
local USpineNotifyAsset = {}



---@class USpineRootMotionComponent : UActorComponent
local USpineRootMotionComponent = {}

---@param TrackEntry UTrackEntry
function USpineRootMotionComponent:OnAnyAnimationStart(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineRootMotionComponent:OnAnyAnimationInterrupt(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineRootMotionComponent:OnAnyAnimationDispose(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineRootMotionComponent:OnAnyAnimationComplete(TrackEntry) end
---@param Skeleton USpineSkeletonComponent
function USpineRootMotionComponent:OnAfterUpdateWorldTransform(Skeleton) end


---@class USpineSkeletonAnimationExComponent : USpineSkeletonAnimationComponent
---@field NotifyData USpineNotifyAsset
---@field LastAnimInstances TArray<USpineAnimInstance>
---@field AnimInstanceForAnimations TMap<uint32, USpineAnimInstance>
local USpineSkeletonAnimationExComponent = {}

---@param InPlaybackTime float
---@param bCallDelegates boolean
function USpineSkeletonAnimationExComponent:SetPlaybackTimeIgnoreTimescale(InPlaybackTime, bCallDelegates) end
---@param NewAtlas USpineAtlasAsset
---@param NewSkeletonData USpineSkeletonDataAsset
---@param NewNotifyAsset USpineNotifyAsset
function USpineSkeletonAnimationExComponent:ReplaceSpineData(NewAtlas, NewSkeletonData, NewNotifyAsset) end
---@param Entry UTrackEntry
function USpineSkeletonAnimationExComponent:OnAnimationStart(Entry) end


