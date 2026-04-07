---@meta

---@class AGameplayCameraActor : AActor
---@field SceneComponent USceneComponent
---@field CameraComponent UGameplayCameraComponent
local AGameplayCameraActor = {}

---@return USceneComponent
function AGameplayCameraActor:GetSceneComponent() end
---@return UGameplayCameraComponent
function AGameplayCameraActor:GetCameraComponent() end


---@class AGameplayCameraSystemActor : AActor
---@field CameraSystemComponent UGameplayCameraSystemComponent
---@field AutoActivateForPlayer EAutoReceiveInput::Type
local AGameplayCameraSystemActor = {}

---@return UGameplayCameraSystemComponent
function AGameplayCameraSystemActor:GetCameraSystemComponent() end
---@param PlayerIndex int32
function AGameplayCameraSystemActor:ActivateForPlayer(PlayerIndex) end


---@class FActiveCameraAnimationInfo
---@field Sequence UCameraAnimationSequence
---@field Params FCameraAnimationParams
---@field Handle FCameraAnimationHandle
---@field Player UCameraAnimationSequencePlayer
---@field CameraStandIn UCameraAnimationSequenceCameraStandIn
---@field EaseInCurrentTime float
---@field EaseOutCurrentTime float
---@field bIsEasingIn boolean
---@field bIsEasingOut boolean
local FActiveCameraAnimationInfo = {}



---@class FCameraAnimationHandle
local FCameraAnimationHandle = {}


---@class FCameraAnimationParams
---@field PlayRate float
---@field Scale float
---@field EaseInType ECameraAnimationEasingType
---@field EaseInDuration float
---@field EaseOutType ECameraAnimationEasingType
---@field EaseOutDuration float
---@field bLoop boolean
---@field StartOffset int32
---@field bRandomStartTime boolean
---@field DurationOverride float
---@field PlaySpace ECameraAnimationPlaySpace
---@field UserPlaySpaceRot FRotator
local FCameraAnimationParams = {}



---@class FCameraModeTransition
---@field Conditions TArray<UCameraModeTransitionCondition>
---@field Blend UBlendCameraNode
local FCameraModeTransition = {}



---@class FCameraPose
---@field Location FVector3d
---@field Rotation FRotator3d
---@field TargetDistance double
---@field FieldOfView float
---@field AspectRatio float
---@field FocalLength float
---@field Aperture float
---@field FocusDistance float
---@field SensorWidth float
---@field SensorHeight float
---@field SqueezeFactor float
---@field NearClippingPlane float
---@field FarClippingPlane float
---@field bConstrainAspectRatio boolean
local FCameraPose = {}



---@class FFOscillator
---@field Amplitude float
---@field Frequency float
---@field InitialOffset EInitialOscillatorOffset
---@field Waveform EOscillatorWaveform
local FFOscillator = {}



---@class FPerlinNoiseShaker
---@field Amplitude float
---@field Frequency float
local FPerlinNoiseShaker = {}



---@class FROscillator
---@field Pitch FFOscillator
---@field Yaw FFOscillator
---@field Roll FFOscillator
local FROscillator = {}



---@class FVOscillator
---@field X FFOscillator
---@field Y FFOscillator
---@field Z FFOscillator
local FVOscillator = {}



---@class FWaveOscillator
---@field Amplitude float
---@field Frequency float
---@field InitialOffsetType EInitialWaveOscillatorOffsetType
local FWaveOscillator = {}



---@class UArrayCameraNode : UCameraNode
---@field Children TArray<UCameraNode>
local UArrayCameraNode = {}



---@class UBlendCameraNode : UCameraNode
local UBlendCameraNode = {}


---@class UBlendStackCameraNode : UCameraNode
---@field bAutoPop boolean
---@field bBlendFirstCameraMode boolean
local UBlendStackCameraNode = {}



