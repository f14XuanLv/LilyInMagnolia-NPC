---@meta

---@class AEventCamera : ACameraActor
local AEventCamera = {}


---@class FActorBinding
---@field Name FName
---@field ActorBindingType EActorBindingType
---@field SpawnInfos FActorBindingSpawnInfos
local FActorBinding = {}



---@class FActorBindingKey
---@field Name FName
local FActorBindingKey = {}



---@class FActorBindingSpawnInfos
---@field ActorClass TSoftClassPtr<AActor>
---@field bDestroyOnEventFinish boolean
---@field bOffsetByHalfHeight boolean
---@field bSpawnVisible boolean
---@field TransformType EActorBindingTransformType
---@field ActorBinding FActorBindingKey
---@field SpawnTransform FTransform
---@field DefaultControllerClass TSoftClassPtr<AAIController>
local FActorBindingSpawnInfos = {}



---@class FEventBlackboardInit
---@field Names TMap<FName, FName>
---@field Booleans TMap<FName, boolean>
---@field Integers TMap<FName, int32>
---@field RowHandles TMap<FName, FDataTableRowHandle>
local FEventBlackboardInit = {}



---@class FViewTargetBlendSettings
---@field BlendTime float
---@field BlendFunction EViewTargetBlendFunction
---@field BlendExp float
local FViewTargetBlendSettings = {}



---@class IEventActorInterface : IInterface
local IEventActorInterface = {}


---@class IEventActorTalkInterface : IInterface
local IEventActorTalkInterface = {}


---@class IEventBindingProxyInterface : IInterface
local IEventBindingProxyInterface = {}

---@return AActor
function IEventBindingProxyInterface:GetBindingActor() end


---@class IEventContextAccessorInterface : IInterface
local IEventContextAccessorInterface = {}

---@param InEventContext UEventContext
function IEventContextAccessorInterface:SetEventContext(InEventContext) end


---@class IEventUserWidgetInterface : IInterface
local IEventUserWidgetInterface = {}


---@class UEventAction : UObject
---@field bWaitForCompletion boolean
---@field bPostSkipAction boolean
---@field EventContext UEventContext
local UEventAction = {}

---@param DeltaTime float
function UEventAction:OnUpdateAction(DeltaTime) end
function UEventAction:OnStartAction() end
function UEventAction:OnSkipAction() end
function UEventAction:OnFinishAction() end
function UEventAction:OnAbortAction() end
---@return UEventContext
function UEventAction:GetContext() end
function UEventAction:FinishAction() end


---@class UEventAction_Camera_AttachToSubject : UEventAction_SubjectBinding
local UEventAction_Camera_AttachToSubject = {}


---@class UEventAction_Camera_BlendEventToGame : UEventAction
---@field BlendSettings FViewTargetBlendSettings
local UEventAction_Camera_BlendEventToGame = {}



---@class UEventAction_Camera_BlendGameToEvent : UEventAction
---@field BlendSettings FViewTargetBlendSettings
local UEventAction_Camera_BlendGameToEvent = {}



---@class UEventAction_Camera_Detach : UEventAction
local UEventAction_Camera_Detach = {}


---@class UEventAction_Camera_SetToSubject : UEventAction_SubjectBinding
---@field Anchor EActorAnchor
---@field LocalOffset FTransform
---@field WorldOffset FTransform
---@field BlendTime float
---@field EasingFunction EEasingFunc::Type
---@field BlendExp float
local UEventAction_Camera_SetToSubject = {}



---@class UEventAction_Camera_WaitBlend : UEventAction
local UEventAction_Camera_WaitBlend = {}


---@class UEventAction_DestroyActor : UEventAction_SubjectBinding
local UEventAction_DestroyActor = {}


---@class UEventAction_SetActorTransform : UEventAction_SubjectBinding
---@field PivotTarget EActorPivotTarget
---@field TransformType EActorBindingTransformType
---@field ActorBinding FActorBindingKey
---@field PivotSource EActorPivotTarget
---@field SpawnTransform FTransform
local UEventAction_SetActorTransform = {}



---@class UEventAction_SetActorVisibility : UEventAction_SubjectBinding
---@field bVisible boolean
local UEventAction_SetActorVisibility = {}