---@class UBlendStackRootCameraNode : UCameraNode
---@field Blend UBlendCameraNode
---@field RootNode UCameraNode
local UBlendStackRootCameraNode = {}



---@class UCameraAnimationCameraModifier : UCameraModifier
---@field ActiveAnimations TArray<FActiveCameraAnimationInfo>
---@field NextInstanceSerialNumber uint16
local UCameraAnimationCameraModifier = {}

---@param Handle FCameraAnimationHandle
---@param bImmediate boolean
function UCameraAnimationCameraModifier:StopCameraAnimation(Handle, bImmediate) end
---@param Sequence UCameraAnimationSequence
---@param bImmediate boolean
function UCameraAnimationCameraModifier:StopAllCameraAnimationsOf(Sequence, bImmediate) end
---@param bImmediate boolean
function UCameraAnimationCameraModifier:StopAllCameraAnimations(bImmediate) end
---@param Sequence UCameraAnimationSequence
---@param Params FCameraAnimationParams
---@return FCameraAnimationHandle
function UCameraAnimationCameraModifier:PlayCameraAnimation(Sequence, Params) end
---@param Handle FCameraAnimationHandle
---@return boolean
function UCameraAnimationCameraModifier:IsCameraAnimationActive(Handle) end
---@param PlayerController APlayerController
---@return UCameraAnimationCameraModifier
function UCameraAnimationCameraModifier:GetCameraAnimationCameraModifierFromPlayerController(PlayerController) end
---@param WorldContextObject UObject
---@param ControllerId int32
---@return UCameraAnimationCameraModifier
function UCameraAnimationCameraModifier:GetCameraAnimationCameraModifierFromID(WorldContextObject, ControllerId) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@return UCameraAnimationCameraModifier
function UCameraAnimationCameraModifier:GetCameraAnimationCameraModifier(WorldContextObject, PlayerIndex) end


---@class UCameraAsset : UObject
---@field CameraDirector UCameraDirector
---@field EnterTransitions TArray<FCameraModeTransition>
---@field ExitTransitions TArray<FCameraModeTransition>
local UCameraAsset = {}



---@class UCameraDirector : UObject
local UCameraDirector = {}


---@class UCameraEvaluationContext : UObject
---@field CameraAsset UCameraAsset
local UCameraEvaluationContext = {}



---@class UCameraInstantiableObject : UObject
local UCameraInstantiableObject = {}


---@class UCameraMode : UObject
---@field RootNode UCameraNode
---@field EnterTransitions TArray<FCameraModeTransition>
---@field ExitTransitions TArray<FCameraModeTransition>
local UCameraMode = {}



---@class UCameraModeTransitionCondition : UObject
local UCameraModeTransitionCondition = {}


---@class UCameraNode : UCameraInstantiableObject
---@field bIsEnabled boolean
local UCameraNode = {}



---@class UCameraSystemEvaluator : UObject
---@field RootNode URootCameraNode
local UCameraSystemEvaluator = {}



---@class UCompositeCameraShakePattern : UCameraShakePattern
---@field ChildPatterns TArray<UCameraShakePattern>
local UCompositeCameraShakePattern = {}



---@class UConstantCameraShakePattern : USimpleCameraShakePattern
---@field LocationOffset FVector
---@field RotationOffset FRotator
local UConstantCameraShakePattern = {}



---@class UDefaultCameraShakeBase : UCameraShakeBase
local UDefaultCameraShakeBase = {}


---@class UDefaultRootCameraNode : URootCameraNode
---@field BaseLayer UCameraNode
---@field MainLayer UCameraNode
---@field GlobalLayer UCameraNode
---@field VisualLayer UCameraNode
local UDefaultRootCameraNode = {}



---@class UGameplayCameraComponent : USceneComponent
---@field Camera UCameraAsset
---@field EvaluationContext UGameplayCameraComponentEvaluationContext
local UGameplayCameraComponent = {}

---@param PlayerIndex int32
function UGameplayCameraComponent:ActivateCamera(PlayerIndex) end


---@class UGameplayCameraComponentEvaluationContext : UCameraEvaluationContext
local UGameplayCameraComponentEvaluationContext = {}


---@class UGameplayCameraSystemComponent : USceneComponent
---@field Evaluator UCameraSystemEvaluator
local UGameplayCameraSystemComponent = {}

---@return UCameraSystemEvaluator
function UGameplayCameraSystemComponent:GetCameraSystemEvaluator() end


---@class UGameplayCamerasFunctionLibrary : UBlueprintFunctionLibrary
local UGameplayCamerasFunctionLibrary = {}

---@param CameraAnimationPlaySpace ECameraAnimationPlaySpace
---@return ECameraShakePlaySpace
function UGameplayCamerasFunctionLibrary:Conv_CameraShakePlaySpace(CameraAnimationPlaySpace) end
---@param CameraShakePlaySpace ECameraShakePlaySpace
---@return ECameraAnimationPlaySpace
function UGameplayCamerasFunctionLibrary:Conv_CameraAnimationPlaySpace(CameraShakePlaySpace) end
---@param PlayerCameraManager APlayerCameraManager
---@return UCameraAnimationCameraModifier
function UGameplayCamerasFunctionLibrary:Conv_CameraAnimationCameraModifier(PlayerCameraManager) end


---@class UGameplayCamerasSubsystem : UWorldSubsystem
local UGameplayCamerasSubsystem = {}

---@param PlayerController APlayerController
---@param Handle FCameraAnimationHandle
---@param bImmediate boolean
function UGameplayCamerasSubsystem:StopCameraAnimation(PlayerController, Handle, bImmediate) end
---@param PlayerController APlayerController
---@param Sequence UCameraAnimationSequence
---@param bImmediate boolean
function UGameplayCamerasSubsystem:StopAllCameraAnimationsOf(PlayerController, Sequence, bImmediate) end
---@param PlayerController APlayerController
---@param bImmediate boolean
function UGameplayCamerasSubsystem:StopAllCameraAnimations(PlayerController, bImmediate) end
---@param PlayerController APlayerController
---@param Sequence UCameraAnimationSequence
---@param Params FCameraAnimationParams
---@return FCameraAnimationHandle
function UGameplayCamerasSubsystem:PlayCameraAnimation(PlayerController, Sequence, Params) end
---@param PlayerController APlayerController
---@param Handle FCameraAnimationHandle
---@return boolean
function UGameplayCamerasSubsystem:IsCameraAnimationActive(PlayerController, Handle) end


---@class ULegacyCameraShake : UCameraShakeBase
---@field OscillationDuration float
---@field OscillationBlendInTime float
---@field OscillationBlendOutTime float
---@field RotOscillation FROscillator
---@field LocOscillation FVOscillator
---@field FOVOscillation FFOscillator
---@field AnimPlayRate float
---@field AnimScale float
---@field AnimBlendInTime float
---@field AnimBlendOutTime float
---@field RandomAnimSegmentDuration float
---@field AnimSequence UCameraAnimationSequence
---@field bRandomAnimSegment boolean
---@field OscillatorTimeRemaining float
---@field SequenceShakePattern USequenceCameraShakePattern
local ULegacyCameraShake = {}