---@class UEventAction_SetAllowSkip : UEventAction
---@field bAllowSkip boolean
local UEventAction_SetAllowSkip = {}



---@class UEventAction_SetValueName : UEventAction
---@field KeyToSet FName
---@field Value FName
local UEventAction_SetValueName = {}



---@class UEventAction_SnapToGround : UEventAction_SubjectBinding
---@field CollisionChannel ECollisionChannel
local UEventAction_SnapToGround = {}



---@class UEventAction_SubjectBinding : UEventAction
---@field SubjectBinding FActorBindingKey
local UEventAction_SubjectBinding = {}

---@return FText
function UEventAction_SubjectBinding:GetSubjectName() end
---@return AActor
function UEventAction_SubjectBinding:GetSubject() end


---@class UEventAction_Wait : UEventAction
---@field WaitType EWaitType
---@field WaitTime float
---@field WaitFrame int32
local UEventAction_Wait = {}



---@class UEventAsset : UObject
---@field Version int32
---@field Guid FGuid
---@field StartNodeGuid FGuid
---@field Nodes TMap<FGuid, UEventNode>
---@field ActorBindings TArray<FActorBinding>
---@field ActorNames TMap<FActorBindingKey, FText>
---@field LocalizationKey FString
---@field EventUIClass TSubclassOf<UUserWidget>
---@field ValidMovementMode EMovementMode
---@field bHidePlayerUI boolean
---@field bLockFastTravel boolean
---@field bAutoDismissSpirits boolean
---@field bAutoReSummonAutoSpirits boolean
---@field bAllowAutoSkip boolean
---@field bDefaultAllowSkip boolean
---@field SkipActionClass TSubclassOf<UEventSkipAction>
---@field bUsePreSkipFadeOut boolean
---@field bUsePostSkipFadeIn boolean
---@field EventCameraClass TSubclassOf<AEventCamera>
---@field FallbackBlendToGameView FViewTargetBlendSettings
local UEventAsset = {}

---@return int32
function UEventAsset:GetDialogueVersion() end


---@class UEventCondition : UObject
---@field bInvert boolean
local UEventCondition = {}

---@param Context UEventContext
---@return boolean
function UEventCondition:Evaluate(Context) end


---@class UEventCondition_CheckValueName : UEventCondition
---@field KeyToCheck FName
---@field ValueForSuccess FName
local UEventCondition_CheckValueName = {}



---@class UEventCondition_IsValueBooleanSet : UEventCondition
---@field KeyToCheck FName
local UEventCondition_IsValueBooleanSet = {}



---@class UEventCondition_IsValueIntegerSet : UEventCondition
---@field KeyToCheck FName
local UEventCondition_IsValueIntegerSet = {}



---@class UEventCondition_IsValueNameSet : UEventCondition
---@field KeyToCheck FName
local UEventCondition_IsValueNameSet = {}



---@class UEventCondition_IsValueRowHandleSet : UEventCondition
---@field KeyToCheck FName
local UEventCondition_IsValueRowHandleSet = {}



---@class UEventContext : UObject
---@field PostSkipActions TArray<UEventAction>
local UEventContext = {}

---@param Key FName
---@param Value FDataTableRowHandle
function UEventContext:SetValueRowHandle(Key, Value) end
---@param Key FName
---@param Value UObject
function UEventContext:SetValueObject(Key, Value) end
---@param Key FName
---@param Value FName
function UEventContext:SetValueName(Key, Value) end
---@param Key FName
---@param Value int32
function UEventContext:SetValueInteger(Key, Value) end
---@param Key FName
---@param Value boolean
function UEventContext:SetValueBoolean(Key, Value) end
---@param Key FName
---@return boolean
function UEventContext:IsValueRowHandleSet(Key) end
---@param Key FName
---@return boolean
function UEventContext:IsValueObjectSet(Key) end
---@param Key FName
---@return boolean
function UEventContext:IsValueIntegerSet(Key) end
---@param Key FName
---@return boolean
function UEventContext:IsValueBooleanSet(Key) end
---@param Key FName
---@param DefaultValue FDataTableRowHandle
---@return FDataTableRowHandle
function UEventContext:GetValueRowHandle(Key, DefaultValue) end
---@param Key FName
---@param DefaultValue UObject
---@return UObject
function UEventContext:GetValueObject(Key, DefaultValue) end
---@param Key FName
---@param DefaultValue FName
---@return FName
function UEventContext:GetValueName(Key, DefaultValue) end
---@param Key FName
---@param DefaultValue int32
---@return int32
function UEventContext:GetValueInteger(Key, DefaultValue) end
---@param Key FName
---@param DefaultValue boolean
---@return boolean
function UEventContext:GetValueBoolean(Key, DefaultValue) end
---@return APawn
function UEventContext:GetPlayerPawn() end
---@return APlayerController
function UEventContext:GetPlayerController() end
---@return AActor
function UEventContext:GetGameViewTarget() end
---@return UUserWidget
function UEventContext:GetEventUI() end
---@return AEventCamera
function UEventContext:GetEventCamera() end
---@return UEventAsset
function UEventContext:GetEventAsset() end
---@param ActorBinding FName
---@return AActor
function UEventContext:GetActorForBinding(ActorBinding) end