---@param PlayerCameraManager APlayerCameraManager
---@param ShakeClass TSubclassOf<ULegacyCameraShake>
---@param SourceComponent UCameraShakeSourceComponent
---@param Scale float
---@param PlaySpace ECameraShakePlaySpace
---@param UserPlaySpaceRot FRotator
---@return ULegacyCameraShake
function ULegacyCameraShake:StartLegacyCameraShakeFromSource(PlayerCameraManager, ShakeClass, SourceComponent, Scale, PlaySpace, UserPlaySpaceRot) end
---@param PlayerCameraManager APlayerCameraManager
---@param ShakeClass TSubclassOf<ULegacyCameraShake>
---@param Scale float
---@param PlaySpace ECameraShakePlaySpace
---@param UserPlaySpaceRot FRotator
---@return ULegacyCameraShake
function ULegacyCameraShake:StartLegacyCameraShake(PlayerCameraManager, ShakeClass, Scale, PlaySpace, UserPlaySpaceRot) end
---@param bImmediately boolean
function ULegacyCameraShake:ReceiveStopShake(bImmediately) end
---@param Scale float
function ULegacyCameraShake:ReceivePlayShake(Scale) end
---@return boolean
function ULegacyCameraShake:ReceiveIsFinished() end
---@param DeltaTime float
---@param Alpha float
---@param POV FMinimalViewInfo
---@param ModifiedPOV FMinimalViewInfo
function ULegacyCameraShake:BlueprintUpdateCameraShake(DeltaTime, Alpha, POV, ModifiedPOV) end


---@class ULegacyCameraShakeFunctionLibrary : UBlueprintFunctionLibrary
local ULegacyCameraShakeFunctionLibrary = {}

---@param CameraShake UCameraShakeBase
---@return ULegacyCameraShake
function ULegacyCameraShakeFunctionLibrary:Conv_LegacyCameraShake(CameraShake) end


---@class ULegacyCameraShakePattern : UCameraShakePattern
local ULegacyCameraShakePattern = {}


---@class ULinearBlendCameraNode : USimpleFixedTimeBlendCameraNode
local ULinearBlendCameraNode = {}


---@class UOffsetCameraNode : UCameraNode
---@field Offset FVector3d
local UOffsetCameraNode = {}



---@class UPerlinNoiseCameraShakePattern : USimpleCameraShakePattern
---@field LocationAmplitudeMultiplier float
---@field LocationFrequencyMultiplier float
---@field X FPerlinNoiseShaker
---@field Y FPerlinNoiseShaker
---@field Z FPerlinNoiseShaker
---@field RotationAmplitudeMultiplier float
---@field RotationFrequencyMultiplier float
---@field Pitch FPerlinNoiseShaker
---@field Yaw FPerlinNoiseShaker
---@field Roll FPerlinNoiseShaker
---@field FOV FPerlinNoiseShaker
local UPerlinNoiseCameraShakePattern = {}



---@class UPopBlendCameraNode : UBlendCameraNode
local UPopBlendCameraNode = {}


---@class URootCameraNode : UCameraNode
local URootCameraNode = {}


---@class USimpleBlendCameraNode : UBlendCameraNode
local USimpleBlendCameraNode = {}


---@class USimpleCameraShakePattern : UCameraShakePattern
---@field Duration float
---@field BlendInTime float
---@field BlendOutTime float
local USimpleCameraShakePattern = {}



---@class USimpleFixedTimeBlendCameraNode : USimpleBlendCameraNode
---@field BlendTime float
local USimpleFixedTimeBlendCameraNode = {}



---@class USingleCameraDirector : UCameraDirector
---@field CameraMode UCameraMode
local USingleCameraDirector = {}



---@class USmoothBlendCameraNode : USimpleFixedTimeBlendCameraNode
---@field BlendType ESmoothCameraBlendType
local USmoothBlendCameraNode = {}



---@class UTestCameraShake : UCameraShakeBase
local UTestCameraShake = {}


---@class UWaveOscillatorCameraShakePattern : USimpleCameraShakePattern
---@field LocationAmplitudeMultiplier float
---@field LocationFrequencyMultiplier float
---@field X FWaveOscillator
---@field Y FWaveOscillator
---@field Z FWaveOscillator
---@field RotationAmplitudeMultiplier float
---@field RotationFrequencyMultiplier float
---@field Pitch FWaveOscillator
---@field Yaw FWaveOscillator
---@field Roll FWaveOscillator
---@field FOV FWaveOscillator
local UWaveOscillatorCameraShakePattern = {}