---@class UEventNode : UObject
---@field NodeTypeName FString
---@field Label FString
---@field NodeGuid FGuid
---@field ExecutionIndex int32
---@field Children TSet<FGuid>
local UEventNode = {}



---@class UEventNodeAction : UEventNode
---@field EnterConditions TArray<UEventCondition>
---@field Actions TArray<UEventAction>
local UEventNodeAction = {}



---@class UEventNodeAction_Parallel : UEventNodeAction
---@field RunningActions TArray<UEventAction>
local UEventNodeAction_Parallel = {}



---@class UEventNodeAction_Sequence : UEventNodeAction
---@field RunningActions TArray<UEventAction>
local UEventNodeAction_Sequence = {}



---@class UEventNode_Proxy : UEventNode
---@field TargetNodeGuid FGuid
local UEventNode_Proxy = {}



---@class UEventNode_Start : UEventNode
local UEventNode_Start = {}


---@class UEventPlayer : UObject
---@field OnEventStart FEventPlayerOnEventStart
---@field OnEventFinish FEventPlayerOnEventFinish
---@field EventAsset UEventAsset
---@field EventContext UEventContext
---@field EventUI UUserWidget
---@field EventCamera AEventCamera
---@field VisitedNodes TSet<UEventNode>
---@field ActorsToDestroyOnFinish TArray<AActor>
local UEventPlayer = {}

function UEventPlayer:SkipEvent() end
---@param PlayerController APlayerController
---@param InEventAsset UEventAsset
---@param InActorBindings TMap<FName, AActor>
---@param InDefaultValues FEventBlackboardInit
function UEventPlayer:PlayEvent(PlayerController, InEventAsset, InActorBindings, InDefaultValues) end
---@param Actor AActor
---@param EndPlayReason EEndPlayReason::Type
function UEventPlayer:OnOwnerEndPlay(Actor, EndPlayReason) end
---@return EEventPlayerState
function UEventPlayer:GetState() end
---@return UEventContext
function UEventPlayer:GetEventContext() end
---@param Owner AActor
---@return UEventPlayer
function UEventPlayer:CreateEventPlayer(Owner) end


---@class UEventSkipAction : UObject
local UEventSkipAction = {}

---@param TargetBinding FName
---@param bOffsetByHalfHeight boolean
function UEventSkipAction:TeleportPlayerPawnToBinding(TargetBinding, bOffsetByHalfHeight) end
---@param Actor AActor
---@param Transform FTransform
---@param bOffsetByHalfHeight boolean
function UEventSkipAction:TeleportActorToTransform(Actor, Transform, bOffsetByHalfHeight) end
---@param Binding FName
---@param Transform FTransform
---@param bOffsetByHalfHeight boolean
function UEventSkipAction:TeleportActorBindingToTransform(Binding, Transform, bOffsetByHalfHeight) end
---@param Binding FName
---@param TargetBinding FName
---@param bOffsetByHalfHeight boolean
function UEventSkipAction:TeleportActorBindingToBinding(Binding, TargetBinding, bOffsetByHalfHeight) end
function UEventSkipAction:OnExecute() end
---@return UEventContext
function UEventSkipAction:GetContext() end


