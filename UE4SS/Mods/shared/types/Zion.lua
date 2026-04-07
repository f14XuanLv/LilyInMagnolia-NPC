---@meta

---@class AAIControllerZion : AAIController
---@field Faction EFaction
---@field CollisionProfile ECollisionProfile
---@field BlackboardData UBlackboardData
---@field BehaviorTree_Main UBehaviorTree
---@field BehaviorTree_Aggression UBehaviorTree
---@field BehaviorTree_Aggression_Tag FGameplayTag
---@field BehaviorTree_Idle UBehaviorTree
---@field BehaviorTree_Idle_Tag FGameplayTag
---@field AIData FAIData
local AAIControllerZion = {}

function AAIControllerZion:StopLogic() end
function AAIControllerZion:StartLogic() end
function AAIControllerZion:ResumeLogic() end
function AAIControllerZion:RestartLogic() end
function AAIControllerZion:PauseLogic() end
function AAIControllerZion:OnPawnDeathProcessStart() end
function AAIControllerZion:OnPawnDeathProcessEnd() end
---@param NewTarget AActor
function AAIControllerZion:OnChangeTarget(NewTarget) end


---@class AAIControllerZion_Enemy : AAIControllerZion
---@field StatsControllerAIComponent UStatsControllerAIComponent
---@field EnemyUIClass TSubclassOf<UUserWidgetEnemyUI>
---@field bInAmbush boolean
---@field EnemyUI UUserWidgetEnemyUI
---@field EnemyDataRowHandle FDataTableRowHandle
local AAIControllerZion_Enemy = {}



---@class AAIControllerZion_Spirit : AAIControllerZion
local AAIControllerZion_Spirit = {}


---@class AAbility : AActor
---@field bAutoStopByTime boolean
---@field AutoStopTime float
---@field bAutoStopByTriggerCount boolean
---@field AutoStopTriggerCount int32
---@field bAutoAbortOnSourceDeath boolean
---@field bAutoRefreshStatsSnapshot boolean
---@field bCanBeDodged boolean
---@field bCanBeParried boolean
---@field bCanBeGuarded boolean
---@field DirectionMode EAbilityDirectionMode
---@field TimelineAbility FTimelineAbility
---@field TimelineSE FTimelineSE
---@field bExecuteAbilitiesOnStop boolean
---@field OnStopAbilityDataList TArray<FAbilityData>
---@field FXDataList TArray<FSpineFXData>
---@field OnStopFXDataList TArray<FSpineFXData>
---@field WeightCategory EAbilityWeightCategory
---@field AbilityComponent UAbilityComponent
---@field AbilityEffectProcessClass TSubclassOf<UAbilityEffectProcess>
---@field AbilityEffectProcessCache TMap<TSubclassOf<UAbilityEffectProcess>, FAbilityEffectProcessCollection>
---@field RuntimeFXInstances TArray<UNiagaraComponent>
local AAbility = {}

function AAbility:RequestStop() end
function AAbility:RequestAbort() end
function AAbility:OnStop_BP() end
function AAbility:OnSourceDeath() end
function AAbility:OnReset_BP() end
function AAbility:OnLaunch_BP() end
function AAbility:OnInitialize_BP() end
---@return EAbilityWeightCategory
function AAbility:GetWeightCategory() end
---@return AActor
function AAbility:GetSource() end
---@return float
function AAbility:GetExecutionTime() end


---@class AAbilityHitbox : AAbility
---@field DelayBeforeCollision float
---@field DelayBeforeProcessing float
---@field IgnoreIfTargetHasAnyState TArray<TSubclassOf<UState>>
---@field TargetType EHitBoxTargetType
---@field CustomTargetCollisionProfiles TArray<ECollisionProfile>
---@field CustomTargetFactions TArray<EFaction>
---@field bTriggerOnReEntry boolean
---@field bEnableReTrigger boolean
---@field DelayBeforeReTrigger float
---@field bBlockOnOneWayPlatforms boolean
---@field OnContactFXData FSpineFXData
---@field OnContactAbilityDataList TArray<FAbilityData>
---@field bStopOnBlockerOverlap boolean
---@field OnBlockerFXData FSpineFXData
---@field OnBlockerAbilityDataList TArray<FAbilityData>
---@field RootSceneComponent USceneComponent
local AAbilityHitbox = {}



---@class AAbilityHitboxBounce : AAbilityHitboxMoving
---@field SphereCollision USphereComponent
---@field bLimitBounceCount boolean
---@field MaxBounceCount int32
local AAbilityHitboxBounce = {}

---@param ImpactResult FHitResult
---@param ImpactVelocity FVector
function AAbilityHitboxBounce:OnProjectileBounce(ImpactResult, ImpactVelocity) end


---@class AAbilityHitboxFollowGeometry : AAbilityHitbox
---@field SphereCollision USphereComponent
---@field FollowGeometryMovementComponent UFollowGeometryMovementComponent
local AAbilityHitboxFollowGeometry = {}



---@class AAbilityHitboxMoving : AAbilityHitbox
---@field ZionProjectileMovementComponent UZionProjectileMovementComponent
local AAbilityHitboxMoving = {}



---@class AAbilityHitboxScaling : AAbilityHitbox
---@field ScaleContainer USceneComponent
---@field CollisionChannel ECollisionChannel
---@field BeamFX UNiagaraSystem
---@field BeamCollisionFX UNiagaraSystem
---@field MaxRange float
---@field BeamRenderLayer ERenderLayerTypes
local AAbilityHitboxScaling = {}



---@class AAbilityHitboxScaling_OrientToTargetAI : AAbilityHitboxScaling
---@field OrientToTargetComponent UOrientToTargetComponent
local AAbilityHitboxScaling_OrientToTargetAI = {}



---@class AAbilityHitboxTarget : AAbilityHitbox
local AAbilityHitboxTarget = {}

---@return AActor
function AAbilityHitboxTarget:GetTarget() end


---@class AAbilityHitboxTarget_AI : AAbilityHitboxTarget
local AAbilityHitboxTarget_AI = {}


---@class AAbilityHitboxTarget_AI_Homing : AAbilityHitboxTarget_AI
---@field HomingComponent UHomingComponent
local AAbilityHitboxTarget_AI_Homing = {}



---@class AAbilityHitboxTarget_Search : AAbilityHitboxTarget
---@field MaxDistance float
---@field bNeedsLineOfSight boolean
---@field bFrontCheck boolean
---@field VisibilityChannel ECollisionChannel
local AAbilityHitboxTarget_Search = {}



---@class AAbilityHitboxTarget_Search_Homing : AAbilityHitboxTarget_Search
---@field HomingComponent UHomingComponent
local AAbilityHitboxTarget_Search_Homing = {}



---@class AAbilityInstant : AAbility
local AAbilityInstant = {}

---@param InTargets TArray<AActor>
function AAbilityInstant:SetTargets(InTargets) end


---@class AActorSpawner : ASpawner
---@field ConditionRefreshComponent UGameplayConditionRefreshComponent
---@field ActorToSpawn TSoftClassPtr<AActor>
---@field bOffsetByHalfHeight boolean
---@field ConditionChecker FGameplayConditionChecker
local AActorSpawner = {}

---@param InActorClassToSpawn TSoftClassPtr<AActor>
function AActorSpawner:SetActorToSpawn(InActorClassToSpawn) end
---@param Actor AActor
function AActorSpawner:OnPreSpawnActor(Actor) end
---@param Actor AActor
---@param bPreview boolean
function AActorSpawner:OnPostSpawnActor(Actor, bPreview) end


---@class AAfterImageRenderer : AActor
local AAfterImageRenderer = {}

function AAfterImageRenderer:Release() end
---@param Transform FTransform
---@param Texture UTextureRenderTarget2D
function AAfterImageRenderer:OnSetup(Transform, Texture) end


---@class AAssistVisual : AActor
---@field RootSceneComponent USceneComponent
---@field VisualComponent UStaticMeshComponent
---@field FollowTarget UFollowTargetComponent
---@field AttachBone ESpineBone
---@field OnTriggerFXData FSpineFXData
---@field OnCooldownElapsedFXData FSpineFXData
---@field LightAlphaParameterName FName
local AAssistVisual = {}

function AAssistVisual:OnGameMapChanged() end


---@class ABreakable : AActor
---@field RootSceneComponent USceneComponent
---@field StatHPComponent UStatHPComponent
---@field DeathComponent UDeathComponent
---@field FactionComponent UFactionComponent
---@field ClearComponent UClearComponent
---@field SpineFXComponent USpineFXComponent
---@field SpineBoneComponent USpineBoneComponent
---@field bMarkAsClearOnDeath boolean
---@field OnBreakFXData FSpineFXData
---@field bRotateBreakFXFromLastAttacker boolean
---@field OnBreakFMODEvent UFMODEvent
local ABreakable = {}

---@param ClearStatus EClearStatus
function ABreakable:OnClearStatusChecked(ClearStatus) end
---@param Source AActor
---@param Value int32
function ABreakable:OnBreakableReceivedDamage(Source, Value) end
function ABreakable:OnBreakableDeathProcessStart() end


---@class ACharacterZion : ACharacter
---@field OnGotAbilityAppliedDelegate FCharacterZionOnGotAbilityAppliedDelegate
---@field OnGotAbilityAppliedPostActivateDelegate FCharacterZionOnGotAbilityAppliedPostActivateDelegate
---@field OnGuardedDelegate FCharacterZionOnGuardedDelegate
---@field OnParriedDelegate FCharacterZionOnParriedDelegate
---@field OnDodgeDelegate FCharacterZionOnDodgeDelegate
---@field OnEventStartedDelegate FCharacterZionOnEventStartedDelegate
---@field OnEventStoppedDelegate FCharacterZionOnEventStoppedDelegate
---@field CoyoteTime float
---@field bInstantKillOnSwim boolean
---@field bInstantKillOnGround boolean
---@field TargetPivotBone ESpineBone
---@field PostParriedStates TArray<TSubclassOf<UState>>
---@field PostParriedStatesDuration float
---@field PostEventStates TArray<TSubclassOf<UState>>
---@field PostEventStatesDuration float
---@field TalkLocationData FTalkLocationData
---@field ZionInputComponent UZionInputComponent
---@field InputBufferComponent UInputBufferComponent
---@field LocomotionComponent ULocomotionComponent
---@field CommandComponent UCommandComponent
---@field StateComponent UStateComponent
---@field AbilityComponent UAbilityComponent
---@field CollisionComponent UCollisionComponent
---@field FactionComponent UFactionComponent
---@field StatHPComponent UStatHPComponent
---@field KnockbackComponent UKnockbackComponent
---@field HitStopComponent UHitStopComponent
---@field ShakeComponent UShakeComponent
---@field DeathComponent UDeathComponent
---@field UIComponent UUIComponent
---@field RenderLayerComponent URenderLayerComponent
---@field SoundComponent USoundComponent
---@field VisualPivotSceneComponent USceneComponent
---@field VisualPivotModifierComponent UVisualPivotModifierComponent
---@field SpineRendererComponent USpineSkeletonRendererComponent
---@field SpineMaskRendererComponent USpineMeshMaskComponent
---@field SpineAnimationComponent USpineSkeletonAnimationExComponent
---@field SpineAnimatorComponent USpineAnimatorComponent
---@field SpineBoneComponent USpineBoneComponent
---@field SpineHighlightComponent USpineHighlightComponent
---@field FXComponent UFXComponent
---@field SpineRootMotionComponent USpineRootMotionComponent
---@field StatusEffectComponent UStatusEffectComponent
---@field StatBurnComponent UStatBurnComponent
---@field StatFreezeComponent UStatFreezeComponent
---@field StatShockComponent UStatShockComponent
---@field SpineColorComponent USpineColorComponent
---@field ZionCharacterMovement UZionCharacterMovementComponent
---@field DebugDisplayComponent UDebugDisplayComponent
---@field TargetPivotComponent USceneComponent
local ACharacterZion = {}

---@return boolean
function ACharacterZion:ShouldConsiderJumpAsWallGrab() end
---@return boolean
function ACharacterZion:ShouldConsiderJumpAsHookAttach() end
---@return boolean
function ACharacterZion:ShouldConsiderJumpAsGrounded() end
---@return boolean
function ACharacterZion:ShouldConsiderJumpAsAirborne() end
function ACharacterZion:ResetJumpCount() end
---@param Source AActor
---@param Value int32
function ACharacterZion:OnReceivedDamage(Source, Value) end
---@param Ability AAbility
---@param Source AActor
function ACharacterZion:OnParried(Ability, Source) end
---@param Ability AAbility
---@param Source AActor
function ACharacterZion:OnGuarded(Ability, Source) end
---@return boolean
function ACharacterZion:IsInEvent() end
---@return UZionCharacterMovementComponent
function ACharacterZion:GetZionCharacterMovement() end
---@return UCollisionComponent
function ACharacterZion:GetCollisionComponent() end


---@class ACharacterZionNPC : ACharacter
---@field LocomotionComponent ULocomotionComponent
---@field CollisionComponent UCollisionComponent
---@field FactionComponent UFactionComponent
---@field RenderLayerComponent URenderLayerComponent
---@field VisualPivotSceneComponent USceneComponent
---@field VisualPivotModifierComponent UVisualPivotModifierComponent
---@field SpineRendererComponent USpineSkeletonRendererComponent
---@field SpineMaskRendererComponent USpineMeshMaskComponent
---@field SpineAnimationComponent USpineSkeletonAnimationExComponent
---@field SpineAnimatorComponent USpineAnimatorComponent
---@field SpineBoneComponent USpineBoneComponent
---@field SpineFXComponent USpineFXComponent
---@field SpineRootMotionComponent USpineRootMotionComponent
---@field SpineHighlightComponent USpineHighlightComponent
---@field ZionCharacterMovement UZionCharacterMovementComponent
---@field DebugDisplayComponent UDebugDisplayComponent
---@field IdleOverrideAnimations TArray<FSpineAnimationDefinition>
---@field TalkLocationData FTalkLocationData
local ACharacterZionNPC = {}

---@param NewIdleOverrideAnimations TArray<FSpineAnimationDefinition>
function ACharacterZionNPC:SetIdleOverrideAnimations(NewIdleOverrideAnimations) end


---@class ACharacterZionSpirit : ACharacter
---@field FadeInCurve FRuntimeFloatCurve
---@field FadeInFilterCurve FRuntimeFloatCurve
---@field FadeOutCurve FRuntimeFloatCurve
---@field FadeInFXData FSpineFXData
---@field FadeOutFXData FSpineFXData
---@field bInjectSummonerMovementMode boolean
---@field DismissStates TArray<TSubclassOf<UState>>
---@field SpiritCooldownClass TSubclassOf<ASpiritCooldown>
---@field ZionInputComponent UZionInputComponent
---@field InputBufferComponent UInputBufferComponent
---@field LocomotionComponent ULocomotionComponent
---@field CommandComponent UCommandComponent
---@field StateComponent UStateComponent
---@field AbilityComponent UAbilityComponent
---@field CollisionComponent UCollisionComponent
---@field FactionComponent UFactionComponent
---@field HitStopComponent UHitStopComponent
---@field RenderLayerComponent URenderLayerComponent
---@field VisualPivotSceneComponent USceneComponent
---@field VisualPivotModifierComponent UVisualPivotModifierComponent
---@field SpineRendererComponent USpineSkeletonRendererComponent
---@field SpineMaskRendererComponent USpineMeshMaskComponent
---@field SpineAnimationComponent USpineSkeletonAnimationExComponent
---@field SpineAnimatorComponent USpineAnimatorComponent
---@field SpineBoneComponent USpineBoneComponent
---@field SpineFXComponent USpineFXComponent
---@field SpineRootMotionComponent USpineRootMotionComponent
---@field SpineHighlightComponent USpineHighlightComponent
---@field SpiritStatsSnapshot USpiritStatsSnapshotComponent
---@field ZionCharacterMovement UZionCharacterMovementComponent
---@field FallThroughComponent UFallThroughComponent
---@field DebugDisplayComponent UDebugDisplayComponent
---@field InvokedByInputAction UInputAction
---@field InvokedByCommandSet UCommandSet
---@field AIController AAIControllerZion
local ACharacterZionSpirit = {}

---@param bNewActive boolean
function ACharacterZionSpirit:SetActive(bNewActive) end
---@param From FVector
---@param To FVector
function ACharacterZionSpirit:OnTeleport(From, To) end
function ACharacterZionSpirit:OnSummon() end
function ACharacterZionSpirit:OnPreSummon() end
---@param StartLocation FVector
---@param EndLocation FVector
function ACharacterZionSpirit:OnLocationBlendStart(StartLocation, EndLocation) end
---@param StartLocation FVector
---@param EndLocation FVector
function ACharacterZionSpirit:OnLocationBlendEnd(StartLocation, EndLocation) end
function ACharacterZionSpirit:OnDismiss() end
function ACharacterZionSpirit:OnDeactivate() end
function ACharacterZionSpirit:OnActivate() end
---@return boolean
function ACharacterZionSpirit:IsSummoned() end
---@return boolean
function ACharacterZionSpirit:IsActive() end
---@return AActor
function ACharacterZionSpirit:GetSummoner() end
---@param bInstant boolean
function ACharacterZionSpirit:Dismiss(bInstant) end
---@param Delay float
function ACharacterZionSpirit:DelayedDismiss(Delay) end


---@class ACollectable : AActor
---@field FXSystem UNiagaraSystem
---@field bActivateOnBeginPlay boolean
---@field bEnableCollisionOnActivate boolean
---@field bDetectionMatchReachedRange boolean
---@field TargetDetectionRange float
---@field MinTimeBeforeTargetReachActivation float
---@field OnCollectFMODEvent UFMODEvent
---@field RootSceneComponent USceneComponent
---@field TargetDetectionComponent USphereComponent
---@field TargetReachedComponent USphereComponent
---@field HomingComponent UHomingComponent
---@field FXInstance UNiagaraComponent
local ACollectable = {}

---@param bSetActive boolean
function ACollectable:SetActive(bSetActive) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ACollectable:OnTargetOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param ActiveZone AStaticVolume_Zone
function ACollectable:OnPostSwitchZone(ActiveZone) end
---@return boolean
function ACollectable:IsActive() end
---@return float
function ACollectable:GetTargetDetectionRange() end
---@return AActor
function ACollectable:GetCollectingActor() end
---@param CollectActor AActor
function ACollectable:Collect(CollectActor) end


---@class ACollectable_Drop : ACollectable
local ACollectable_Drop = {}


---@class ACollectable_Experience : ACollectable
local ACollectable_Experience = {}


---@class ACollectable_GameplayEffect : ACollectable
---@field Effects TArray<UGameplayEffect>
local ACollectable_GameplayEffect = {}



---@class AEnemySpawner : ASpawner
---@field OnEnemySpawnerDeathStart FEnemySpawnerOnEnemySpawnerDeathStart
---@field OnEnemySpawnerDeathEnd FEnemySpawnerOnEnemySpawnerDeathEnd
---@field OnEnemySpawnerActivation FEnemySpawnerOnEnemySpawnerActivation
---@field ClearComponent UClearComponent
---@field bUseConditionChecker boolean
---@field ConditionChecker FGameplayConditionChecker
---@field bMarkAsClearedOnConditionFailed boolean
---@field EnemyRowHandle FDataTableRowHandle
---@field bAutoActivateEnemy boolean
---@field ClearTiming EEnemySpawnerClearTiming
---@field bSpawnEvenWhenCleared boolean
---@field bLockEnvironmentLevel boolean
---@field AdditionalGameMapsToLock TArray<FDataTableRowHandle>
---@field bIncrementEnvironmentLevel boolean
---@field bOverrideBehaviorIdle boolean
---@field BehaviorTreeOverride_Idle TSoftObjectPtr<UBehaviorTree>
---@field bOverrideBehaviorAggression boolean
---@field BehaviorTreeOverride_Aggression TSoftObjectPtr<UBehaviorTree>
---@field bOverridePatrolRange boolean
---@field PatrolRangeOverride float
---@field BlackboardOverride_Bool TMap<FName, boolean>
---@field BlackboardOverride_Float TMap<FName, float>
---@field BlackboardOverride_Vector TMap<FName, FVector>
---@field BlackboardOverride_Actor TMap<FName, AActor>
---@field bCacheBreakPartState boolean
---@field EnemyPartBrokenType EBreakType
local AEnemySpawner = {}

---@return boolean
function AEnemySpawner:ShouldSpawnEvenWhenCleared() end
---@param NewEnemyRowHandle FDataTableRowHandle
---@param SpawnTransform FTransform
function AEnemySpawner:ReplaceEnemy(NewEnemyRowHandle, SpawnTransform) end
---@param Enemy ACharacterZion
function AEnemySpawner:OnUnregisterEnemy(Enemy) end
---@param Enemy ACharacterZion
function AEnemySpawner:OnRegisterEnemy(Enemy) end
function AEnemySpawner:OnEnemyPreActivation() end
function AEnemySpawner:OnEnemyDeathStart() end
function AEnemySpawner:OnEnemyDeathProcessStart() end
function AEnemySpawner:OnEnemyDeathProcessEnd() end
function AEnemySpawner:OnEnemyDeathEnd() end
---@param BreakType EBreakType
function AEnemySpawner:OnEnemyBreakPart(BreakType) end
function AEnemySpawner:OnEnemyActivation() end
---@param ClearStatus EClearStatus
function AEnemySpawner:OnClearStatusChecked(ClearStatus) end
function AEnemySpawner:OnApplyBlackboardOverride() end
---@return boolean
function AEnemySpawner:IsEnemyActivated() end
---@return AAIControllerZion
function AEnemySpawner:GetEnemyAIController() end
---@return ACharacterZion
function AEnemySpawner:GetEnemy() end
function AEnemySpawner:ActivateEnemy() end


---@class AFakeWall : AActor
---@field bAutoManageLinkedVisibilityActors boolean
---@field bRequireLinkedVisibilityActorsOnSameLevel boolean
---@field LinkedVisibilityActors TArray<AActor>
---@field FogOfWarBlockerReferences TArray<FComponentReference>
---@field RootSceneComponent USceneComponent
---@field ClearComponent UClearComponent
---@field FogOfWarBlockers TArray<UBoxComponent>
local AFakeWall = {}

---@param ClearStatus EClearStatus
function AFakeWall:OnClearStatusChecked(ClearStatus) end
---@return boolean
function AFakeWall:IsCleared() end
---@param bInstant boolean
function AFakeWall:Hide(bInstant) end
function AFakeWall:Clear() end


---@class AFluidBody : AActor
---@field EnterSplashFXs TMap<ESplashSize, UNiagaraSystem>
---@field ExitSplashFXs TMap<ESplashSize, UNiagaraSystem>
---@field EnterSplashSEs TMap<ESplashSize, UFMODEvent>
---@field ExitSplashSEs TMap<ESplashSize, UFMODEvent>
---@field SplashSizeToStrengths TMap<ESplashSize, float>
---@field VelocityToSplashStrength FRuntimeFloatCurve
---@field VelocityToSplashSize FRuntimeFloatCurve
---@field SceneRootComponent USceneComponent
---@field FluidMeshComponent UFluidMeshComponent
---@field FluidSimulationComponent UFluidSimulationComponent
---@field SurfaceCollisionComponent UBoxComponent
---@field InContactActors TMap<AActor, int32>
local AFluidBody = {}

function AFluidBody:RegenerateFluidMesh() end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AFluidBody:OnEndOverlapSurface(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bBFromSweep boolean
---@param SweepResult FHitResult
function AFluidBody:OnBeginOverlapSurface(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bBFromSweep, SweepResult) end
---@param WorldLocation FVector
---@param Strength float
---@param SizePercent float
---@param bEntering boolean
---@param bLaunchFX boolean
function AFluidBody:GenerateSplash(WorldLocation, Strength, SizePercent, bEntering, bLaunchFX) end


---@class AGameModeZion : AGameModeZionBase
---@field OnGameMapChanged FGameModeZionOnGameMapChanged
---@field DataTableStoryLevels UDataTable
---@field DataTableGameMaps UDataTable
---@field DataTableGameMapTransitions UDataTable
---@field DataTableRestPoints UDataTable
---@field DataTableRestPointEvents UDataTable
---@field DataTableEnemies UDataTable
---@field DataTableItemCurrencies UDataTable
---@field DataTableItemAptitudes UDataTable
---@field DataTableItemSpirits UDataTable
---@field DataTableItemSkills UDataTable
---@field DataTableItemStats UDataTable
---@field DataTableItemPassives UDataTable
---@field DataTableItemEquipments UDataTable
---@field DataTableItemAssists UDataTable
---@field DataTableItemMaterials UDataTable
---@field DataTableItemTips UDataTable
---@field DataTableItemTutorials UDataTable
---@field DataTableItemKeys UDataTable
---@field DataTableItemQuests UDataTable
---@field DataTableItemCostumes UDataTable
---@field DataTableItemEnemyInfos UDataTable
---@field DataTableItemNPCInfos UDataTable
---@field DataTableItemGallery UDataTable
---@field DataTableRecollectionBosses UDataTable
---@field DataTableAchievements UDataTable
---@field StepMatrixData UStepMatrixData
---@field AbilityFXMatrixData UMaterialFXMatrixData
---@field AbilitySEMatrixData UMaterialSEMatrixData
---@field DefaultFadeDescription FFadeDescriptionData
---@field TitleMap TSoftObjectPtr<UWorld>
---@field GameStatsComponent UGameStatsComponent
---@field EmulatedFogManager UEmulatedFogManagerComponent
---@field TimeManager UTimeManagerComponent
---@field PoolSystemComponent UPoolSystemComponent
---@field DropSystemComponent UDropSystemComponent
---@field ZoneSystemComponent UZoneSystemComponent
---@field ClearManagerComponent UClearManagerComponent
---@field RenderStateManagerComponent URenderStateManagerComponent
---@field DifficultySystemComponent UDifficultySystemComponent
---@field ElevatorStateManagerComponent UElevatorStateManagerComponent
---@field BreakPartStateManagerComponent UBreakPartStateManagerComponent
---@field RecollectionBossComponent URecollectionBossComponent
---@field BossRushComponent URecollectionBossRushComponent
---@field EnvironmentLevel int32
---@field EnvironmentLevelForGameMaps TMap<FName, int32>
---@field EnvironmentLevelOverride int32
---@field ReachedGameEndings TMap<EGameEndingType, int32>
---@field PreviousCumulatedReachedGameEndings TMap<EGameEndingType, int32>
---@field NewGamePlusGeneration int32
---@field NewGamePlusGenerationOverride int32
local AGameModeZion = {}

function AGameModeZion:StartRecollectionBossRush() end
---@param RecollectionBossDataHandle FDataTableRowHandle
function AGameModeZion:StartRecollectionBoss(RecollectionBossDataHandle) end
---@param GenerationOverride int32
function AGameModeZion:SetNewGamePlusGenerationOverride(GenerationOverride) end
---@param LevelOverride int32
function AGameModeZion:SetEnvironmentLevelOverride(LevelOverride) end
---@param Reason ERespawnReason
function AGameModeZion:RespawnPlayer(Reason) end
function AGameModeZion:ResetNewGamePlusGenerationOverride() end
function AGameModeZion:ResetEnvironmentLevelOverride() end
---@param NewRecollectionBossComponent URecollectionBossComponent
function AGameModeZion:RegisterRecollectionBossComponent(NewRecollectionBossComponent) end
---@param NewBossRushComponent URecollectionBossRushComponent
function AGameModeZion:RegisterBossRushComponent(NewBossRushComponent) end
---@param GameEndingType EGameEndingType
function AGameModeZion:NotifyGameEndingReached(GameEndingType) end
---@return boolean
function AGameModeZion:IsInRespawnProcess() end
---@return boolean
function AGameModeZion:IsInNewGamePlus() end
---@return boolean
function AGameModeZion:IsGameReady() end
---@return boolean
function AGameModeZion:IsGameCleared() end
---@return boolean
function AGameModeZion:IsDeathProcessingAllowed() end
---@return UStepMatrixData
function AGameModeZion:GetStepMatrixData() end
---@return int32
function AGameModeZion:GetRawEnvironmentLevel() end
---@return FString
function AGameModeZion:GetPlayTimeAsString() end
---@return int32
function AGameModeZion:GetNewGamePlusGenerationOverride() end
---@return int32
function AGameModeZion:GetNewGamePlusGeneration() end
---@param NewGamePlusGeneration int32
---@return int32
function AGameModeZion:GetMaxEnvironmentLevel(NewGamePlusGeneration) end
---@return FDataTableRowHandle
function AGameModeZion:GetLastBossRecollectionHandle() end
---@return EGameModeType
function AGameModeZion:GetGameModeType() end
---@return int32
function AGameModeZion:GetGameEndingCountReached() end
---@return int32
function AGameModeZion:GetGameClearCount() end
---@return int32
function AGameModeZion:GetEnvironmentLevelOverride() end
---@return int32
function AGameModeZion:GetEnvironmentLevelNewGamePlus() end
---@return int32
function AGameModeZion:GetEnvironmentLevel() end
---@return UDataTable
function AGameModeZion:GetDataTableStoryLevels() end
---@return UDataTable
function AGameModeZion:GetDataTableRestPoints() end
---@return UDataTable
function AGameModeZion:GetDataTableRestPointEvents() end
---@return UDataTable
function AGameModeZion:GetDataTableRecollectionBosses() end
---@return UDataTable
function AGameModeZion:GetDataTableItemTutorials() end
---@return UDataTable
function AGameModeZion:GetDataTableItemTips() end
---@return UDataTable
function AGameModeZion:GetDataTableItemStats() end
---@return UDataTable
function AGameModeZion:GetDataTableItemSpirits() end
---@return UDataTable
function AGameModeZion:GetDataTableItemSkills() end
---@return UDataTable
function AGameModeZion:GetDataTableItemQuests() end
---@return UDataTable
function AGameModeZion:GetDataTableItemPassives() end
---@return UDataTable
function AGameModeZion:GetDataTableItemNPCInfo() end
---@return UDataTable
function AGameModeZion:GetDataTableItemMaterials() end
---@return UDataTable
function AGameModeZion:GetDataTableItemKeys() end
---@return UDataTable
function AGameModeZion:GetDataTableItemGallery() end
---@return UDataTable
function AGameModeZion:GetDataTableItemEquipments() end
---@return UDataTable
function AGameModeZion:GetDataTableItemEnemyInfo() end
---@return UDataTable
function AGameModeZion:GetDataTableItemCurrencies() end
---@return UDataTable
function AGameModeZion:GetDataTableItemCostumes() end
---@return UDataTable
function AGameModeZion:GetDataTableItemAssists() end
---@return UDataTable
function AGameModeZion:GetDataTableItemAptitudes() end
---@return UDataTable
function AGameModeZion:GetDataTableGameMapTransitions() end
---@return UDataTable
function AGameModeZion:GetDataTableGameMaps() end
---@return UDataTable
function AGameModeZion:GetDataTableEnemies() end
---@return UDataTable
function AGameModeZion:GetDataTableAchievements() end
---@return ERespawnReason
function AGameModeZion:GetCurrentRespawnReason() end
---@return UMaterialSEMatrixData
function AGameModeZion:GetAbilitySEMatrixData() end
---@return UMaterialFXMatrixData
function AGameModeZion:GetAbilityFXMatrixData() end
---@param WorldContextObject UObject
---@return AGameModeZion
function AGameModeZion:Get(WorldContextObject) end
---@param RestPointID FName
function AGameModeZion:FastTravel(RestPointID) end
---@param GameEndingType EGameEndingType
---@param bCheckPreviousGameGeneration boolean
---@return boolean
function AGameModeZion:DidReachGameEnding(GameEndingType, bCheckPreviousGameGeneration) end
---@param NewNewGamePlusGeneration int32
function AGameModeZion:DBG_SetNewGamePlusGeneration(NewNewGamePlusGeneration) end
---@return boolean
function AGameModeZion:CanLeaveRecollectionBoss() end


---@class AGameModeZionBase : AGameModeBase
---@field InputDeviceCheckerComponent UInputDeviceCheckerComponent
---@field LocalizationSwitcherComponent ULocalizationSwitcherComponent
local AGameModeZionBase = {}



---@class AGameplayCamera : ACameraActor
---@field CurrTargetTransform FTransform
---@field EnemyPawnTargets TArray<TWeakObjectPtr<APawn>>
---@field CurrentTargetLocation FVector
---@field CurrentLocalLocationOffset FVector2D
---@field InputAction_CameraOffset UInputAction
---@field LastInputLocationOffset FVector2D
---@field CurrentInputLocationOffset FVector2D
---@field DefaultSettings FGameplayCameraSettings
---@field bUseOscillation boolean
---@field OscillationScale float
---@field LocOscillation FVOscillator
---@field DebugAction_Zoom UInputAction
---@field DebugZoomOffset_Speed float
---@field DebugMinZoomOffset float
---@field DebugMaxZoomOffset float
---@field DebugAction_FOV UInputAction
---@field DebugFOV_Speed float
---@field DebugMinFOV float
---@field DebugMaxFOV float
---@field DebugAction_LocalOffset UInputAction
---@field DebugLocalOffset_Speed float
local AGameplayCamera = {}

---@param EnemyPawnsToRemove TArray<APawn>
function AGameplayCamera:UnregisterEnemyPawns(EnemyPawnsToRemove) end
---@param EnemyPawnToRemove APawn
function AGameplayCamera:UnregisterEnemyPawn(EnemyPawnToRemove) end
---@param NewSettings FGameplayCameraSettings
function AGameplayCamera:SetSettings(NewSettings) end
function AGameplayCamera:ResetCameraToDefault() end
---@param EnemyPawnsToAdd TArray<APawn>
function AGameplayCamera:RegisterEnemyPawns(EnemyPawnsToAdd) end
---@param EnemyPawnToAdd APawn
function AGameplayCamera:RegisterEnemyPawn(EnemyPawnToAdd) end
function AGameplayCamera:FlushCamera() end
function AGameplayCamera:ClearSettings() end


---@class AHookPoint : AActor
---@field HookType EHookType
---@field RootSceneComponent USceneComponent
---@field SphereComponent USphereComponent
---@field AvailableFXSystem UNiagaraSystem
---@field FXInstance UNiagaraComponent
local AHookPoint = {}

---@return EHookType
function AHookPoint:GetHookType() end
---@return FTransform
function AHookPoint:GetHookTransform() end
---@return FVector
function AHookPoint:GetHookLocation() end
---@return USceneComponent
function AHookPoint:GetHookAttachComponent() end


---@class AHookPoint_Moving : AHookPoint
---@field FollowSplineComponent UFollowSplineComponent
---@field SplineComponent USplineComponent
---@field CallToStartTrigger UBoxComponent
---@field CallToEndTrigger UBoxComponent
---@field StartMovementFMODEvent UFMODEvent
---@field LoopMovementFMODEvent UFMODEvent
---@field StopMovementFMODEvent UFMODEvent
---@field bShouldStopWhenCharacterLeaves boolean
---@field bCanBeUsedAtSplineEnd boolean
---@field bCanBeCalledAtSplineStart boolean
---@field bCanBeCalledAtSplineEnd boolean
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field InnerRadius float
---@field OuterRadius float
---@field Falloff float
---@field bOrientShakeTowardsEpicenter boolean
---@field ForceFeedbackEffect UForceFeedbackEffect
local AHookPoint_Moving = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function AHookPoint_Moving:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AHookPoint_Moving:OnComponentOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class AInteractable : AActor
---@field InteractionText FText
---@field ConditionChecker FGameplayConditionChecker
---@field OnSuccessCommand TSubclassOf<UCommand>
---@field OnFailureCommand TSubclassOf<UCommand>
---@field OnSuccessFMODEvent UFMODEvent
---@field OnFailureFMODEvent UFMODEvent
---@field RootSceneComponent USceneComponent
---@field BillboardComponent UBillboardComponent
---@field WidgetComponent UWidgetComponent
local AInteractable = {}

---@param bCanInteract boolean
function AInteractable:SetCanBeInteracted(bCanInteract) end
---@param SoundEffect UFMODEvent
function AInteractable:PlaySoundEvent(SoundEffect) end
---@param Controller APlayerController
function AInteractable:OnInteract_ConditionCheckFailed(Controller) end
---@param Controller APlayerController
function AInteractable:OnInteract(Controller) end
---@param Controller APlayerController
function AInteractable:OnDeactivateInteractable(Controller) end
function AInteractable:OnCanBeInteractedChanged() end
---@param Controller APlayerController
function AInteractable:OnActivateInteractable(Controller) end
---@return FText
function AInteractable:GetInteractionText() end
---@return APlayerController
function AInteractable:GetInteractingController() end
---@return boolean
function AInteractable:ConditionsChecked() end
---@return boolean
function AInteractable:CanBeInteracted() end


---@class AInteractable_Event : AInteractable
---@field ClearComponent UClearComponent
---@field bAutoMarkAsClear boolean
---@field bMarkAsClearOnSpecificEvent boolean
---@field MarkAsClearEvent TSoftObjectPtr<UEventAsset>
---@field bDisableWhenCleared boolean
---@field EventAsset TSoftObjectPtr<UEventAsset>
---@field FailureEventAsset TSoftObjectPtr<UEventAsset>
---@field ActorBindings TMap<FName, AActor>
---@field SpawnerBindings TMap<FName, ASpawner>
---@field DefaultEventValues FEventBlackboardInit
---@field PostEventStates TArray<TSubclassOf<UState>>
---@field PostEventStatesDuration float
---@field LoadedEventAsset UEventAsset
---@field LoadedFailureEventAsset UEventAsset
---@field EventPlayer UEventPlayer
local AInteractable_Event = {}

---@param EventBlackboardInit FEventBlackboardInit
function AInteractable_Event:SetupAdditionalBlackboardValues(EventBlackboardInit) end
---@param AdditionalBindings TMap<FName, AActor>
function AInteractable_Event:SetupAdditionalBindings(AdditionalBindings) end
function AInteractable_Event:OnPostEventProcess() end
---@param InEventPlayer UEventPlayer
---@param bCompletedEvent boolean
---@param EventResult EEventPlayerResult
function AInteractable_Event:OnEventFinished(InEventPlayer, bCompletedEvent, EventResult) end
---@param ClearStatus EClearStatus
function AInteractable_Event:OnClearStatusChecked(ClearStatus) end


---@class AInteractable_EventNPC : AInteractable_Event
---@field ChildActorComponent UChildActorComponent
---@field ConditionRefreshComponent UGameplayConditionRefreshComponent
---@field NPCClass TSoftClassPtr<ACharacterZionNPC>
---@field NPCDataList TArray<FInteractableNPCData>
local AInteractable_EventNPC = {}

---@return ACharacterZionNPC
function AInteractable_EventNPC:GetNPC() end


---@class AInteractable_RestPoint : AInteractable
---@field PlayerStartChildActor UChildActorComponent
---@field RestPointDataHandle FDataTableRowHandle
local AInteractable_RestPoint = {}

---@param InNextEventDataHandle FDataTableRowHandle
function AInteractable_RestPoint:SetNextEventDataHandle(InNextEventDataHandle) end
---@return FDataTableRowHandle
function AInteractable_RestPoint:GetRestPointDataHandle() end
---@return FDataTableRowHandle
function AInteractable_RestPoint:GetNextEventDataHandle() end
function AInteractable_RestPoint:ClearNextEventDataHandle() end


---@class AMapAreaTransitionMarker : AActor
---@field SceneRootComponent USceneComponent
---@field StartPosition UElevatorDestinationComponent
---@field EndPosition UElevatorDestinationComponent
---@field VisualLinkParent USceneComponent
---@field MapAreaTransitionHandle FDataTableRowHandle
---@field LinkDepthScale float
---@field LinkWidthScale float
---@field LinkMinLength float
local AMapAreaTransitionMarker = {}



---@class AMovingBlock_Elevator : AActor
---@field SceneRootComponent USceneComponent
---@field MovingComponent USceneComponent
---@field Destination USceneComponent
---@field RopeAttachPoint USceneComponent
---@field RopeDestinationPoint UElevatorDestinationComponent
---@field ElevatorMovementComponent UElevatorMovementComponent
---@field RopeComponent URopeComponent
local AMovingBlock_Elevator = {}

---@param bInstant boolean
---@param bWasMoving boolean
function AMovingBlock_Elevator:OnStartMovement(bInstant, bWasMoving) end
---@param bInstant boolean
---@param bWasMoving boolean
function AMovingBlock_Elevator:OnFinishMovement(bInstant, bWasMoving) end
---@param bInstant boolean
function AMovingBlock_Elevator:CallToOrigin(bInstant) end
---@param bInstant boolean
function AMovingBlock_Elevator:CallToDestination(bInstant) end


---@class AMovingPlatform_Elevator : AOneWayPlatform
---@field PlayerDetector USphereComponent
---@field ElevatorDestination UElevatorDestinationComponent
---@field RopeAttachPoint USceneComponent
---@field RopeDestinationPoint UElevatorDestinationComponent
---@field ElevatorMovementComponent UElevatorMovementComponent
---@field RopeComponent URopeComponent
---@field bCacheElevatorState boolean
---@field PlayerDetectionRange float
---@field bUseRope boolean
---@field RopeWidthScale float
---@field RopeMinLength float
---@field RopeMeshesRef TArray<FComponentReference>
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field InnerRadius float
---@field OuterRadius float
---@field Falloff float
---@field bOrientShakeTowardsEpicenter boolean
---@field ForceFeedbackEffect UForceFeedbackEffect
local AMovingPlatform_Elevator = {}

function AMovingPlatform_Elevator:TriggerElevator() end
---@param bInstant boolean
---@param bWasMoving boolean
function AMovingPlatform_Elevator:OnStartMovement(bInstant, bWasMoving) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AMovingPlatform_Elevator:OnPlayerDetectorOverlapEnd(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AMovingPlatform_Elevator:OnPlayerDetectorOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param bInstant boolean
---@param bWasMoving boolean
function AMovingPlatform_Elevator:OnFinishMovement(bInstant, bWasMoving) end
---@return boolean
function AMovingPlatform_Elevator:IsMoving() end
---@return float
function AMovingPlatform_Elevator:GetPlayerDetectionRange() end
function AMovingPlatform_Elevator:CallToOrigin() end
function AMovingPlatform_Elevator:CallToDestination() end


---@class AMovingPlatform_Spline : AOneWayPlatform
---@field FollowSplineComponent UFollowSplineComponent
---@field SplineComponent USplineComponent
local AMovingPlatform_Spline = {}



---@class ANPCSpawner : ASpawner
---@field RootSceneComponent USceneComponent
---@field ConditionRefreshComponent UGameplayConditionRefreshComponent
---@field NPCClass TSoftClassPtr<ACharacterZionNPC>
---@field NPCDataList TArray<FSpawnerNPCData>
---@field SpawnedNPC AActor
local ANPCSpawner = {}



---@class AOneWayPlatform : AActor
---@field SceneRootComponent USceneComponent
---@field PlatformComponent USceneComponent
---@field BlockerComponent UStaticMeshComponent
---@field CollisionEnablerComponent UBoxComponent
---@field CollisionDisablerComponent UBoxComponent
---@field bIsFallThrough boolean
---@field bCheckCharacterBelowPlatform boolean
---@field InsideUnderBoxActors TSet<AActor>
---@field FallThroughIgnoredActors TSet<AActor>
local AOneWayPlatform = {}

---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AOneWayPlatform:OnComponentOverlapEnd(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AOneWayPlatform:OnComponentOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@return boolean
function AOneWayPlatform:IsFallThrough() end


---@class APlayerCameraManagerZion : APlayerCameraManager
---@field GameplayCameraClass TSubclassOf<AGameplayCamera>
---@field MainMPC UMaterialParameterCollection
---@field BlackBordersMPC UMaterialParameterCollection
---@field BlackBorderPostProcessMaterial UMaterialInterface
---@field bSimulateAspectRatioLock boolean
local APlayerCameraManagerZion = {}

---@param ViewTargetTransitionParams FViewTargetTransitionParams
---@param bInterruptOnGoingBlend boolean
function APlayerCameraManagerZion:SetViewTargetToGameplayCamera(ViewTargetTransitionParams, bInterruptOnGoingBlend) end
function APlayerCameraManagerZion:ResetCameraLocation() end
---@return AGameplayCamera
function APlayerCameraManagerZion:GetGameplayCamera() end
---@return FBox
function APlayerCameraManagerZion:GetActiveCameraClampBox() end
---@param WorldContextObject UObject
---@param PlayerControllerIndex int32
---@return APlayerCameraManagerZion
function APlayerCameraManagerZion:Get(WorldContextObject, PlayerControllerIndex) end


---@class APlayerControllerZion : APlayerControllerZionBase
---@field DefaultRespawnRestPointData FDataTableRowHandle
---@field PlayerUIClass TSubclassOf<UUserWidgetPlayerUI>
---@field WidgetMapClass TSubclassOf<UUserWidgetMap>
---@field SystemMPC UMaterialParameterCollection
---@field NewGameHPPercentage float
---@field SkillComponent USkillComponent
---@field EquipmentComponent UEquipmentComponent
---@field AssistComponent UAssistComponent
---@field PassiveComponent UPassiveComponent
---@field StatsControllerPlayerComponent UStatsControllerPlayerComponent
---@field InventoryComponent UInventoryComponent
---@field ItemStatsWatcherComponent UItemStatsWatcherComponent
---@field HealComponent UHealComponent
---@field PlayerCostumeComponent UPlayerCostumeComponent
---@field ShopInfoComponent UShopInfoComponent
---@field FieldTalkComponent UFieldTalkComponent
---@field FogOfWarComponent UFogOfWarComponent
---@field StoryLevelComponent UStoryLevelComponent
---@field CustomMarkerComponent UCustomMarkerComponent
---@field PathFollowingComponent UPathFollowingComponent
---@field PlayerUI UUserWidgetPlayerUI
---@field WidgetMap UUserWidgetMap
---@field RespawnRestPointID FName
---@field ClearedEvents TSet<FName>
---@field PreviousRunsClearedEvents TSet<FName>
---@field VisitedZones TSet<FClearActorData>
---@field VisitedAreas TSet<FName>
---@field DisplayedAreaNames TSet<FName>
---@field UsedMapTransitionSpawnPoints TSet<FMapTransitionSpawnPointData>
---@field AvailableRestPointEvents TArray<FName>
---@field ClearedRestPointEvents TArray<FName>
---@field CheckedRecollectionItems TSet<FName>
---@field KilledEnemies TSet<FName>
---@field AvailableExtraEnemyInfoItems TSet<FName>
---@field MinimapDisplayMode EWidgetMinimapDisplayMode
---@field RuntimeCheckpointData FRuntimeCheckpointData
---@field bPlayerTrailEnabled boolean
---@field CachePlayerTrailDataDelay float
---@field MaxPlayerTrailDataCount int32
---@field PlayerTrailDataDistanceThreshold float
---@field ClearPlayerTrailRespawnReasons TArray<ERespawnReason>
---@field SummonStash TArray<FSummonStashElement>
local APlayerControllerZion = {}

function APlayerControllerZion:UnlockFastTravel() end
function APlayerControllerZion:ShowPlayerUI() end
---@param NewRuntimeCheckpointData FRuntimeCheckpointData
---@return FRuntimeCheckpointData
function APlayerControllerZion:SetRuntimeCheckpointData(NewRuntimeCheckpointData) end
---@param InRespawnRestPointID FName
function APlayerControllerZion:SetRespawnRestPoint(InRespawnRestPointID) end
---@param NewMinimapDisplayMode EWidgetMinimapDisplayMode
---@return EWidgetMinimapDisplayMode
function APlayerControllerZion:SetMinimapDisplayMode(NewMinimapDisplayMode) end
function APlayerControllerZion:OnStoryLevelChanged() end
---@param RespawnReason ERespawnReason
function APlayerControllerZion:OnRespawnCompleted(RespawnReason) end
---@param TutorialIDs TArray<FName>
function APlayerControllerZion:OnRequestTutorials(TutorialIDs) end
function APlayerControllerZion:OnPawnDeathProcessEnd() end
function APlayerControllerZion:OnGameReady() end
function APlayerControllerZion:OnGameMapChangeStart() end
---@param GameMapID FName
function APlayerControllerZion:OnGameMapChangeFinished(GameMapID) end
---@param AreaName FName
function APlayerControllerZion:OnDisplayAreaName(AreaName) end
---@param AchievementID FName
function APlayerControllerZion:OnAchievementUnlocked(AchievementID) end
---@param RestEventID FName
function APlayerControllerZion:MarkRestEventAsSeen(RestEventID) end
---@param RecollectionItem FDataTableRowHandle
function APlayerControllerZion:MarkRecollectionItemAsChecked(RecollectionItem) end
---@param ExtraEnemyInfoItem FDataTableRowHandle
function APlayerControllerZion:MarkExtraEnemyInfoAsAvailable(ExtraEnemyInfoItem) end
---@param EventAsset UEventAsset
function APlayerControllerZion:MarkEventAsCleared(EventAsset) end
---@param EnemyDataHandle FDataTableRowHandle
function APlayerControllerZion:MarkEnemyAsKilled(EnemyDataHandle) end
function APlayerControllerZion:LockFastTravel() end
---@param TutorialHook ETutorialHook
function APlayerControllerZion:LaunchTutorialHook(TutorialHook) end
---@param ZoneActorData FClearActorData
---@return boolean
function APlayerControllerZion:IsZoneVisited(ZoneActorData) end
---@param EventAsset TSoftObjectPtr<UEventAsset>
---@return boolean
function APlayerControllerZion:IsSoftEventCleared(EventAsset) end
---@param RestEventID FName
---@return boolean
function APlayerControllerZion:IsRestEventAvailable(RestEventID) end
---@param RecollectionItem FDataTableRowHandle
---@return boolean
function APlayerControllerZion:IsRecollectionItemChecked(RecollectionItem) end
---@param MapTransitionSpawnPointData FMapTransitionSpawnPointData
---@return boolean
function APlayerControllerZion:IsMapTransitionSpawnPointUsed(MapTransitionSpawnPointData) end
---@return boolean
function APlayerControllerZion:IsInEvent() end
---@return boolean
function APlayerControllerZion:IsFastTravelLocked() end
---@param ExtraEnemyInfoItem FDataTableRowHandle
---@return boolean
function APlayerControllerZion:IsExtraEnemyInfoAvailable(ExtraEnemyInfoItem) end
---@param EventId FName
---@param CheckMode EEventClearedCheckMode
---@return boolean
function APlayerControllerZion:IsEventCleared(EventId, CheckMode) end
---@param EnemyDataHandle FDataTableRowHandle
---@return boolean
function APlayerControllerZion:IsEnemyKilled(EnemyDataHandle) end
---@return boolean
function APlayerControllerZion:IsBackToRestPointLocked() end
---@param AreaName FName
---@return boolean
function APlayerControllerZion:IsAreaVisited(AreaName) end
---@param AreaName FName
---@return boolean
function APlayerControllerZion:IsAreaNameDisplayed(AreaName) end
---@param bInstant boolean
function APlayerControllerZion:HidePlayerUI(bInstant) end
---@return boolean
function APlayerControllerZion:HasAvailableRestEvent() end
---@return UUserWidgetMap
function APlayerControllerZion:GetWidgetMap() end
---@return FRuntimeCheckpointData
function APlayerControllerZion:GetRuntimeCheckpointData() end
---@return FName
function APlayerControllerZion:GetRespawnRestPointID() end
---@return UUserWidgetPlayerUI
function APlayerControllerZion:GetPlayerUI() end
---@return EWidgetMinimapDisplayMode
function APlayerControllerZion:GetMinimapDisplayMode() end
---@param out_RestPointEventRowHandle FDataTableRowHandle
---@param out_RestPointEventData FRestPointEventData
---@return boolean
function APlayerControllerZion:GetAvailableRestEvent(out_RestPointEventRowHandle, out_RestPointEventData) end
---@param WorldContextObject UObject
---@param PlayerIndex int32
---@return APlayerControllerZion
function APlayerControllerZion:Get(WorldContextObject, PlayerIndex) end
function APlayerControllerZion:FullyRestore() end
function APlayerControllerZion:FlushSpiritCache() end
---@param AreaName FName
function APlayerControllerZion:DisplayAreaName(AreaName) end
---@param EventId FName
---@param bCleared boolean
---@return boolean
function APlayerControllerZion:DebugMarkEventAsCleared(EventId, bCleared) end
---@param RestEventID FName
---@param bAvailable boolean
function APlayerControllerZion:DBG_SetRestEventAvailable(RestEventID, bAvailable) end
---@param RestEventID FName
function APlayerControllerZion:AddRestEvent(RestEventID) end


---@class APlayerControllerZionBase : APlayerController
local APlayerControllerZionBase = {}


---@class APlayerStartZion : APlayerStart
local APlayerStartZion = {}


---@class APlayerStartZionMovable : APlayerStartZion
local APlayerStartZionMovable = {}


---@class ASpawner : AActor
local ASpawner = {}


---@class ASpineActor : AActor
---@field RootSceneComponent USceneComponent
---@field SpineAnimationComponent USpineSkeletonAnimationExComponent
---@field SpineRendererComponent USpineSkeletonRendererComponent
---@field TrackIndex int32
---@field bFlushAnimationsOnActivate boolean
---@field bAutoDeactivate boolean
local ASpineActor = {}

function ASpineActor:OnActivate() end
function ASpineActor:Deactivate() end
---@param AnimationDefinitions TArray<FSpineSimpleAnimationDefinition>
function ASpineActor:Activate(AnimationDefinitions) end


---@class ASpiritCooldown : AActor
---@field SceneRootComponent USceneComponent
---@field FollowTargetComponent UFollowTargetComponent
---@field SpriteComponent UPaperSpriteComponent
---@field NiagaraComponent UNiagaraComponent
---@field PlayerControllerZion APlayerControllerZion
---@field MID_Sprite UMaterialInstanceDynamic
local ASpiritCooldown = {}

---@param Pawn APawn
function ASpiritCooldown:OnUnPossessPlayer(Pawn) end
---@param PSystem UNiagaraComponent
function ASpiritCooldown:OnNiagaraSystemFinished(PSystem) end
function ASpiritCooldown:OnLaunch() end
function ASpiritCooldown:OnFinished() end
function ASpiritCooldown:OnEventStopped() end
function ASpiritCooldown:OnEventStarted() end
function ASpiritCooldown:OnCooldownCompleted() end
---@param CommandSetFinished UCommandSet
---@param bReset boolean
function ASpiritCooldown:OnCommandFinishCooldown(CommandSetFinished, bReset) end


---@class AStaticVolume : AActor
---@field RootSceneComponent USceneComponent
---@field BillboardComponent UBillboardComponent
local AStaticVolume = {}



---@class AStaticVolume_Ability : AStaticVolume
---@field AbilityComponent UAbilityComponent
---@field AbilityData FAbilityData
---@field AbilityTriggerDelay float
---@field Targets TArray<AActor>
local AStaticVolume_Ability = {}



---@class AStaticVolume_AddForce : AStaticVolume
---@field MoveForce FVector
---@field MoveFactorCurve UCurveFloat
---@field AccumulateMode ERootMotionAccumulateMode
---@field bLocalSpace boolean
---@field FinishVelocitySettings FRootMotionFinishVelocitySettingsBP
---@field ValidMovementModes TArray<FMovementModeData>
---@field LoopFXs TArray<FSpineFXData>
---@field LoopFXInstances TMap<AActor, FNiagaraComponentList>
---@field InContactActors TSet<AActor>
---@field RootMotionsIDs TMap<ACharacter, uint16>
local AStaticVolume_AddForce = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function AStaticVolume_AddForce:OnCharacterMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end


---@class AStaticVolume_Audio : AStaticVolume
---@field ConditionChecker FGameplayConditionChecker
---@field bInfiniteExtent boolean
---@field Priority int32
---@field Settings FAudioVolumeSettings
---@field ConditionsFailedSettings FAudioVolumeSettings
---@field AdditionalSounds TArray<AFMODAmbientSound>
local AStaticVolume_Audio = {}

---@return boolean
function AStaticVolume_Audio:IsInfiniteExtent() end


---@class AStaticVolume_CameraModifier : AStaticVolume
---@field ActivationType ECameraModifierActivationType
---@field Priority int32
---@field BlendTimeIn float
---@field BlendTimeOut float
---@field bHasOverrideSettings boolean
---@field CameraOverrideSettings FGameplayCameraOverrideSettings
---@field bHasCameraClamp boolean
---@field CameraClampLocations TArray<ECameraClampLocation>
---@field bHasBlocker boolean
---@field bIsBlockerUp_Active boolean
---@field bIsBlockerDown_Active boolean
---@field bIsBlockerLeft_Active boolean
---@field bIsBlockerRight_Active boolean
---@field BlockerSize float
---@field WallFX UNiagaraSystem
---@field bHasFixedCamera boolean
---@field FixedCameraMatch EFixedCameraMatch
---@field FixedCameraType EFixedCameraType
---@field bHasBlackBorders boolean
---@field SceneRootComponent USceneComponent
---@field ActivationBoxComponent UBoxComponent
---@field ClampComponent UBoxComponent
---@field Blocker_Up UBoxComponent
---@field Blocker_Down UBoxComponent
---@field Blocker_Left UBoxComponent
---@field Blocker_Right UBoxComponent
---@field WallFXInstances TArray<UNiagaraComponent>
---@field CameraOverrideModule_FOV UCameraOverrideModule_FOV
---@field CameraOverrideModule_ZoomOffset UCameraOverrideModule_ZoomOffset
local AStaticVolume_CameraModifier = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function AStaticVolume_CameraModifier:OnActivationEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AStaticVolume_CameraModifier:OnActivationBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@return boolean
function AStaticVolume_CameraModifier:IsActive() end
function AStaticVolume_CameraModifier:Deactivate() end
function AStaticVolume_CameraModifier:Activate() end


---@class AStaticVolume_EmulatedFog : AStaticVolume
---@field FogArea UBoxComponent
---@field Settings FEmulatedFogSettings
---@field BlendIn float
---@field BlendOut float
local AStaticVolume_EmulatedFog = {}



---@class AStaticVolume_Physics : AStaticVolume
---@field MovementMode FMovementModeData
---@field Priority int32
---@field FluidFriction float
---@field TerminalVelocity float
---@field VirtualPhysicsVolume APhysicsVolume
local AStaticVolume_Physics = {}



---@class AStaticVolume_Physics_Fluid : AStaticVolume_Physics
local AStaticVolume_Physics_Fluid = {}


---@class AStaticVolume_Zone : AStaticVolume_CameraModifier
---@field PostProcessComponent UPostProcessComponent
---@field ZoneLevel TSoftObjectPtr<UWorld>
---@field bUsePostProcess boolean
---@field bUseFog boolean
---@field FogSettings FEmulatedFogSettings
---@field FogDepthMin float
---@field FogDepthMax float
---@field FogHeightMin float
---@field FogHeightMax float
local AStaticVolume_Zone = {}

---@param InZoneLevel UWorld
function AStaticVolume_Zone:SetZoneLevel(InZoneLevel) end


---@class AStoryEventMarkerLocation : AActor
---@field ActiveStoryLevels TArray<int32>
local AStoryEventMarkerLocation = {}



---@class ATrigger : AActor
---@field RootSceneComponent USceneComponent
---@field BillboardComponent UBillboardComponent
local ATrigger = {}



---@class ATrigger_Event : ATrigger
---@field EventDataList TArray<FEventData>
---@field ConditionRefreshComponent UGameplayConditionRefreshComponent
---@field LoadedEventAsset UEventAsset
---@field EventPlayer UEventPlayer
local ATrigger_Event = {}

---@param InEventPlayer UEventPlayer
---@param bCompletedEvent boolean
---@param EventResult EEventPlayerResult
function ATrigger_Event:OnEventFinished(InEventPlayer, bCompletedEvent, EventResult) end
function ATrigger_Event:OnEventFinish() end


---@class ATrigger_FieldMessage : ATrigger
---@field FieldMessageComponent UFieldMessageComponent
---@field ClearComponent UClearComponent
---@field FieldMessageAsset UFieldMessageAsset
---@field Cooldown float
---@field bAbortOnNewFieldMessage boolean
local ATrigger_FieldMessage = {}

function ATrigger_FieldMessage:OnFieldMessageFinished() end
---@param ClearStatus EClearStatus
function ATrigger_FieldMessage:OnClearStatusChecked(ClearStatus) end
---@param FieldMessageAssetOverride UFieldMessageAsset
function ATrigger_FieldMessage:LaunchFieldMessage(FieldMessageAssetOverride) end
---@return AActor
function ATrigger_FieldMessage:GetTargetActor() end


---@class ATrigger_FieldMessageNPC : ATrigger_FieldMessage
---@field ChildActorComponent UChildActorComponent
---@field ConditionRefreshComponent UGameplayConditionRefreshComponent
---@field NPCClass TSoftClassPtr<ACharacterZionNPC>
---@field NPCDataList TArray<FFieldMessageNPCData>
---@field OverrideFieldMessageAsset UFieldMessageAsset
local ATrigger_FieldMessageNPC = {}

---@param DestroyedActor AActor
function ATrigger_FieldMessageNPC:OnNPCDestroyed(DestroyedActor) end
---@return UShapeComponent
function ATrigger_FieldMessageNPC:GetCollisionComponent() end


---@class ATrigger_GameMapChange : ATrigger
---@field GameMap FDataTableRowHandle
---@field PlayerStartTag FName
---@field FadeOutDescription FFadeDescriptionData
---@field FadeInDescription FFadeDescriptionData
---@field ConditionChecker FGameplayConditionChecker
local ATrigger_GameMapChange = {}



---@class ATrigger_PlaySound : ATrigger
---@field AttachSoundSceneComponent USceneComponent
---@field bOneShot boolean
---@field SoundEventDataList TArray<FPlaySoundTriggerData>
---@field AudioInstances TArray<TWeakObjectPtr<UFMODAudioComponent>>
local ATrigger_PlaySound = {}



---@class ATrigger_RegisterRuntimeCheckpoint : ATrigger
---@field PlayerStartChildActor UChildActorComponent
---@field RuntimeCheckpointData FRuntimeCheckpointData
local ATrigger_RegisterRuntimeCheckpoint = {}

---@param PlayerActor AActor
function ATrigger_RegisterRuntimeCheckpoint:OnPlayerEndOverlap(PlayerActor) end


---@class ATrigger_RespawnToRuntimeCheckpoint : ATrigger
---@field FadeOutDescription FFadeDescriptionData
---@field FadeInDescription FFadeDescriptionData
---@field AbilityData FAbilityData
---@field RespawnDelay float
---@field AbilityComponent UAbilityComponent
---@field FactionComponent UFactionComponent
local ATrigger_RespawnToRuntimeCheckpoint = {}

function ATrigger_RespawnToRuntimeCheckpoint:OnRespawnTimerFinished() end


---@class AWorldSpaceWidgetHolder : AActor
---@field WidgetComponent UWidgetComponent
local AWorldSpaceWidgetHolder = {}

---@param WorldObjectContext UObject
---@param UserWidgetWorldSpaceClass TSubclassOf<UUserWidgetWorldSpace>
---@param ReleaseMode EWidgetReleaseMode
---@return AWorldSpaceWidgetHolder
function AWorldSpaceWidgetHolder:CreateWorldSpaceWidgetHolder(WorldObjectContext, UserWidgetWorldSpaceClass, ReleaseMode) end


---@class FAIData
---@field BlackboardData TSoftObjectPtr<UBlackboardData>
---@field BehaviorTree_Aggression TSoftObjectPtr<UBehaviorTree>
---@field BehaviorTree_Idle TSoftObjectPtr<UBehaviorTree>
---@field TargetDetectionType EAITargetDetectionType
---@field MinDetectionDistance float
---@field MaxDetectionDistance float
---@field bCheckFront boolean
---@field bCheckLineOfSight boolean
---@field bInAmbush boolean
---@field PatrolRange float
local FAIData = {}



---@class FAbilityAdditionalData
---@field CommandSetCategory ECommandSetCategory
---@field SourceOverride AActor
local FAbilityAdditionalData = {}



---@class FAbilityArray
local FAbilityArray = {}


---@class FAbilityContextData
local FAbilityContextData = {}


---@class FAbilityData
---@field AbilityClass TSubclassOf<AAbility>
---@field AbilityEffectProcessClass TSubclassOf<UAbilityEffectProcess>
---@field AbilityModifiers FAbilityModifiers
---@field OriginActorType EAbilityOriginActorType
---@field ClosestEnemySearchParameters FActorSearchParameters
---@field SpawnBone ESpineBone
---@field SpawnBoneCustomName FName
---@field RotationMode ESpineBoneRotationMode
---@field bAttachToBone boolean
---@field LocalSpaceOffset FTransform
---@field bSnapToGround boolean
---@field bOverrideZOffsetFromGround boolean
---@field ZOverrideOffsetFromGround float
---@field GroundCollisionChannel ECollisionChannel
---@field GroundMaxDistance float
---@field bNoGroundCancelAbility boolean
---@field FXDataList TArray<FSpineFXData>
local FAbilityData = {}



---@class FAbilityDataList
---@field Abilities TArray<FAbilityData>
local FAbilityDataList = {}



---@class FAbilityEffectProcessCollection
---@field Processes TArray<UAbilityEffectProcess>
local FAbilityEffectProcessCollection = {}



---@class FAbilityModifiers
---@field bDirectionModeOverride boolean
---@field DirectionModeOverride EAbilityDirectionMode
---@field DamageHPFactor float
---@field bTypeOverride boolean
---@field TypeOverride EAttackType
---@field bElementOverride boolean
---@field ElementOverride EAttackElement
---@field bWeightCategoryOverride boolean
---@field WeightCategoryOverride EAbilityWeightCategory
---@field bAutoStopTimeOverride boolean
---@field AutoStopTimeOverride float
---@field bWarnLongExecution boolean
local FAbilityModifiers = {}



---@class FAbilityVisualCue
---@field bUseVisualCue boolean
---@field bOverrideLeadTime boolean
---@field LeadTimeOverride float
---@field bOverrideFX boolean
---@field FXOverride FSpineFXData
local FAbilityVisualCue = {}



---@class FAchievementData : FTableRowBase
---@field Achievement EZionAchievement
---@field Name FText
---@field Description FText
---@field LockedIcon TSoftObjectPtr<UPaperSprite>
---@field UnlockedIcon TSoftObjectPtr<UPaperSprite>
---@field bIsHidden boolean
local FAchievementData = {}



---@class FActionToFXMap
---@field Actions TMap<EEffectActionType, FSpineFXData>
local FActionToFXMap = {}



---@class FActionToMaterialMap
---@field Actions TMap<EEffectActionType, FMaterialToSoundMap>
local FActionToMaterialMap = {}



---@class FActorSearchParameters
---@field MinDistance float
---@field MaxDistance float
---@field bNeedLineOfSight boolean
---@field VisibilityChannel ECollisionChannel
---@field bFrontCheck boolean
local FActorSearchParameters = {}



---@class FAnimationDefinitionList
---@field AnimationDefinitions TArray<FSpineAnimationDefinition>
local FAnimationDefinitionList = {}



---@class FAnimationNameData
---@field AnimationNames TArray<FString>
---@field AnimationDisplayName FText
---@field AdditionalAnimations TArray<FString>
local FAnimationNameData = {}



---@class FAptitudeArray
---@field AllowedAptitudes TArray<EAptitudeType>
---@field NotAllowedAptitudes TArray<EAptitudeType>
local FAptitudeArray = {}



---@class FAudioVolumeSettings
---@field bOverrideBGM boolean
---@field BGM UFMODEvent
---@field bOverrideAmbience boolean
---@field Ambience UFMODEvent
---@field bOverrideRestPointProximity boolean
---@field bRestPointProximity boolean
local FAudioVolumeSettings = {}



---@class FAuraFXData
---@field FXData FSpineFXData
---@field DeactivateTiming EAuraFXDeactivateTiming
local FAuraFXData = {}



---@class FAuraFXDataList
---@field AuraFXList TArray<FAuraFXData>
local FAuraFXDataList = {}



---@class FAuraFXRuntimeData
---@field NiagaraComponent UNiagaraComponent
local FAuraFXRuntimeData = {}



---@class FBlendEmulatedFogSettings
---@field FirstFog FEmulatedFogSettings
---@field SecondFog FEmulatedFogSettings
local FBlendEmulatedFogSettings = {}



---@class FBreakDropData : FTableRowBase
---@field DropForBreakTypes TMap<EBreakType, FDataTableRowHandle>
local FBreakDropData = {}



---@class FCachedCommands
---@field Commands TArray<UCommand>
local FCachedCommands = {}



---@class FChargeReleaseData
---@field Time float
---@field CommandClasses TArray<TSubclassOf<UCommand>>
local FChargeReleaseData = {}



---@class FChoiceEntryData
---@field Text FText
---@field Value FName
local FChoiceEntryData = {}



---@class FClearActorData
---@field WorldName FName
---@field ActorID FName
local FClearActorData = {}



---@class FClearManagerSaveData
---@field ClearedActors TMap<FName, FNameSet>
---@field PreviousRunsClearedSavedActors TMap<FName, FNameSet>
local FClearManagerSaveData = {}



---@class FCommandClassList
---@field List TArray<TSubclassOf<UCommand>>
local FCommandClassList = {}



---@class FCommandLayer
---@field CurrCommand UCommand
---@field CommandQueue TArray<UCommand>
---@field LayerType ECommandLayerType
local FCommandLayer = {}



---@class FCommandSettings
---@field Category ECommandCategory
---@field Priority ECommandPriorityType
---@field CommandLayer ECommandLayerType
---@field InputAction UInputAction
---@field bRemoveOnStartFailure boolean
---@field InputActionTriggerMode EInputActionTriggerMode
---@field BufferTTL float
---@field CommandClass TSubclassOf<UCommand>
local FCommandSettings = {}



---@class FCommandSettingsContainer
---@field CommandSettings FCommandSettings
---@field CommandSet UCommandSet
local FCommandSettingsContainer = {}



---@class FCompressedRenderTarget
---@field Buffer TArray<uint8>
---@field UncompressedSize int32
---@field CompressionName FName
---@field SizeX int32
---@field SizeY int32
local FCompressedRenderTarget = {}



---@class FConditionedFieldMessageData
---@field ConditionChecker FGameplayConditionChecker
---@field Messages TArray<FFieldMessageData>
local FConditionedFieldMessageData = {}



---@class FConditionedTexture
---@field Condition FGameplayConditionChecker
---@field Texture TSoftObjectPtr<UTexture2D>
local FConditionedTexture = {}



---@class FCurrencyTransactionInfos
---@field CurrencyType ECurrencyType
---@field CostType EValueType
---@field FixedValue int32
---@field ValueCurve FCustomRuntimeFloatCurve
local FCurrencyTransactionInfos = {}



---@class FCurrencyValue
---@field CurrencyType ECurrencyType
---@field Value int32
local FCurrencyValue = {}



---@class FCustomMarkerSaveData
---@field PlacedCustomMarkers TSet<FMapCustomMarkerIconData>
local FCustomMarkerSaveData = {}



---@class FCustomRuntimeFloatCurve : FRuntimeFloatCurve
local FCustomRuntimeFloatCurve = {}


---@class FDamageData
---@field Damage int32
---@field Element EAttackElement
---@field Type EAttackType
---@field AppliedRate float
---@field AppliedDamagePercentageBonus int32
---@field AppliedDamageCutPercentage int32
local FDamageData = {}



---@class FDashChargeSettings
---@field Mode EDashChargeMode
---@field AbilityData FAbilityData
---@field SpiritClass TSubclassOf<ACharacterZionSpirit>
---@field SummonParameters FSpiritSummonParameters
---@field OrientationMode EDashChargeOrientationMode
---@field bBlendOrientation boolean
---@field BlendOrientationSpeed float
---@field RideStartAnimation FSpineAnimationDefinition
---@field DefaultSpiritAnimations TArray<FSpineAnimationDefinition>
---@field SpiritAnimationMode EDashChargeAnimationMode
---@field AnimationDataForNames TMap<FString, FSpineAnimationDefinition>
---@field SpiritAnimation_Up FSpineAnimationDefinition
---@field SpiritAnimation_UpLateral FSpineAnimationDefinition
---@field SpiritAnimation_Lateral FSpineAnimationDefinition
---@field SpiritAnimation_DownLateral FSpineAnimationDefinition
---@field SpiritAnimation_Down FSpineAnimationDefinition
---@field ValidMovementModes TSet<EMovementMode>
---@field DashChargeSoundData FSoundData
---@field DashChargeLoopSoundData FSoundData
local FDashChargeSettings = {}



---@class FDashToData
---@field MoveDelay float
---@field MoveVelocity FVector
---@field MoveFactorCurve UCurveFloat
---@field FinishVelocitySettings FRootMotionFinishVelocitySettingsBP
---@field bToggleFacingOnStop boolean
---@field DashAnimations TArray<FSpineAnimationDefinition>
---@field DashStopAnimations TArray<FSpineAnimationDefinition>
local FDashToData = {}



---@class FDataTableRowHandleKey
---@field DataTable TSoftObjectPtr<UDataTable>
---@field Name FName
local FDataTableRowHandleKey = {}



---@class FDecoratorNearGroundDirectionData
---@field GroundCheckDirectionOffset float
---@field GroundCheckDistance float
local FDecoratorNearGroundDirectionData = {}



---@class FDifficultySettings
---@field EnemyMaxHPFactor float
---@field EnemyAttackFactor float
---@field EnemyActionFrequency float
---@field EnemyStaminaFactor float
---@field EnemyStaminaRecoverySpeedFactor float
---@field bPlayerOneShotKill boolean
---@field bPlayerNoHeal boolean
---@field bEnemyNoLeadFX boolean
local FDifficultySettings = {}



---@class FDifficultySystemSaveData
---@field DifficultyPreset EDifficultyPreset
---@field DifficultySettings FDifficultySettings
---@field BossRushDifficultyPreset EDifficultyPreset
---@field BossRushDifficultySettings FDifficultySettings
local FDifficultySystemSaveData = {}



---@class FDrop
---@field Type EDropType
---@field Item FDataTableRowHandle
---@field CurrencyType ECurrencyType
---@field CollectableGameplayEffectClass TSoftClassPtr<ACollectable_GameplayEffect>
---@field CountType EValueType
---@field Count int32
---@field CountCurve FRuntimeFloatCurve
---@field RandomMinCount int32
---@field RandomMaxCount int32
---@field RandomMinCountCurve FRuntimeFloatCurve
---@field RandomMaxCountCurve FRuntimeFloatCurve
local FDrop = {}



---@class FDropData : FTableRowBase
---@field Drops TArray<FDropGroup>
local FDropData = {}



---@class FDropGroup
---@field DropRatio float
---@field Drops TArray<FDrop>
local FDropGroup = {}



---@class FDropHistoryElement
---@field DropSourceID FDropSourceID
---@field DropTime double
local FDropHistoryElement = {}



---@class FDropSourceID
---@field WorldName FName
---@field ActorID FName
---@field DropTag FName
local FDropSourceID = {}



---@class FDropSystemSaveData
---@field CurrentTime double
---@field History TArray<FDropHistoryElement>
local FDropSystemSaveData = {}



---@class FEmulatedFogAxisSettings
---@field Min float
---@field Max float
---@field Opacity float
---@field BlendType EEmulatedFogBlendType
---@field MinColor FLinearColor
---@field MaxColor FLinearColor
---@field GradientRow int32
local FEmulatedFogAxisSettings = {}



---@class FEmulatedFogSettings
---@field DepthFog FEmulatedFogAxisSettings
---@field HeightFog FEmulatedFogAxisSettings
---@field WindSettings FEmulatedFogWindSettings
local FEmulatedFogSettings = {}



---@class FEmulatedFogWindSettings
---@field WindScale FVector
---@field WindDirection FVector
---@field WindStrength float
local FEmulatedFogWindSettings = {}



---@class FEnemyData : FTableRowBase
---@field Name FText
---@field CharacterClass TSoftClassPtr<ACharacterZion>
---@field AIControllerClass TSoftClassPtr<AAIControllerZion_Enemy>
---@field LevelTable TSoftObjectPtr<UDataTable>
---@field AIData FAIData
---@field ExtraEnemyInfo TArray<FDataTableRowHandle>
local FEnemyData = {}



---@class FEnemyRepulsionData
---@field MaxSpeedReductionFactor float
---@field MinForceFactor float
---@field MaxForceFactor float
---@field ForceFactorCurve FRuntimeFloatCurve
local FEnemyRepulsionData = {}



---@class FEnemyRepulsionSetupData
---@field RepulsionColliderReference FComponentReference
---@field bOverrideDefaultValues boolean
---@field RepulsionData FEnemyRepulsionData
local FEnemyRepulsionSetupData = {}



---@class FEnemyStatsLevelData : FStatsLevelData
---@field Drop FDataTableRowHandle
---@field ExperienceDrop int32
local FEnemyStatsLevelData = {}



---@class FEquippedAssist
---@field AssistInstance UAssist
---@field AssistVisual AAssistVisual
local FEquippedAssist = {}



---@class FEquippedItem
local FEquippedItem = {}


---@class FEquippedSkillData
---@field CommandSet UCommandSet
---@field SpecialCommandSet UCommandSet
local FEquippedSkillData = {}



---@class FEventData
---@field Conditions FGameplayConditionChecker
---@field EventAsset TSoftObjectPtr<UEventAsset>
---@field ActorBindings TMap<FName, AActor>
---@field SpawnerBindings TMap<FName, ASpawner>
---@field DefaultEventValues FEventBlackboardInit
local FEventData = {}



---@class FExtendedStatsData
---@field Stats FStatsLevelData
---@field HealCount int32
---@field HealPower int32
---@field PassiveSlot int32
---@field ShopLevel int32
local FExtendedStatsData = {}



---@class FExtraItemZoomData
---@field bOverrideDefaultZoom boolean
---@field DefaultZoom float
---@field bOverrideMinZoom boolean
---@field MinZoom float
---@field bOverrideMaxZoom boolean
---@field MaxZoom float
local FExtraItemZoomData = {}



---@class FFadeDescriptionData
---@field FadeClass TSubclassOf<UUserWidgetFade>
---@field FadeParameters FFadeParameters
---@field Layer EUMGLayer
local FFadeDescriptionData = {}



---@class FFadeParameters
---@field Time float
---@field Color FLinearColor
local FFadeParameters = {}



---@class FFadeRuntimeData
---@field InstanceForFadeClasses TMap<TSubclassOf<UUserWidgetFade>, TWeakObjectPtr<UUserWidgetFade>>
local FFadeRuntimeData = {}



---@class FFieldMessageData
---@field Text FText
---@field Duration float
---@field ActorAnimations TArray<FSpineAnimationDefinition>
local FFieldMessageData = {}



---@class FFieldMessageNPCData
---@field Conditions FGameplayConditionChecker
---@field bOverrideFieldMessageAsset boolean
---@field FieldMessageAsset TSoftObjectPtr<UFieldMessageAsset>
---@field bOverrideCooldown boolean
---@field Cooldown float
---@field bOverrideAnimations boolean
---@field IdleAnimations TArray<FSpineAnimationDefinition>
---@field bUseAI boolean
---@field AIData FNPCAIData
local FFieldMessageNPCData = {}



---@class FFieldTalkData
---@field bCanBeSkipped boolean
---@field StartDelay float
---@field Entries TArray<FFieldTalkEntry>
local FFieldTalkData = {}



---@class FFieldTalkEntry
---@field ActorName FText
---@field Text FText
---@field TextDuration float
local FFieldTalkEntry = {}



---@class FFindClosestEnemySettings
---@field TargetDetectionType EAITargetDetectionType
---@field MinDetectionDistance float
---@field MaxDetectionDistance float
---@field bCheckFront boolean
---@field bCheckLineOfSight boolean
local FFindClosestEnemySettings = {}



---@class FFogOfWarSaveData
---@field MapFogOfWarBuffers TMap<FName, FCompressedRenderTarget>
local FFogOfWarSaveData = {}



---@class FFollowGeometryMovementData
---@field InitialLocalSpaceVelocity FVector
---@field HalfWidth float
---@field HalfHeight float
---@field DetectionSphereRadius float
---@field GroundDetectionRange float
---@field MaxSpeed float
---@field bSweep boolean
---@field TeleportType ETeleportType
local FFollowGeometryMovementData = {}



---@class FFootIKSettings
---@field MinHeightOffset float
---@field MaxHeightOffset float
---@field ValidSlopeAngle float
---@field LinecastYAxisOffset_Left float
---@field LinecastYAxisOffset_Right float
local FFootIKSettings = {}



---@class FFooterData
---@field InputElement FRichTextInputElement
---@field Label FText
local FFooterData = {}



---@class FGameAchievementsData
---@field GameAchievements TArray<FName>
local FGameAchievementsData = {}



---@class FGameInputSettingsData
---@field Version int32
---@field BindingsData TArray<FInputBindingData>
local FGameInputSettingsData = {}



---@class FGameMapChangeProviderData
---@field MapTransitionHandle FDataTableRowHandle
---@field StartWorldLocation FVector
---@field DestinationWorldLocation FVector
local FGameMapChangeProviderData = {}



---@class FGameMapData : FTableRowBase
---@field World TSoftObjectPtr<UWorld>
---@field WidgetMapArea TSoftClassPtr<UUserWidgetMapArea>
---@field MapAreaDisplayName FText
---@field MapAreaData FMapAreaData
---@field MapAreaZoneData FMapAreaZoneData
local FGameMapData = {}



---@class FGameMenuPageData
---@field PageClass TSubclassOf<UUserWidgetGameMenu_Page>
---@field PageInstance UUserWidgetGameMenu_Page
local FGameMenuPageData = {}



---@class FGameModeSaveData
---@field EnvironmentLevel int32
---@field ReachedGameEndings TMap<EGameEndingType, int32>
---@field PreviousCumulatedReachedGameEndings TMap<EGameEndingType, int32>
---@field NewGamePlusGeneration int32
---@field EnvironmentLevelForGameMaps TMap<FName, int32>
---@field GameStats FGameStatsSaveData
---@field ClearManager FClearManagerSaveData
---@field RenderStateManager FRenderStateManagerSaveData
---@field DifficultySystem FDifficultySystemSaveData
---@field DropSystem FDropSystemSaveData
---@field BossRush FRecollectionBossRushSaveData
---@field RecollectionBoss FRecollectionBossSaveData
local FGameModeSaveData = {}



---@class FGameSettingsData
---@field bInitialSettingsDone boolean
---@field bAutoUploadCrashReport boolean
---@field Gamma float
---@field ResolutionScale float
---@field Language FString
---@field bDisplayDamageValues boolean
---@field bDisplayHealValues boolean
---@field bDisplayHPAboveGauge boolean
---@field ControllerVibration float
---@field CameraShake float
---@field bCameraOscillation boolean
---@field bHoldDownToDodgeStill boolean
---@field AutoClimbDirectionMode EAutoClimbDirectionMode
---@field bDisplayPlayerUI boolean
---@field bDisplayEnemyGauges boolean
---@field bDisplayTutorials boolean
---@field bAutoSkipAlreadySeenEvents boolean
---@field bDisplayAchievementNotifications boolean
---@field ConstraintCameraAspectRatio EConstraintCameraAspectRatio
---@field AntiAliasingMethod EAntiAliasingMethod
---@field UIAspectRatio EConstraintCameraAspectRatio
---@field bConstraintHUDAspectRatio boolean
---@field LeftStickDeadZone float
---@field RightStickDeadZone float
---@field ReachedGameEndings TArray<EGameEndingType>
---@field TitleScreenType EGameEndingType
---@field LowHPFeedbackOpacity float
local FGameSettingsData = {}



---@class FGameStatsSaveData
---@field PlayTime int32
---@field PlayTimeDecimal double
local FGameStatsSaveData = {}



---@class FGameplayCameraOverrideSettings
---@field OverrideSettings TArray<UCameraOverrideModule>
local FGameplayCameraOverrideSettings = {}



---@class FGameplayCameraSettings
---@field SettingsEaseOutExp float
---@field CameraSpeed float
---@field MinMaxBlendSpeed float
---@field WorldLocationOffset FVector2D
---@field ZoomOffsetOverrideType ECameraModuleOverrideType
---@field ZoomOffset float
---@field ZoomOffsetFactor float
---@field FOVOverrideType ECameraModuleOverrideType
---@field FOV float
---@field FOVFactor float
---@field LocalOffsetBlendType ECameraLocalOffsetBlendType
---@field LocalLocationOffset FVector2D
---@field LocalOffsetSpeed float
---@field LocalOffsetEaseExp float
---@field MaxInputLocationOffset FVector2D
---@field InputLocationOffsetSpeed float
---@field PlayerBoundsFactor float
---@field EnemyBoundsFactor float
---@field bCenterHorizontal boolean
---@field bCenterVertical boolean
local FGameplayCameraSettings = {}



---@class FGameplayConditionChecker
---@field Operator EConditionOperator
---@field GameplayConditions TArray<UGameplayCondition>
local FGameplayConditionChecker = {}



---@class FGuardMaterialToSoundMap
---@field GuardMaterials TMap<EEffectGuardMaterialType, FSoundDataGroup>
local FGuardMaterialToSoundMap = {}



---@class FHitData
local FHitData = {}


---@class FIgnoredPlatformData
local FIgnoredPlatformData = {}


---@class FInputActions
---@field InputAction UInputAction
---@field SpecialInputAction UInputAction
local FInputActions = {}



---@class FInputBindingData
---@field Mapping_Name FName
---@field Mapping_Key FKey
local FInputBindingData = {}



---@class FInputDescription
---@field InputType EInputType
---@field UIInputType EUIInputType
---@field ActionInputType EActionInputType
---@field InputAction UInputAction
local FInputDescription = {}



---@class FInputSettingsData
---@field GameInputSettingsData FGameInputSettingsData
---@field UIInputSettingsData FUIInputSettingsData
---@field InputStyleGamepadOverride EInputStyle
local FInputSettingsData = {}



---@class FInputSnapshot
---@field MoveInput FVector2D
---@field InputDirection EInputDirection
---@field TriggeringInputs TMap<UInputAction, FInputActionValue>
---@field JustTriggeredInputs TMap<UInputAction, FInputActionValue>
local FInputSnapshot = {}



---@class FInteractableNPCData
---@field Conditions FGameplayConditionChecker
---@field bOverrideEventAsset boolean
---@field EventAsset TSoftObjectPtr<UEventAsset>
---@field bOverrideAnimations boolean
---@field IdleAnimations TArray<FSpineAnimationDefinition>
---@field bOverrideFacing boolean
---@field Facing EFacingType
local FInteractableNPCData = {}



---@class FInventoryItemAptitudeData : FInventoryItemGrantData
---@field AptitudeType EAptitudeType
local FInventoryItemAptitudeData = {}



---@class FInventoryItemAssistData : FInventoryItemBaseEquipmentData
---@field AssistClass TSoftClassPtr<UAssist>
---@field AssistActorClass TSoftClassPtr<AAssistVisual>
local FInventoryItemAssistData = {}



---@class FInventoryItemBaseEquipmentData : FInventoryItemData
---@field Stats FExtendedStatsData
local FInventoryItemBaseEquipmentData = {}



---@class FInventoryItemCostumeData : FInventoryItemGrantData
---@field bCanBeBought boolean
---@field Conditions FItemConditionData
---@field NotifyAsset TSoftObjectPtr<USpineNotifyAsset>
---@field AtlasAsset TSoftObjectPtr<USpineAtlasAsset>
---@field SkeletonDataAsset TSoftObjectPtr<USpineSkeletonDataAsset>
---@field CostumeFXs TMap<EPlayerCostumeFX, TSoftObjectPtr<UNiagaraSystem>>
local FInventoryItemCostumeData = {}



---@class FInventoryItemCurrencyData : FInventoryItemData
---@field Currency ECurrencyType
local FInventoryItemCurrencyData = {}



---@class FInventoryItemData : FTableRowBase
---@field ItemType EInventoryItemType
---@field EquipmentType EEquipmentType
---@field Icon TSoftObjectPtr<UPaperSprite>
---@field Name FText
---@field Description FText
---@field DescriptionFormatElements TArray<FRichTextInputElement>
---@field DescriptionStringElements TArray<FString>
---@field FlavorText FText
---@field FlavorTextFormatElements TArray<FRichTextInputElement>
---@field FlavorStringElements TArray<FString>
---@field InventoryHideCondition TSubclassOf<UGameplayCondition>
---@field CollectableDropClass TSoftClassPtr<ACollectable_Drop>
---@field BuyInfo FCurrencyTransactionInfos
local FInventoryItemData = {}



---@class FInventoryItemEnemyInfoData : FInventoryItemGenericInfoData
---@field bAvailableOnNewGame boolean
local FInventoryItemEnemyInfoData = {}



---@class FInventoryItemEquipmentData : FInventoryItemBaseEquipmentData
---@field CommandSet TSoftObjectPtr<UCommandSet>
---@field InputAction UInputAction
local FInventoryItemEquipmentData = {}



---@class FInventoryItemGalleryData : FInventoryItemData
---@field DisplayImage TSoftObjectPtr<UTexture2D>
---@field ZoomData FExtraItemZoomData
---@field Conditions FItemConditionData
local FInventoryItemGalleryData = {}



---@class FInventoryItemGenericAnimationData
---@field AnimationNameData FAnimationNameData
---@field bOverrideSkins boolean
---@field Skins TArray<FString>
---@field bOverrideLocomotionMode boolean
---@field LocomotionMode EExtraInfoLocomotionMode
---@field bOverrideSceneOffset boolean
---@field SceneOffset FVector2D
---@field bOverrideSpineWidgetOffset boolean
---@field SpineWidgetOffset FVector2D
---@field bOverrideRootMotionMode boolean
---@field RootMotionMode EExtraAnimationRootMotionMode
---@field AnimationDisplayConditions FItemGenericAnimationConditionData
local FInventoryItemGenericAnimationData = {}



---@class FInventoryItemGenericInfoData : FInventoryItemData
---@field bIsPlayer boolean
---@field Atlas TSoftObjectPtr<USpineAtlasAsset>
---@field SkeletonData TSoftObjectPtr<USpineSkeletonDataAsset>
---@field bOverrideNormalBlendMaterial boolean
---@field NormalBlendMaterial UMaterialInterface
---@field bOverrideScreenBlendMaterial boolean
---@field ScreenBlendMaterial UMaterialInterface
---@field LocomotionMode EExtraInfoLocomotionMode
---@field ZoomData FExtraItemZoomData
---@field SceneOffset FVector2D
---@field SpineWidgetOffset FVector2D
---@field RootMotionMode EExtraAnimationRootMotionMode
---@field Animations TArray<FInventoryItemGenericAnimationData>
local FInventoryItemGenericInfoData = {}



---@class FInventoryItemGrantData : FInventoryItemData
---@field bGrantOnNewGame boolean
local FInventoryItemGrantData = {}



---@class FInventoryItemKeyData : FInventoryItemData
local FInventoryItemKeyData = {}


---@class FInventoryItemMaterialData : FInventoryItemData
local FInventoryItemMaterialData = {}


---@class FInventoryItemNPCInfoData : FInventoryItemGenericInfoData
---@field Conditions FItemConditionData
local FInventoryItemNPCInfoData = {}



---@class FInventoryItemPassiveData : FInventoryItemGrantData
---@field SlotCost int32
---@field PassiveClass TSoftClassPtr<UPassive>
---@field bCanBeUpgraded boolean
---@field UpgradeData FPassiveUpgradeData
---@field CountType EPassiveCountType
local FInventoryItemPassiveData = {}



---@class FInventoryItemQuestData : FInventoryItemData
local FInventoryItemQuestData = {}


---@class FInventoryItemSkillData : FInventoryItemData
---@field SkillLevelTable UDataTable
---@field InitialLevel int32
---@field RestPointSpiritClass TSoftClassPtr<ACharacterZionSpirit>
---@field IdleSpiritClass TSoftClassPtr<ACharacterZionSpirit>
---@field AssociatedSpiritClass TSoftClassPtr<ACharacterZionSpirit>
---@field SpecialIcon TSoftObjectPtr<UPaperSprite>
---@field SpecialName FText
---@field SpecialDescription FText
---@field SpecialDescriptionFormatElements TArray<FRichTextInputElement>
---@field SpecialDescriptionStringElements TArray<FString>
---@field SpecialFlavorText FText
---@field SpecialFlavorTextFormatElements TArray<FRichTextInputElement>
---@field SpecialFlavorStringElements TArray<FString>
local FInventoryItemSkillData = {}



---@class FInventoryItemSpiritData : FInventoryItemGrantData
---@field Skills TArray<FDataTableRowHandle>
---@field AutoGrantSkills TArray<FDataTableRowHandle>
---@field MenuBackgroundImage TSoftObjectPtr<UTexture2D>
---@field SpiritSkillIcon TSoftObjectPtr<UPaperSprite>
---@field SpiritEquippedSkillIcon TSoftObjectPtr<UPaperSprite>
local FInventoryItemSpiritData = {}



---@class FInventoryItemStatsData : FInventoryItemGrantData
---@field BonusStats FExtendedStatsData
local FInventoryItemStatsData = {}



---@class FInventoryItemTipData : FInventoryItemData
local FInventoryItemTipData = {}


---@class FInventoryItemTutorialData : FInventoryItemData
---@field Hook ETutorialHook
---@field Condition TSubclassOf<UGameplayCondition>
---@field Video UPlatformMediaSource
---@field VideoOverrides TArray<FInventoryItemTutorialVideoOverrideData>
local FInventoryItemTutorialData = {}



---@class FInventoryItemTutorialVideoOverrideData
---@field Conditions FItemConditionData
---@field VideoOverride UPlatformMediaSource
local FInventoryItemTutorialVideoOverrideData = {}



---@class FInventoryItemUpgradeInfo
---@field UpgradeText FText
---@field UpgradeTextFormatElements TArray<FRichTextInputElement>
---@field UpgradeTextStringElements TArray<FString>
local FInventoryItemUpgradeInfo = {}



---@class FInventorySaveData
---@field Items TMap<FName, int32>
---@field Checked TSet<FName>
local FInventorySaveData = {}



---@class FItemConditionData
---@field ClearedEvents TArray<TSoftObjectPtr<UEventAsset>>
---@field EventCheckMode EEventClearedCheckMode
---@field OwnedItems TArray<FDataTableRowHandle>
---@field ReachedEndings TArray<EGameEndingType>
local FItemConditionData = {}



---@class FItemGenericAnimationConditionData
---@field SpiritLevelConditions TArray<FItemGenericAnimationSpiritLevelConditionData>
---@field RequiredAptitudes TArray<EAptitudeType>
local FItemGenericAnimationConditionData = {}



---@class FItemGenericAnimationSpiritLevelConditionData
---@field ConditionOperator ECommonOperator
---@field SpiritRowHandle FDataTableRowHandle
---@field SpiritLevel int32
local FItemGenericAnimationSpiritLevelConditionData = {}



---@class FItemHandleCount
---@field ItemHandle FDataTableRowHandle
---@field Count int32
local FItemHandleCount = {}



---@class FKnockbackData
---@field LocalSpaceImpulse_Grounded FVector
---@field LocalSpaceImpulse_Airborne FVector
---@field LocalSpaceImpulse_Swim FVector
---@field StaggerTime float
---@field bLaunchAutoRecovery boolean
---@field LaunchAutoRecoveryTime float
---@field bCanImpulseForceBeReduced boolean
---@field bApplyPostKnockbackStates boolean
local FKnockbackData = {}



---@class FLeveledShopData : FTableRowBase
---@field Items TArray<FShopItemData>
local FLeveledShopData = {}



---@class FLoadedIdleSpiritClass
---@field IdleSpiritClass TSubclassOf<ACharacterZionSpirit>
---@field AssociatedSpiritClass TSubclassOf<ACharacterZionSpirit>
local FLoadedIdleSpiritClass = {}



---@class FMapAreaData
---@field MapSize FVector2D
---@field CenterWorldLocation FVector
---@field MapResolution FIntPoint
---@field PixelAddedToMod4 FIntPoint
local FMapAreaData = {}



---@class FMapAreaZoneData
---@field ClearablesPerZones TMap<FName, FNameSet>
---@field ClearablesForRevealPerZones TMap<FName, FNameSet>
local FMapAreaZoneData = {}



---@class FMapCustomMarkerIconData
---@field MapName FName
---@field WorldLocation FVector
---@field MarkerID int32
local FMapCustomMarkerIconData = {}



---@class FMapIconProviderData
---@field MainActor AActor
---@field DependentActors TArray<AActor>
local FMapIconProviderData = {}



---@class FMapRestPointData
---@field RowName FName
local FMapRestPointData = {}



---@class FMapTransitionData
---@field GameMapID FDataTableRowHandle
---@field PlayerStartTag FName
local FMapTransitionData = {}



---@class FMapTransitionRowData : FTableRowBase
---@field TransitionSpawnPoints TArray<FMapTransitionData>
local FMapTransitionRowData = {}



---@class FMapTransitionSpawnPointData
---@field GameMapID FName
---@field PlayerStartTag FName
local FMapTransitionSpawnPointData = {}



---@class FMaterialToSoundMap
---@field Materials TMap<EEffectMaterialType, FSoundDataGroup>
local FMaterialToSoundMap = {}



---@class FMovementModeData
---@field MovementMode EMovementMode
---@field MovementModeCustom EMovementModeCustom
local FMovementModeData = {}



---@class FNPCAIData
---@field BlackboardData TSoftObjectPtr<UBlackboardData>
---@field BehaviorTree TSoftObjectPtr<UBehaviorTree>
---@field PatrolRange float
local FNPCAIData = {}



---@class FNameSet
---@field Set TSet<FName>
local FNameSet = {}



---@class FNiagaraComponentList
---@field List TArray<UNiagaraComponent>
local FNiagaraComponentList = {}



---@class FNotificationData
---@field Icon TSoftObjectPtr<UPaperSprite>
---@field Text FText
---@field Duration float
local FNotificationData = {}



---@class FObjectArray
---@field Entries TArray<UObject>
local FObjectArray = {}



---@class FPassiveRuntimeData
---@field PassiveID FName
---@field SlotCost int32
---@field PassiveInstance UPassive
local FPassiveRuntimeData = {}



---@class FPassiveUpgradeData
---@field bNewGamePlusOnly boolean
---@field UpgradePassive FDataTableRowHandle
---@field UpgradePrice FCurrencyTransactionInfos
---@field UpgradeInfos TArray<FInventoryItemUpgradeInfo>
local FPassiveUpgradeData = {}



---@class FPileAttackChargeLevel
---@field ChargeTime float
---@field States TArray<TSubclassOf<UState>>
---@field LaunchFXData FSpineFXData
---@field LoopFXData FSpineFXData
---@field AbilityData FAbilityData
---@field Commands TArray<TSubclassOf<UCommand>>
local FPileAttackChargeLevel = {}



---@class FPlaySoundTriggerData
---@field Event UFMODEvent
---@field PlayCount int32
---@field StartDelay float
local FPlaySoundTriggerData = {}



---@class FPlayerAssistLoadoutData
---@field AssistID FName
local FPlayerAssistLoadoutData = {}



---@class FPlayerAssistSaveData
---@field AssistID FName
---@field CurrentLoadoutIndex int32
---@field Loadouts TArray<FPlayerAssistLoadoutData>
local FPlayerAssistSaveData = {}



---@class FPlayerCostumeSaveData
---@field EquippedCostumeID FName
local FPlayerCostumeSaveData = {}



---@class FPlayerEquipmentLoadoutData
---@field EquippedItems TMap<EEquipmentSlot, FName>
local FPlayerEquipmentLoadoutData = {}



---@class FPlayerEquipmentSaveData
---@field EquippedItems TMap<EEquipmentSlot, FName>
---@field CurrentLoadoutIndex int32
---@field Loadouts TArray<FPlayerEquipmentLoadoutData>
local FPlayerEquipmentSaveData = {}



---@class FPlayerInventorySaveData
---@field CurrencyInventory FInventorySaveData
---@field AptitudeInventory FInventorySaveData
---@field SpiritInventory FInventorySaveData
---@field SkillInventory FInventorySaveData
---@field EquipmentInventory FInventorySaveData
---@field AssistInventory FInventorySaveData
---@field StatsInventory FInventorySaveData
---@field PassiveInventory FInventorySaveData
---@field MaterialInventory FInventorySaveData
---@field KeyInventory FInventorySaveData
---@field QuestInventory FInventorySaveData
---@field TipInventory FInventorySaveData
---@field TutorialInventory FInventorySaveData
---@field CostumeInventory FInventorySaveData
---@field EnemyInfoInventory FInventorySaveData
---@field NPCInfoInventory FInventorySaveData
---@field GalleryInventory FInventorySaveData
---@field SkillLevels TMap<FName, int32>
local FPlayerInventorySaveData = {}



---@class FPlayerPassiveLoadoutData
---@field ItemIDs TArray<FName>
local FPlayerPassiveLoadoutData = {}



---@class FPlayerPassiveSaveData
---@field ItemIDs TArray<FName>
---@field CurrentLoadoutIndex int32
---@field Loadouts TArray<FPlayerPassiveLoadoutData>
local FPlayerPassiveSaveData = {}



---@class FPlayerSaveData
---@field Stats FPlayerStatsSaveData
---@field Skill FPlayerSkillSaveData
---@field Equipment FPlayerEquipmentSaveData
---@field Assist FPlayerAssistSaveData
---@field Passive FPlayerPassiveSaveData
---@field ShopInfo FShopInfoSaveData
---@field Costume FPlayerCostumeSaveData
---@field Inventory FPlayerInventorySaveData
---@field RespawnRestPointID FName
---@field ClearedEvents TSet<FName>
---@field PreviousRunsClearedEvents TSet<FName>
---@field VisitedZones TSet<FClearActorData>
---@field VisitedAreas TSet<FName>
---@field DisplayedAreaNames TSet<FName>
---@field UsedMapTransitionSpawnPoints TSet<FMapTransitionSpawnPointData>
---@field AvailableRestPointEvents TArray<FName>
---@field ClearedRestPointEvents TArray<FName>
---@field CheckedRecollectionItems TSet<FName>
---@field KilledEnemies TSet<FName>
---@field FogOfWarData FFogOfWarSaveData
---@field MinimapDisplayMode EWidgetMinimapDisplayMode
---@field CustomMarkerData FCustomMarkerSaveData
local FPlayerSaveData = {}



---@class FPlayerSkillLoadoutData
---@field SkillIDForSkillSlots TMap<ESkillSlot, FName>
local FPlayerSkillLoadoutData = {}



---@class FPlayerSkillSaveData
---@field SkillIDForSkillSlots TMap<ESkillSlot, FName>
---@field CurrentLoadoutIndex int32
---@field Loadouts TArray<FPlayerSkillLoadoutData>
local FPlayerSkillSaveData = {}



---@class FPlayerStatsLevelData : FStatsLevelData
---@field ExpForLevelUp int32
local FPlayerStatsLevelData = {}



---@class FPlayerStatsSaveData
---@field Level int32
---@field ExperiencePoints int32
local FPlayerStatsSaveData = {}



---@class FPlayerTrailData
---@field bIsSet boolean
---@field WorldLocation FVector
---@field Velocity FVector
local FPlayerTrailData = {}



---@class FRecollectionBossData : FRecollectionItemData
---@field Map FDataTableRowHandle
---@field PlayerStartTag FName
local FRecollectionBossData = {}



---@class FRecollectionBossRushRecordData
---@field Time float
local FRecollectionBossRushRecordData = {}



---@class FRecollectionBossRushRecordsData
---@field MaxBossesDefeatedCount int32
---@field Records TArray<FRecollectionBossRushRecordData>
local FRecollectionBossRushRecordsData = {}



---@class FRecollectionBossRushSaveData
---@field NewGameGenerationOverride int32
---@field NewGameRecords TMap<EDifficultyPreset, FRecollectionBossRushRecordsData>
---@field NewGamePlusRecords TMap<EDifficultyPreset, FRecollectionBossRushRecordsData>
local FRecollectionBossRushSaveData = {}



---@class FRecollectionBossSaveData
---@field NewGameGenerationOverride int32
local FRecollectionBossSaveData = {}



---@class FRecollectionItemData : FTableRowBase
---@field Name FText
---@field ThumbnailIcon TSoftObjectPtr<UPaperSprite>
---@field Conditions FItemConditionData
local FRecollectionItemData = {}



---@class FRecollectionMovieData : FRecollectionItemData
---@field MediaSource UPlatformMediaSource
local FRecollectionMovieData = {}



---@class FRenderStateManagerSaveData
---@field SeenActors TMap<FName, FNameSet>
local FRenderStateManagerSaveData = {}



---@class FRenderTargetData
---@field MapAreaTextureMID UMaterialInstanceDynamic
---@field FogOfWarMaskRT UTextureRenderTarget2D
---@field FogOfWarBlockerRT UTextureRenderTarget2D
---@field ZonesClearedMaskRT UTextureRenderTarget2D
local FRenderTargetData = {}



---@class FRestPointData : FTableRowBase
---@field Name FText
---@field GameMapID FDataTableRowHandle
---@field PlayerStartTag FName
---@field bEnableRespawnAnimations boolean
---@field bAllowBackToRestPoint boolean
---@field ThumbnailIcon TSoftObjectPtr<UPaperSprite>
---@field SaveIcon TSoftObjectPtr<UTexture2D>
local FRestPointData = {}



---@class FRestPointEventData : FTableRowBase
---@field Name FText
---@field EventAsset TSoftObjectPtr<UEventAsset>
---@field Icon TSoftObjectPtr<UPaperSprite>
---@field NecessaryItems TArray<FDataTableRowHandle>
---@field NecessaryEvents TArray<TSoftObjectPtr<UEventAsset>>
---@field Priority ERestPointEventPriority
local FRestPointEventData = {}



---@class FRestPointListData
---@field MapAreaName FName
---@field RestPointIcons TArray<UUserWidgetMapIcon_RestPoint>
---@field CompletionPercentage float
local FRestPointListData = {}



---@class FRichTextInputElement
---@field InputDescription FInputDescription
---@field bOverrideInputDescription boolean
---@field InputOverride FString
---@field Color FLinearColor
---@field Width int32
---@field Height int32
---@field bVerticalCenter boolean
local FRichTextInputElement = {}



---@class FRuntimeCheckpointData
---@field GameMapID FDataTableRowHandle
---@field PlayerStartTag FName
local FRuntimeCheckpointData = {}



---@class FShakeData
---@field OscillationDuration float
---@field OscillationBlendInTime float
---@field OscillationBlendOutTime float
---@field LocOscillation FVOscillator
local FShakeData = {}



---@class FShopBuyHistory
---@field Items TMap<FDataTableRowHandleKey, int32>
local FShopBuyHistory = {}



---@class FShopInfoSaveData
---@field ShopHistories TMap<EShopType, FShopBuyHistory>
---@field SeenHistories TMap<EShopType, FShopSeenHistory>
local FShopInfoSaveData = {}



---@class FShopItemData
---@field Item FDataTableRowHandle
---@field StockCount int32
---@field bNewGamePlusOnly boolean
---@field bNew boolean
local FShopItemData = {}



---@class FShopSeenHistory
---@field Items TMap<FDataTableRowHandleKey, int32>
local FShopSeenHistory = {}



---@class FSimpleAnimationDefinitionList
---@field AnimationDefinitions TArray<FSpineSimpleAnimationDefinition>
local FSimpleAnimationDefinitionList = {}



---@class FSkillData
---@field Rank int32
---@field RatingPower int32
---@field RatingBreak int32
---@field RatingSpeed int32
---@field RatingRange int32
---@field Type EAttackType
---@field Element EAttackElement
---@field CommandSet TSoftObjectPtr<UCommandSet>
---@field Category ECommandSetCategory
---@field Cooldown float
---@field CostSP int32
---@field Video UPlatformMediaSource
local FSkillData = {}



---@class FSkillLevelData : FTableRowBase
---@field SkillData FSkillData
---@field SpecialSkillData FSkillData
---@field UnlockMaterials TArray<FSkillMaterialData>
---@field UnlockInfos TArray<FInventoryItemUpgradeInfo>
---@field UnlockSpecialInfos TArray<FInventoryItemUpgradeInfo>
local FSkillLevelData = {}



---@class FSkillMaterialData
---@field Item FDataTableRowHandle
---@field Count int32
local FSkillMaterialData = {}



---@class FSoundData
---@field Event UFMODEvent
---@field bAttachToActor boolean
---@field LocalSpaceOffset FVector
local FSoundData = {}



---@class FSoundDataGroup
---@field Default FSoundData
local FSoundDataGroup = {}



---@class FSoundSettingsData
---@field Volumes TMap<ESoundFamily, float>
---@field VoiceLanguage FString
local FSoundSettingsData = {}



---@class FSpawnData
---@field EntityRowHandle FDataTableRowHandle
---@field CommandClasses TArray<TSubclassOf<UCommand>>
---@field SpawnBone ESpineBone
---@field SpawnBoneCustomName FName
---@field RotationMode ESpineBoneRotationMode
---@field LocalSpaceOffset FTransform
local FSpawnData = {}



---@class FSpawnerNPCData
---@field Conditions FGameplayConditionChecker
---@field bOverrideAnimations boolean
---@field IdleAnimations TArray<FSpineAnimationDefinition>
---@field bOverrideFacing boolean
---@field Facing EFacingType
---@field bUseAI boolean
---@field AIData FNPCAIData
local FSpawnerNPCData = {}



---@class FSpeedModeToSurfaceMap
---@field SpeedModes TMap<EMovementSpeedMode, FSurfaceToStepMap>
local FSpeedModeToSurfaceMap = {}



---@class FSpineAdditiveAccessorySettings
---@field AdditiveAnimationShowName FString
---@field AdditiveAnimationHideName FString
---@field AdditiveTrackIndex int32
---@field DelayBeforeHide float
---@field TriggerAnimations TSet<FName>
---@field HideFXData FSpineFXData
---@field NecessaryAptitude EAptitudeType
local FSpineAdditiveAccessorySettings = {}



---@class FSpineAdditiveSettings
---@field AdditiveAnimationName FString
---@field AdditiveTrackIndex int32
---@field AllowedOverrideAnimations TSet<FString>
local FSpineAdditiveSettings = {}



---@class FSpineAnimationDefinition
---@field AnimationName FString
---@field PlayType ESpineAnimationPlayType
---@field bOverrideMixDuration boolean
---@field MixDurationOverride float
---@field bOverrideStartTime boolean
---@field StartTimeOverride float
---@field bOverrideEndTime boolean
---@field EndTimeOverride float
---@field bUseRootMotion boolean
---@field RootMotionSettings FRootMotionSettings
---@field OnAnimationEnd FSpineAnimationDefinitionOnAnimationEnd
local FSpineAnimationDefinition = {}



---@class FSpineAnimationStaggerDefinitions
---@field Stagger TArray<FSpineAnimationDefinition>
---@field Recovery TArray<FSpineAnimationDefinition>
local FSpineAnimationStaggerDefinitions = {}



---@class FSpineAnimationTransitionDefinition
---@field From FString
---@field To FString
---@field Conditions TArray<USpineAnimationTransitionCondition>
---@field AnimationDefinitions TArray<FSpineAnimationDefinition>
local FSpineAnimationTransitionDefinition = {}



---@class FSpineAnimatorHistoryData
---@field AnimationName FString
---@field PlayedDuration float
local FSpineAnimatorHistoryData = {}



---@class FSpineFlashColorData
---@field Color FLinearColor
---@field StartAlpha float
---@field Duration float
local FSpineFlashColorData = {}



---@class FSpineSimpleAnimationDefinition
---@field AnimationName FString
---@field bLoop boolean
local FSpineSimpleAnimationDefinition = {}



---@class FSpiritAutoSummonParameters
---@field AutoType ESpiritAutoType
---@field AIData FAIData
---@field DodgeMinDelay float
---@field CommandClasses TArray<TSubclassOf<UCommand>>
---@field CommandClassesPerMovementModes TMap<EMovementMode, FCommandClassList>
---@field TargetLocationFromSummoner FVector
---@field MoveCurve FRuntimeFloatCurve
local FSpiritAutoSummonParameters = {}



---@class FSpiritRepeatSummonParameters
---@field AbilityUseType ESpiritRepeatAbilityUseType
---@field Abilities FAbilityDataList
---@field AbilitiesPerMovementMode TMap<EMovementMode, FAbilityDataList>
---@field AbilityAdditionalData FAbilityAdditionalData
---@field bOneShotAbilityMode boolean
---@field InitialDelay float
---@field bRepeatTrigger boolean
---@field LoopDelay float
local FSpiritRepeatSummonParameters = {}



---@class FSpiritSummonParameters
---@field SummonLocationType ESpiritSummonLocationType
---@field bUseLocationResetFallback boolean
---@field DistanceForLocationResetFallback float
---@field SummonRotationType ESpiritSummonRotationType
---@field AbsoluteFacing EFacingType
---@field LocalSpaceOffset FVector
---@field bCheckLocationValidityWithLinecast boolean
---@field LocationValidityOrigin ESpiritLocationValidityOriginMode
---@field bUseTargetHeight boolean
---@field bSnapToGround boolean
---@field AttachType ESpiritAttachType
---@field AttachmentRule EAttachmentRule
---@field DetachType ESpiritDetachType
---@field SummonType ESpiritSummonType
---@field DismissType ESpiritDismissType
---@field bInstantSummon boolean
local FSpiritSummonParameters = {}



---@class FSpiritTurretSummonParameters
---@field InitialCommandClasses TArray<TSubclassOf<UCommand>>
---@field AttackCommandClasses TArray<TSubclassOf<UCommand>>
---@field IdleCommandClasses TArray<TSubclassOf<UCommand>>
---@field MaxSummonerDistanceForAttack float
---@field bRequireSummonerLineOfSight boolean
---@field DistanceForAutoDismiss float
local FSpiritTurretSummonParameters = {}



---@class FSplashSettings
---@field SplashStrength float
---@field SplashSize float
---@field bGenerateSplashFX boolean
local FSplashSettings = {}



---@class FStatBreakableData
---@field MaxValue int32
---@field DelayBeforeRecovery float
---@field RecoveryPerSecond float
---@field BrokenDuration float
---@field PostBreakInvincibilityTime float
local FStatBreakableData = {}



---@class FStatBreakableMultiplicativeData
---@field MaxValueFactor float
---@field DelayBeforeRecoveryFactor float
---@field RecoveryPerSecondFactor float
---@field BrokenDurationFactor float
---@field PostBreakInvincibilityTimeFactor float
local FStatBreakableMultiplicativeData = {}



---@class FStatsLevelData : FTableRowBase
---@field HP int32
---@field SP int32
---@field Attack int32
---@field Defense int32
---@field DamageCutPercentage_Physic int32
---@field DamageCutPercentage_Magic int32
---@field StaminaCutPercentage_Physic int32
---@field StaminaCutPercentage_Magic int32
---@field Stamina int32
---@field Burn int32
---@field Freeze int32
---@field Shock int32
local FStatsLevelData = {}



---@class FStatusEffectList
---@field StatusEffects TArray<UStatusEffect>
local FStatusEffectList = {}



---@class FStepData
---@field FXData FSpineFXData
---@field SoundData FSoundData
local FStepData = {}



---@class FStoryLevelData : FTableRowBase
---@field bEnabled boolean
---@field GoalDescription FText
---@field StoryEventWorldLocations TArray<FVector>
---@field NecessaryEvents TArray<TSoftObjectPtr<UEventAsset>>
---@field ProgressionEvents TArray<TSoftObjectPtr<UEventAsset>>
local FStoryLevelData = {}



---@class FSummonStashElement
---@field InputAction UInputAction
---@field CommandSet UCommandSet
local FSummonStashElement = {}



---@class FSummonedIdleSpiritData
---@field Spirit TWeakObjectPtr<ACharacterZionSpirit>
local FSummonedIdleSpiritData = {}



---@class FSurfaceToStepMap
---@field Surfaces TMap<EPhysicalSurface, FStepData>
local FSurfaceToStepMap = {}



---@class FTalkData
---@field bOverrideSpeakerName boolean
---@field SpeakerNameOverride FText
---@field bOverrideSpeakerAnimationDefinitions boolean
---@field AnimationDefinitionsOverride TArray<FSpineAnimationDefinition>
---@field TalkDesign ETalkDesign
---@field Text FText
---@field bAutoComplete boolean
---@field AutoCompleteTime float
local FTalkData = {}



---@class FTalkLocationData
---@field DefaultTalkOffset FVector
---@field TalkOffsetPerAnimations TMap<FString, FVector>
local FTalkLocationData = {}



---@class FTalkParameters
---@field SpeakerName FText
---@field Text FText
---@field Design ETalkDesign
---@field bAutoComplete boolean
---@field AutoCompleteTime float
local FTalkParameters = {}



---@class FTextIntStruct
---@field Text FText
---@field Value int32
local FTextIntStruct = {}



---@class FTimedDilationData
---@field Dilation float
---@field Duration float
---@field BlendIn float
---@field BlendOut float
local FTimedDilationData = {}



---@class FTimedInputSnapshot
---@field InputSnapshot FInputSnapshot
---@field Time float
---@field ProcessedTags TSet<FName>
---@field bProcessedExactly boolean
---@field ProcessedTime float
local FTimedInputSnapshot = {}



---@class FTimedStateData
---@field States TArray<TSubclassOf<UState>>
local FTimedStateData = {}



---@class FTimedStateData_Frame : FTimedStateData
local FTimedStateData_Frame = {}


---@class FTimedStateData_Time : FTimedStateData
local FTimedStateData_Time = {}


---@class FTimelineAbility : FTimelineBase
---@field Entries TArray<FTimelineEntry_Ability>
---@field VisualCueData FAbilityVisualCue
local FTimelineAbility = {}



---@class FTimelineBase
local FTimelineBase = {}


---@class FTimelineEntry
---@field ActiveType ETimelineEntryActiveType
---@field StartTime float
---@field EndTime float
local FTimelineEntry = {}



---@class FTimelineEntry_Ability : FTimelineEntry
---@field AbilityData FAbilityData
---@field AbilityInstance AAbility
local FTimelineEntry_Ability = {}



---@class FTimelineEntry_FX : FTimelineEntry
---@field FXData FSpineFXData
local FTimelineEntry_FX = {}



---@class FTimelineEntry_Move : FTimelineEntry
---@field AccumulateMode ERootMotionAccumulateMode
---@field MoveVelocity FVector
---@field MoveFactorCurve UCurveFloat
---@field FinishVelocitySettings FRootMotionFinishVelocitySettingsBP
local FTimelineEntry_Move = {}



---@class FTimelineEntry_SE : FTimelineEntry
---@field SoundData FSoundData
local FTimelineEntry_SE = {}



---@class FTimelineFX : FTimelineBase
---@field Entries TArray<FTimelineEntry_FX>
local FTimelineFX = {}



---@class FTimelineMove : FTimelineBase
---@field Entries TArray<FTimelineEntry_Move>
local FTimelineMove = {}



---@class FTimelineSE : FTimelineBase
---@field Entries TArray<FTimelineEntry_SE>
local FTimelineSE = {}



---@class FTimelineState : FTimelineBase
---@field Entries TArray<FTimelineStateEntry>
local FTimelineState = {}



---@class FTimelineStateEntry : FTimelineEntry
---@field State TSubclassOf<UState>
local FTimelineStateEntry = {}



---@class FUIBinding
---@field KeyBindings TArray<FKey>
local FUIBinding = {}



---@class FUIInputSettingsData
---@field Version int32
---@field Bindings TMap<EUIInputType, FUIBinding>
local FUIInputSettingsData = {}



---@class FWidgetMapStoryEventDirectionData
---@field StoryEventIcon TWeakObjectPtr<UUserWidgetMapIcon_StoryEvent>
---@field StoryEventDirection UUserWidgetZionShowHide
local FWidgetMapStoryEventDirectionData = {}



---@class FZoneBlackBordersSettings
---@field bHasBlackBorders boolean
---@field BorderMin FVector
---@field BorderMax FVector
local FZoneBlackBordersSettings = {}



---@class IAICommandClassProviderInterface : IInterface
local IAICommandClassProviderInterface = {}

---@param out_CommandClass TSubclassOf<UCommand>
function IAICommandClassProviderInterface:GetIdlePeaceCommandClass(out_CommandClass) end
---@param out_CommandClass TSubclassOf<UCommand>
function IAICommandClassProviderInterface:GetFindEnemyCommandClass(out_CommandClass) end


---@class ICharacterNotifyInterface : IInterface
local ICharacterNotifyInterface = {}


---@class IEmulatedFogInterface : IInterface
local IEmulatedFogInterface = {}


---@class IGameMapChangeDataProviderInterface : IInterface
local IGameMapChangeDataProviderInterface = {}

---@param OutGameMapChangeProviderData FGameMapChangeProviderData
function IGameMapChangeDataProviderInterface:GetGameMapChangeProviderData(OutGameMapChangeProviderData) end


---@class IMapIconProviderInterface : IInterface
local IMapIconProviderInterface = {}

---@param OutConditionChecker FGameplayConditionChecker
---@return boolean
function IMapIconProviderInterface:GetMapIconGameplayConditions(OutConditionChecker) end
---@param OutMapIconProviderData FMapIconProviderData
function IMapIconProviderInterface:GetMapIconActorWithDependencies(OutMapIconProviderData) end


---@class IStatsSnapshotProviderInterface : IInterface
local IStatsSnapshotProviderInterface = {}


---@class ITargetPivotProviderInterface : IInterface
local ITargetPivotProviderInterface = {}


---@class IToggleActorInterface : IInterface
local IToggleActorInterface = {}

function IToggleActorInterface:OnActorToggle() end


---@class IVisualPivotProviderInterface : IInterface
local IVisualPivotProviderInterface = {}


---@class UAbilityComponent : UActorComponent
---@field InstancesForClasses TMap<TSubclassOf<AAbility>, FAbilityArray>
---@field RunningAbilities TArray<AAbility>
local UAbilityComponent = {}

---@param AbilityData FAbilityData
---@param Targets TArray<AActor>
---@param AdditionalData FAbilityAdditionalData
---@return AAbilityInstant
function UAbilityComponent:LaunchAbilityInstant(AbilityData, Targets, AdditionalData) end
---@param AbilityData FAbilityData
---@param AdditionalData FAbilityAdditionalData
---@param GlobalOffset FTransform
---@return AAbility
function UAbilityComponent:LaunchAbility(AbilityData, AdditionalData, GlobalOffset) end


---@class UAbilityEffect : UObject
---@field bEnabled boolean
---@field bExecuteWhenDodged boolean
---@field bExecuteWhenGuarded boolean
---@field bExecuteWhenParried boolean
---@field TargetInvalidStates TArray<TSubclassOf<UState>>
local UAbilityEffect = {}

function UAbilityEffect:OnInitialize_BP() end
---@return boolean
function UAbilityEffect:IsFrontalAbility() end
---@param DirectionSource EDirectionSource
---@param Axis FVector
---@return FVector
function UAbilityEffect:GetToTargetDirection(DirectionSource, Axis) end
---@return FVector
function UAbilityEffect:GetTargetLocation() end
---@return FVector
function UAbilityEffect:GetTargetForward() end
---@return AActor
function UAbilityEffect:GetTarget() end
---@return FVector
function UAbilityEffect:GetSourceLocation() end
---@return AActor
function UAbilityEffect:GetSource() end
---@return FVector
function UAbilityEffect:GetAbilityLocation() end
---@return FVector
function UAbilityEffect:GetAbilityForward() end


---@class UAbilityEffectInstant : UAbilityEffect
local UAbilityEffectInstant = {}

function UAbilityEffectInstant:OnApplyEffect() end


---@class UAbilityEffectInstant_BreakPart : UAbilityEffectInstant
---@field BreakType EBreakType
local UAbilityEffectInstant_BreakPart = {}



---@class UAbilityEffectInstant_CameraShake : UAbilityEffectInstant
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field InnerRadius float
---@field OuterRadius float
---@field Falloff float
---@field bOrientShakeTowardsEpicenter boolean
local UAbilityEffectInstant_CameraShake = {}



---@class UAbilityEffectInstant_DamageElemental : UAbilityEffectInstant
---@field AbsoluteDamage int32
local UAbilityEffectInstant_DamageElemental = {}



---@class UAbilityEffectInstant_DamageElemental_Burn : UAbilityEffectInstant_DamageElemental
local UAbilityEffectInstant_DamageElemental_Burn = {}


---@class UAbilityEffectInstant_DamageElemental_Freeze : UAbilityEffectInstant_DamageElemental
local UAbilityEffectInstant_DamageElemental_Freeze = {}


---@class UAbilityEffectInstant_DamageElemental_Shock : UAbilityEffectInstant_DamageElemental
local UAbilityEffectInstant_DamageElemental_Shock = {}


---@class UAbilityEffectInstant_DamageHP : UAbilityEffectInstant
---@field Element EAttackElement
---@field DamageEffectType EDamageEffectType
---@field DamageFactor float
---@field AbsoluteDamage int32
---@field TargetPercentageDamage float
---@field bIgnoreInstantKillSetting boolean
local UAbilityEffectInstant_DamageHP = {}



---@class UAbilityEffectInstant_DamageStamina : UAbilityEffectInstant
---@field AbsoluteDamage int32
---@field bInjectFacingOnStun boolean
local UAbilityEffectInstant_DamageStamina = {}



---@class UAbilityEffectInstant_ForceFeedback : UAbilityEffectInstant
---@field ForceFeedbackEffect UForceFeedbackEffect
local UAbilityEffectInstant_ForceFeedback = {}



---@class UAbilityEffectInstant_HealHP : UAbilityEffectInstant
---@field HealEffectType EHealEffectType
---@field AbsoluteHeal int32
---@field TargetPercentageHeal float
local UAbilityEffectInstant_HealHP = {}



---@class UAbilityEffectInstant_Knockback : UAbilityEffectInstant
---@field Condition EKnockbackTriggerCondition
---@field DirectionMode EKnockbackDirectionMode
---@field AbsoluteDirection FVector
---@field KnockbackData FKnockbackData
local UAbilityEffectInstant_Knockback = {}



---@class UAbilityEffectInstant_RestoreSP : UAbilityEffectInstant
---@field AbsoluteValue int32
---@field ValidTargetFactions TSet<EFaction>
local UAbilityEffectInstant_RestoreSP = {}



---@class UAbilityEffectInstant_SetFacing : UAbilityEffectInstant
---@field SetFacingMode ESetFacingMode
---@field bInvertFacing boolean
local UAbilityEffectInstant_SetFacing = {}



---@class UAbilityEffectInstant_SetTargetInvincible : UAbilityEffectInstant
---@field Duration float
local UAbilityEffectInstant_SetTargetInvincible = {}



---@class UAbilityEffectInstant_ShakeTarget : UAbilityEffectInstant
---@field GroundShakeData FShakeData
---@field AirShakeData FShakeData
local UAbilityEffectInstant_ShakeTarget = {}



---@class UAbilityEffectInstant_SpawnFX : UAbilityEffectInstant
---@field FXData FSpineFXData
---@field bOrientFromAttacker boolean
local UAbilityEffectInstant_SpawnFX = {}



---@class UAbilityEffectInstant_SpawnFXCategory : UAbilityEffectInstant
---@field AttackType EEffectAttackType
---@field Action EEffectActionType
local UAbilityEffectInstant_SpawnFXCategory = {}



---@class UAbilityEffectInstant_SpawnSECategory : UAbilityEffectInstant
---@field AttackType EEffectAttackType
---@field Action EEffectActionType
local UAbilityEffectInstant_SpawnSECategory = {}



---@class UAbilityEffectProcess : UObject
---@field Effects TArray<UAbilityEffect>
local UAbilityEffectProcess = {}



---@class UAbilityEffectTimed : UAbilityEffect
local UAbilityEffectTimed = {}

---@param DeltaTime float
---@param out_ConsumedDeltaTime float
---@return boolean
function UAbilityEffectTimed:OnUpdate(DeltaTime, out_ConsumedDeltaTime) end
function UAbilityEffectTimed:OnStart() end


---@class UAbilityEffectTimed_HitStop : UAbilityEffectTimed
---@field bTriggerOnSource boolean
---@field bTriggerOnTarget boolean
---@field bTriggerOnSourceSummoner boolean
---@field Duration float
local UAbilityEffectTimed_HitStop = {}



---@class UAbilityEffectTimed_ShakeTarget : UAbilityEffectTimed
---@field GroundShakeData FShakeData
---@field AirShakeData FShakeData
local UAbilityEffectTimed_ShakeTarget = {}



---@class UAbilityEffectTimed_TimeDilation : UAbilityEffectTimed
---@field Settings FTimedDilationData
local UAbilityEffectTimed_TimeDilation = {}



---@class UAchievementsSubsystem : UGameInstanceSubsystem
local UAchievementsSubsystem = {}

---@return boolean
function UAchievementsSubsystem:IsUsingInternalAchievements() end
---@param Achievement EZionAchievement
---@return boolean
function UAchievementsSubsystem:IsAchievementUnlocked(Achievement) end
function UAchievementsSubsystem:InitializeForMainUser() end


---@class UActivitySubsystem : UGameInstanceSubsystem
local UActivitySubsystem = {}


---@class UActorBPFLibrary : UBlueprintFunctionLibrary
local UActorBPFLibrary = {}

---@param Actor AActor
function UActorBPFLibrary:ToggleActor(Actor) end
---@param Actor AActor
---@param bResetX boolean
---@param bResetY boolean
---@param bResetZ boolean
function UActorBPFLibrary:ResetVelocity(Actor, bResetX, bResetY, bResetZ) end
---@param Actor AActor
---@return boolean
function UActorBPFLibrary:IsPlayer(Actor) end
---@param Actor AActor
---@return FName
function UActorBPFLibrary:GetWorldIDForActor(Actor) end
---@param Actor AActor
---@return FVector
function UActorBPFLibrary:GetTopLocation(Actor) end
---@param Actor AActor
---@return FVector
function UActorBPFLibrary:GetTargetPivotLocation(Actor) end
---@param Actor AActor
---@return USceneComponent
function UActorBPFLibrary:GetTargetPivotComponent(Actor) end
---@param Actor AActor
---@return float
function UActorBPFLibrary:GetHalfHeight(Actor) end
---@param Actor AActor
---@return FVector
function UActorBPFLibrary:GetBottomLocation(Actor) end
---@param Actor AActor
---@return FName
function UActorBPFLibrary:GetActorID(Actor) end
---@param Actor AActor
---@return FName
function UActorBPFLibrary:GenerateClearIDForActor(Actor) end
---@param Actor AActor
---@param bResetAnimator boolean
function UActorBPFLibrary:FlushAnimations(Actor, bResetAnimator) end
---@param Character ACharacter
function UActorBPFLibrary:ClearMovementBase(Character) end


---@class UAfterImageComponent : USceneCaptureComponent2D
---@field RenderTargetSize int32
---@field AfterImageCount int32
---@field UpdatePeriod float
---@field bAlwaysEnabled boolean
---@field AfterImageType EAfterImageType
---@field FXData FSpineFXData
---@field AfterImageRendererClass TSubclassOf<AAfterImageRenderer>
---@field RenderTargets TArray<UTextureRenderTarget2D>
local UAfterImageComponent = {}

---@param NewAfterImageType EAfterImageType
function UAfterImageComponent:SetAfterImageType(NewAfterImageType) end
---@return EAfterImageType
function UAfterImageComponent:GetAfterImageType() end


---@class UAnimationFromVelocityComponent : UActorComponent
---@field AnimationNeutral FString
---@field AnimationUp FString
---@field AnimationDown FString
---@field AnimationForward FString
---@field bSyncTrackTime boolean
---@field VelocityZForUp float
---@field VelocityZForDown float
---@field VelocityYForForward float
local UAnimationFromVelocityComponent = {}

function UAnimationFromVelocityComponent:ResetAnimationCycle() end


---@class UArrayBPFLibrary : UBlueprintFunctionLibrary
local UArrayBPFLibrary = {}

---@param Array TArray<FTextIntStruct>
---@return TArray<FTextIntStruct>
function UArrayBPFLibrary:SortTextIntStructs(Array) end
---@param Array TArray<FName>
---@return TArray<FName>
function UArrayBPFLibrary:SortNames(Array) end


---@class UAssist : UObject
---@field Triggers TArray<UAssistTrigger>
local UAssist = {}



---@class UAssistAction : UObject
local UAssistAction = {}


---@class UAssistAction_DebuffReset : UAssistAction
local UAssistAction_DebuffReset = {}


---@class UAssistAction_RestoreHP : UAssistAction
---@field HPPercentage float
local UAssistAction_RestoreHP = {}



---@class UAssistAction_RestoreSP : UAssistAction
---@field SPPercentage float
local UAssistAction_RestoreSP = {}



---@class UAssistAction_StatusEffect : UAssistAction
---@field StatusEffectClass TSubclassOf<UStatusEffect>
local UAssistAction_StatusEffect = {}



---@class UAssistComponent : UActorComponent
---@field EquippedAssist FEquippedAssist
---@field CurrentLoadoutIndex int32
---@field AssistLoadouts TArray<FPlayerAssistLoadoutData>
local UAssistComponent = {}

---@param bRemoveFromCurrentLoadout boolean
function UAssistComponent:UnEquipAssist(bRemoveFromCurrentLoadout) end
---@param OldPawn APawn
---@param NewPawn APawn
function UAssistComponent:OnPossessedPawnChanged(OldPawn, NewPawn) end
---@return FInventoryItemAssistData
function UAssistComponent:GetEquippedAssistData() end
---@return int32
function UAssistComponent:GetCurrentAssistLoadoutIndex() end
---@return FName
function UAssistComponent:GetAssistID() end
---@param AssistID FName
---@return FInventoryItemAssistData
function UAssistComponent:GetAssistDataFromID(AssistID) end
---@param LoadoutIndex int32
function UAssistComponent:EquipAssistLoadout(LoadoutIndex) end
---@param AssistID FName
---@param bAddToCurrentLoadout boolean
function UAssistComponent:EquipAssist(AssistID, bAddToCurrentLoadout) end


---@class UAssistTrigger : UObject
---@field bUseTriggerLimitCount boolean
---@field TriggerLimitCount int32
---@field Cooldown float
---@field InvalidStates TArray<TSubclassOf<UState>>
---@field Actions TArray<UAssistAction>
local UAssistTrigger = {}



---@class UAssistTrigger_EnemyKilled : UAssistTrigger
local UAssistTrigger_EnemyKilled = {}


---@class UAssistTrigger_HPPercentage : UAssistTrigger
---@field HPPercentage float
local UAssistTrigger_HPPercentage = {}



---@class UAssistTrigger_HealSuccess : UAssistTrigger
local UAssistTrigger_HealSuccess = {}

function UAssistTrigger_HealSuccess:OnHealSucceeded() end


---@class UAssistTrigger_ParrySuccess : UAssistTrigger
local UAssistTrigger_ParrySuccess = {}

---@param Ability AAbility
---@param Source AActor
function UAssistTrigger_ParrySuccess:OnParried(Ability, Source) end


---@class UAssistTrigger_PartsBreak : UAssistTrigger
local UAssistTrigger_PartsBreak = {}


---@class UAssistTrigger_ReceiveDamage : UAssistTrigger
local UAssistTrigger_ReceiveDamage = {}


---@class UAssistTrigger_ReceiveStatusEffect : UAssistTrigger
---@field ValidStatusEffects TArray<EStatusEffectType>
local UAssistTrigger_ReceiveStatusEffect = {}

---@param StatusEffect UStatusEffect
function UAssistTrigger_ReceiveStatusEffect:OnStatusEffectLaunched(StatusEffect) end


---@class UAssistTrigger_TimeInterval : UAssistTrigger
---@field TimeInterval float
local UAssistTrigger_TimeInterval = {}

function UAssistTrigger_TimeInterval:OnTimeElapsed() end


---@class UAutoClimbComponent : UActorComponent
---@field AllowedMaxZVelocity float
---@field MaxAngleForClimb float
---@field ForwardOffset float
---@field MinHeightForAutoClimbHigh float
---@field MaxHeightForAutoClimbHigh float
---@field MinHeightForAutoClimbMiddle float
---@field MaxHeightForAutoClimbMiddle float
---@field MinHeightForAutoClimbLow float
---@field MaxHeightForAutoClimbLow float
---@field MinHeightForAutoClimbDashCharge float
---@field MaxHeightForAutoClimbDashCharge float
---@field DistanceAboveHeadToCheck float
---@field bCheckTargetLocation boolean
---@field AutoClimbHigh_CommandSettings UCommandSettingsData
---@field AutoClimbMiddle_CommandSettings UCommandSettingsData
---@field AutoClimbLow_CommandSettings UCommandSettingsData
---@field AutoClimbDash_CommandSettings UCommandSettingsData
---@field AutoClimbDashCharge_CommandSettings UCommandSettingsData
---@field AutoClimbFallthroughHigh_CommandSettings UCommandSettingsData
---@field AutoClimbFallthroughMiddle_CommandSettings UCommandSettingsData
---@field AutoClimbFallthroughLow_CommandSettings UCommandSettingsData
---@field AutoClimbFallthroughDash_CommandSettings UCommandSettingsData
---@field AutoClimbFallthroughDashCharge_CommandSettings UCommandSettingsData
---@field IgnoreAutoClimbStates TArray<TSubclassOf<UState>>
---@field PreAutoClimbStates TArray<TSubclassOf<UState>>
---@field BoxComponent UBoxComponent
local UAutoClimbComponent = {}

---@param Actor AActor
function UAutoClimbComponent:UnmarkActorAsIgnored(Actor) end
---@param Impact FHitResult
function UAutoClimbComponent:OnMoveBlocked(Impact) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UAutoClimbComponent:OnComponentOverlapEnd(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UAutoClimbComponent:OnComponentOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
---@param Actor AActor
function UAutoClimbComponent:MarkActorAsIgnored(Actor) end
---@return FVector
function UAutoClimbComponent:GetLastTargetLocation() end


---@class UBTComposite_RandomChooseOne : UBTCompositeNode
local UBTComposite_RandomChooseOne = {}


---@class UBTDecoratorZion : UBTDecorator
local UBTDecoratorZion = {}


---@class UBTDecoratorZionCondition : UBTDecoratorZion
local UBTDecoratorZionCondition = {}


---@class UBTDecorator_Comparator : UBTDecoratorZion
---@field ConditionType EConditionType
local UBTDecorator_Comparator = {}



---@class UBTDecorator_Comparator_HP : UBTDecorator_Comparator
---@field Percentage float
local UBTDecorator_Comparator_HP = {}



---@class UBTDecorator_Comparator_PhaseLevel : UBTDecorator_Comparator
---@field Level int32
local UBTDecorator_Comparator_PhaseLevel = {}



---@class UBTDecorator_IsFacing : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
---@field ValidFacings TArray<EFacingType>
local UBTDecorator_IsFacing = {}



---@class UBTDecorator_IsInBorderRange : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
---@field BorderType EBorderType
---@field AcceptableRange float
local UBTDecorator_IsInBorderRange = {}



---@class UBTDecorator_IsInDirection : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
---@field ValidDirections TArray<ELocalDirection>
local UBTDecorator_IsInDirection = {}



---@class UBTDecorator_IsInFront : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
local UBTDecorator_IsInFront = {}



---@class UBTDecorator_IsInRange : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
---@field AcceptableRange float
---@field DistanceType EDistanceComparisonType
local UBTDecorator_IsInRange = {}



---@class UBTDecorator_IsNearGround : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
---@field CheckOperator EConditionOperator
---@field UpVectorMode EDecoratorNearGroundUpVectorMode
---@field GroundDirections TMap<EDecoratorNearGroundDirection, FDecoratorNearGroundDirectionData>
local UBTDecorator_IsNearGround = {}



---@class UBTDecorator_IsNearWall : UBTDecoratorZionCondition
---@field Target FBlackboardKeySelector
---@field CheckOperator EConditionOperator
---@field WallDirections TMap<EDecoratorNearWallDirection, float>
local UBTDecorator_IsNearWall = {}



---@class UBTDecorator_IsNearWaterSurface : UBTDecoratorZionCondition
---@field Distance float
local UBTDecorator_IsNearWaterSurface = {}



---@class UBTDecorator_IsNewGamePlus : UBTDecoratorZion
local UBTDecorator_IsNewGamePlus = {}


---@class UBTDecorator_IsOnScreen : UBTDecoratorZionCondition
---@field TimeTolerance float
local UBTDecorator_IsOnScreen = {}



---@class UBTDecorator_IsOnSide : UBTDecoratorZionCondition
---@field Source FBlackboardKeySelector
---@field Target FBlackboardKeySelector
---@field CheckOperator EConditionOperator
---@field bCheckRight boolean
---@field bCheckLeft boolean
---@field bCheckUp boolean
---@field bCheckDown boolean
local UBTDecorator_IsOnSide = {}



---@class UBTDecorator_MovementMode : UBTDecorator_MovementModeBase
---@field ValidMovementModes TArray<FMovementModeData>
local UBTDecorator_MovementMode = {}



---@class UBTDecorator_MovementModeBase : UBTDecoratorZion
local UBTDecorator_MovementModeBase = {}


---@class UBTDecorator_MovementModeGrounded : UBTDecorator_MovementModeBase
---@field ValidMovementModes TArray<FMovementModeData>
local UBTDecorator_MovementModeGrounded = {}



---@class UBTDecorator_Random : UBTDecoratorZion
---@field SuccessPercentage float
local UBTDecorator_Random = {}



---@class UBTDecorator_RandomChooseOne_ChildChance : UBTDecoratorZion
---@field ChildChance float
local UBTDecorator_RandomChooseOne_ChildChance = {}



---@class UBTDecorator_RandomRuntimeLinear : UBTDecoratorZion
---@field MinSuccessPercentage float
---@field MaxSuccessPercentage float
---@field TimeToReachMaxSuccessPercentage float
---@field BlendType ERandomRuntimeLinearBlendType
---@field EaseExp float
local UBTDecorator_RandomRuntimeLinear = {}



---@class UBTDecorator_SetStates : UBTDecoratorZion
---@field States TArray<TSubclassOf<UState>>
local UBTDecorator_SetStates = {}



---@class UBTService_FindClosestEnemy : UBTService
---@field KeyResult FBlackboardKeySelector
---@field VisibilityCollisionChannel ECollisionChannel
local UBTService_FindClosestEnemy = {}



---@class UBTService_FindClosestEnemy_Blackboard : UBTService_FindClosestEnemy
---@field KeyDetectionType FBlackboardKeySelector
---@field KeyMinDistance FBlackboardKeySelector
---@field KeyMaxDistance FBlackboardKeySelector
---@field KeyCheckFront FBlackboardKeySelector
---@field KeyCheckLineOfSight FBlackboardKeySelector
local UBTService_FindClosestEnemy_Blackboard = {}



---@class UBTService_FindClosestEnemy_Settings : UBTService_FindClosestEnemy
---@field Settings FFindClosestEnemySettings
local UBTService_FindClosestEnemy_Settings = {}



---@class UBTTaskZion : UBTTaskNode
local UBTTaskZion = {}


---@class UBTTask_CustomMoveTo : UBTTask_MoveTo
---@field MovementSpeedModeOverride EMovementSpeedMode
---@field AcceptableRadiusType ECustomMoveToAcceptableRadiusType
---@field MinAcceptableRadius float
---@field MaxAcceptableRadius float
local UBTTask_CustomMoveTo = {}



---@class UBTTask_CustomWait : UBTTask_Wait
---@field bUseDifficultySettings boolean
local UBTTask_CustomWait = {}



---@class UBTTask_Execute : UBTTaskZion
---@field bRequireInstantUpdate boolean
---@field bClearOnAbort boolean
local UBTTask_Execute = {}

---@param Command UCommand
---@param FinishType ECommandFinishType
function UBTTask_Execute:OnFinishCommand(Command, FinishType) end


---@class UBTTask_ExecuteCommandLoop : UBTTask_Execute
---@field StartCommandClasses TArray<TSubclassOf<UCommand>>
---@field LoopCommandClasses TArray<TSubclassOf<UCommand>>
---@field LoopCount int32
---@field CommandClasses TArray<TSubclassOf<UCommand>>
local UBTTask_ExecuteCommandLoop = {}



---@class UBTTask_ExecuteCommands : UBTTask_Execute
---@field CommandClasses TArray<TSubclassOf<UCommand>>
local UBTTask_ExecuteCommands = {}



---@class UBTTask_ExecuteDash : UBTTask_Execute
---@field DashTarget FBlackboardKeySelector
---@field WorldSpaceOffset FVector
---@field TargetLocalSpaceOffset FVector
---@field bTrackTargetLocation boolean
---@field AcceptableRadius float
---@field DashCommandClass TSubclassOf<UCommand_AI_DashTo>
---@field CommandClasses TArray<TSubclassOf<UCommand>>
local UBTTask_ExecuteDash = {}



---@class UBTTask_ExecuteFindEnemy : UBTTask_Execute
local UBTTask_ExecuteFindEnemy = {}


---@class UBTTask_ExecuteIdlePeace : UBTTask_Execute
local UBTTask_ExecuteIdlePeace = {}


---@class UBTTask_ExecuteWarp : UBTTask_Execute
---@field Target FBlackboardKeySelector
---@field TargetLocalSpaceOffsetMode EWarpOffsetMode
---@field TargetLocalSpaceOffset FVector
---@field TargetLocalSpaceOffsetMin FVector
---@field TargetLocalSpaceOffsetMax FVector
---@field WorldSpaceOffsetMode EWarpOffsetMode
---@field WorldSpaceOffset FVector
---@field WorldSpaceOffsetMin FVector
---@field WorldSpaceOffsetMax FVector
---@field bUseNavMesh boolean
---@field bSnapToGround boolean
---@field HeightOffsetFromGround float
---@field WarpCommandClass TSubclassOf<UCommand_AI_WarpTo>
---@field CommandClasses TArray<TSubclassOf<UCommand>>
local UBTTask_ExecuteWarp = {}



---@class UBTTask_FlyTo : UBTTask_MoveTo
---@field bClampHeight boolean
---@field ClampHeightOriginKey FBlackboardKeySelector
---@field MinHeight float
---@field MaxHeight float
---@field bClampWidth boolean
---@field ClampWidthOriginKey FBlackboardKeySelector
---@field MinWidth float
---@field MaxWidth float
---@field TargetOffsetType EFlyToTargetOffsetType
---@field WorldSpaceTargetOffset FVector
---@field BoxMinWorldSpaceTargetOffset FVector
---@field BoxMaxWorldSpaceTargetOffset FVector
---@field bProjectLocationToGround boolean
---@field GroundHeightOffset float
local UBTTask_FlyTo = {}



---@class UBTTask_FlyTo_Height : UBTTask_FlyTo
---@field MoveHeightOriginKey FBlackboardKeySelector
local UBTTask_FlyTo_Height = {}



---@class UBTTask_FlyTo_Height_FixedOffset : UBTTask_FlyTo_Height
---@field FixedHeightOffset float
local UBTTask_FlyTo_Height_FixedOffset = {}



---@class UBTTask_FlyTo_Height_Patrol : UBTTask_FlyTo_Height
---@field MoveHeightMin float
---@field MoveHeightMax float
local UBTTask_FlyTo_Height_Patrol = {}



---@class UBTTask_FlyTo_Height_Target : UBTTask_FlyTo_Height
---@field TargetKey FBlackboardKeySelector
local UBTTask_FlyTo_Height_Target = {}



---@class UBTTask_FlyTo_Linear : UBTTask_FlyTo
---@field MoveLineOriginKey FBlackboardKeySelector
---@field MoveLineOffsetMin FBlackboardKeySelector
---@field MoveLineOffsetMax FBlackboardKeySelector
local UBTTask_FlyTo_Linear = {}



---@class UBTTask_FlyTo_Linear_Patrol : UBTTask_FlyTo_Linear
local UBTTask_FlyTo_Linear_Patrol = {}


---@class UBTTask_FlyTo_Linear_Target : UBTTask_FlyTo_Linear
---@field TargetKey FBlackboardKeySelector
local UBTTask_FlyTo_Linear_Target = {}



---@class UBTTask_FlyTo_Target : UBTTask_FlyTo
---@field TargetKey FBlackboardKeySelector
local UBTTask_FlyTo_Target = {}



---@class UBTTask_PlaySpineAnimations : UBTTaskNode
---@field Animations TArray<FSpineAnimationDefinition>
local UBTTask_PlaySpineAnimations = {}



---@class UBTTask_SelfKnockback : UBTTaskNode
---@field KnockbackData FKnockbackData
local UBTTask_SelfKnockback = {}



---@class UBTTask_SetFacing : UBTTaskZion
---@field bInvert boolean
---@field bPlayAnimation boolean
---@field TurnAnimations TArray<FSpineAnimationDefinition>
local UBTTask_SetFacing = {}



---@class UBTTask_SetFacing_Target : UBTTask_SetFacing
---@field Target FBlackboardKeySelector
local UBTTask_SetFacing_Target = {}



---@class UBTTask_SetFacing_Toggle : UBTTask_SetFacing
local UBTTask_SetFacing_Toggle = {}


---@class UBTTask_SetFacing_Value : UBTTask_SetFacing
---@field FacingType EFacingType
local UBTTask_SetFacing_Value = {}



---@class UBTTask_SpineColor : UBTTaskZion
---@field LerpDuration float
local UBTTask_SpineColor = {}



---@class UBTTask_SpineColor_Clear : UBTTask_SpineColor
local UBTTask_SpineColor_Clear = {}


---@class UBTTask_SpineColor_Set : UBTTask_SpineColor
---@field OverrideColor FLinearColor
---@field OverrideAlpha float
local UBTTask_SpineColor_Set = {}



---@class UBTTask_WaitAnimationCycle : UBTTaskZion
---@field TrackIndex int32
---@field AnimationCycleMinPercentage float
local UBTTask_WaitAnimationCycle = {}



---@class UBTTask_WaitLocomotionCycle : UBTTaskZion
---@field LocomotionCycleMinPercentage float
local UBTTask_WaitLocomotionCycle = {}



---@class UBTTask_WarpToLocation : UBTTaskZion
---@field Target FBlackboardKeySelector
---@field TargetLocalSpaceOffset FTransform
---@field WorldSpaceOffsetType EWarpWorldSpaceOffsetType
---@field TargetWorldSpaceOffset FVector
---@field TargetWorldSpaceOffsetMin FVector
---@field TargetWorldSpaceOffsetMax FVector
---@field bWarpXAxis boolean
---@field bWarpYAxis boolean
---@field bWarpZAxis boolean
---@field bUseNavMesh boolean
local UBTTask_WarpToLocation = {}



---@class UBattleColorComponent : UActorComponent
---@field FadeInCurve UCurveFloat
---@field FadeOutCurve UCurveFloat
---@field MaterialParameterName FName
---@field bEnableBattleColorOnStart boolean
local UBattleColorComponent = {}

---@param bEnable boolean
function UBattleColorComponent:SetBattleColorEnabled(bEnable) end
---@param NewAlpha float
function UBattleColorComponent:SetAlpha(NewAlpha) end


---@class UBoxBPFLibrary : UBlueprintFunctionLibrary
local UBoxBPFLibrary = {}

---@param Box FBox
---@return boolean
function UBoxBPFLibrary:IsValid(Box) end
---@param Box FBox
---@return FVector
function UBoxBPFLibrary:GetCenter(Box) end


---@class UBreakPartComponent : UActorComponent
---@field OnBreakPartDelegate FBreakPartComponentOnBreakPartDelegate
---@field bEnabled boolean
---@field BreakMaterial UMaterialInterface
---@field BreakDuration float
---@field BreakDropDataHandle FDataTableRowHandle
---@field OneShotFXDataList TArray<FSpineFXData>
---@field LoopFXDataList TArray<FSpineFXData>
---@field BreakSkins TArray<FString>
---@field LoopFXInstances TArray<UNiagaraComponent>
local UBreakPartComponent = {}



---@class UBreakPartStateManagerComponent : UActorComponent
---@field BreakPartStates TMap<FClearActorData, EBreakType>
local UBreakPartStateManagerComponent = {}

---@param EnemySpawner AEnemySpawner
---@return EBreakType
function UBreakPartStateManagerComponent:RegisterBreakPartState(EnemySpawner) end
---@param EnemySpawner AEnemySpawner
---@return EBreakType
function UBreakPartStateManagerComponent:GetBreakPartState(EnemySpawner) end
---@param WorldContextObject UObject
---@return UBreakPartStateManagerComponent
function UBreakPartStateManagerComponent:Get(WorldContextObject) end
function UBreakPartStateManagerComponent:ClearBreakPartStates() end


---@class UCameraOverrideModule : UObject
local UCameraOverrideModule = {}


---@class UCameraOverrideModule_CameraSpeed : UCameraOverrideModule
---@field CameraSpeed float
local UCameraOverrideModule_CameraSpeed = {}



---@class UCameraOverrideModule_CenterHorizontalFlag : UCameraOverrideModule
---@field bCenterHorizontal boolean
local UCameraOverrideModule_CenterHorizontalFlag = {}



---@class UCameraOverrideModule_CenterVerticalFlag : UCameraOverrideModule
---@field bCenterVertical boolean
local UCameraOverrideModule_CenterVerticalFlag = {}



---@class UCameraOverrideModule_EnemyBoundsFactor : UCameraOverrideModule
---@field EnemyBoundsFactor float
local UCameraOverrideModule_EnemyBoundsFactor = {}



---@class UCameraOverrideModule_FOV : UCameraOverrideModule
---@field OverrideType ECameraModuleOverrideType
---@field FOV float
---@field FOVFactor float
local UCameraOverrideModule_FOV = {}



---@class UCameraOverrideModule_InputLocationOffsetSpeed : UCameraOverrideModule
---@field InputLocationOffsetSpeed float
local UCameraOverrideModule_InputLocationOffsetSpeed = {}



---@class UCameraOverrideModule_LocalLocationOffset : UCameraOverrideModule
---@field LocalLocationOffset FVector2D
local UCameraOverrideModule_LocalLocationOffset = {}



---@class UCameraOverrideModule_LocalOffsetEaseExp : UCameraOverrideModule
---@field LocalOffsetBlendType ECameraLocalOffsetBlendType
---@field LocalOffsetEaseExp float
local UCameraOverrideModule_LocalOffsetEaseExp = {}



---@class UCameraOverrideModule_LocalOffsetSpeed : UCameraOverrideModule
---@field LocalLocationOffsetSpeed float
local UCameraOverrideModule_LocalOffsetSpeed = {}



---@class UCameraOverrideModule_MaxInputLocationOffset : UCameraOverrideModule
---@field MaxInputLocationOffset FVector2D
local UCameraOverrideModule_MaxInputLocationOffset = {}



---@class UCameraOverrideModule_MinMaxBlendSpeed : UCameraOverrideModule
---@field MinMaxBlendSpeed float
local UCameraOverrideModule_MinMaxBlendSpeed = {}



---@class UCameraOverrideModule_PlayerBoundsFactor : UCameraOverrideModule
---@field PlayerBoundsFactor float
local UCameraOverrideModule_PlayerBoundsFactor = {}



---@class UCameraOverrideModule_SettingsEaseOutExp : UCameraOverrideModule
---@field SettingsEaseOutExp float
local UCameraOverrideModule_SettingsEaseOutExp = {}



---@class UCameraOverrideModule_WorldLocationOffset : UCameraOverrideModule
---@field WorldLocationOffset FVector2D
local UCameraOverrideModule_WorldLocationOffset = {}



---@class UCameraOverrideModule_ZoomOffset : UCameraOverrideModule
---@field OverrideType ECameraModuleOverrideType
---@field ZoomOffset float
---@field ZoomOffsetFactor float
local UCameraOverrideModule_ZoomOffset = {}



---@class UClearComponent : UActorComponent
---@field OnClearedStatusChecked FClearComponentOnClearedStatusChecked
---@field bEnabled boolean
---@field bSaveClearStatus boolean
---@field bCheckPreviousRuns boolean
---@field bCountForZoneCompletion boolean
---@field bCountForZoneReveal boolean
---@field bDestroyActorOnClear boolean
---@field bOverrideClearWorld boolean
---@field OverrideClearWorld TSoftObjectPtr<UWorld>
---@field ClearActorData FClearActorData
local UClearComponent = {}

---@return boolean
function UClearComponent:WasClearedOnPreviousRuns() end
function UClearComponent:MarkAsCleared() end
---@return boolean
function UClearComponent:IsCleared() end
---@return EClearStatus
function UClearComponent:GetPreviousRunsClearStatus() end
---@return EClearStatus
function UClearComponent:GetClearStatus() end


---@class UClearManagerComponent : UActorComponent
---@field ClearedActors TMap<FName, FNameSet>
---@field ClearedSavedActors TMap<FName, FNameSet>
---@field PreviousRunsClearedSavedActors TMap<FName, FNameSet>
---@field DeferredMarkAsClears TArray<UClearComponent>
local UClearManagerComponent = {}

function UClearManagerComponent:ResetClearedObjects() end
---@param WorldContextObject UObject
---@return UClearManagerComponent
function UClearManagerComponent:Get(WorldContextObject) end


---@class UCollisionComponent : UActorComponent
---@field bOverrideResponses boolean
---@field ResponseOverrides FCollisionResponseContainer
---@field SpecificResponseOverrides TMap<ECollisionChannel, ECollisionResponse>
---@field HurtboxReferences TArray<FComponentReference>
---@field CustomHurtboxReferences TMap<FName, FComponentReference>
---@field CustomParryHurtboxes TArray<FName>
---@field HitboxReferences TArray<FComponentReference>
---@field bOverrideCollisionResponseToPlayer boolean
---@field OverrideCollisionResponseToPlayer ECollisionResponse
---@field CollisionProfile ECollisionProfile
local UCollisionComponent = {}

function UCollisionComponent:RefreshHurtboxVisuals() end
function UCollisionComponent:RefreshHitboxVisuals() end


---@class UComboBoxStringZion : UComboBoxString
local UComboBoxStringZion = {}

---@param OptionsToAdd TArray<FString>
function UComboBoxStringZion:AddOptions(OptionsToAdd) end


---@class UCommand : UObject
---@field Conditions TArray<UCommandCondition>
---@field Modules TArray<UCommandModule>
---@field FinishConditions TArray<UCommandCondition>
local UCommand = {}

function UCommand:OnStart() end
function UCommand:OnReset() end
function UCommand:OnPreStart() end
---@param PawnOwner APawn
function UCommand:OnInitialize(PawnOwner) end
---@param FinishType ECommandFinishType
function UCommand:OnFinish(FinishType) end
---@return boolean
function UCommand:OnCanBeStarted() end
---@return boolean
function UCommand:IsInvokedInputPressed() end
---@return UCommandSet
function UCommand:GetSourceCommandSet() end
---@return APawn
function UCommand:GetPawn() end
---@return UMovementComponent
function UCommand:GetMovementComponent() end
---@param CommandModuleClass TSubclassOf<UCommandModule>
---@param bEnsureIfMissing boolean
---@return UCommandModule
function UCommand:GetModule(CommandModuleClass, bEnsureIfMissing) end
---@return UInputAction
function UCommand:GetInvokedInputAction() end
---@return FInputSnapshot
function UCommand:GetInputSnapshot() end
---@return float
function UCommand:GetExecutionTime() end
---@return ECommandLayerType
function UCommand:GetCommandLayer() end
---@return ECommandCategory
function UCommand:GetCommandCategory() end
---@return ACharacter
function UCommand:GetCharacter() end


---@class UCommandCharge : UCommand
---@field ReleaseDataArray TArray<FChargeReleaseData>
---@field bAutoRelease boolean
---@field MinimumChargeType ECommandMinimumChargeType
---@field MinimumChargeTime float
local UCommandCharge = {}

function UCommandCharge:OnRelease() end
---@param NewChargeLevel int32
function UCommandCharge:OnChargeLevelUp(NewChargeLevel) end
---@return boolean
function UCommandCharge:IsReleased() end
---@return int32
function UCommandCharge:GetChargeLevel() end


---@class UCommandChargeReleaseInput : UCommandCharge
---@field ReleaseInputAction UInputAction
local UCommandChargeReleaseInput = {}



---@class UCommandComponent : UActorComponent
---@field OnCommandQueueCleared FCommandComponentOnCommandQueueCleared
---@field OnPreStartCommand FCommandComponentOnPreStartCommand
---@field OnPostStartCommand FCommandComponentOnPostStartCommand
---@field OnFinishCommand FCommandComponentOnFinishCommand
---@field OnCommandFinishCooldown FCommandComponentOnCommandFinishCooldown
---@field DefaultCommandSet UCommandSet
---@field CommandSettingsContainers TArray<FCommandSettingsContainer>
---@field CommandsForClasses TMap<TSubclassOf<UCommand>, FCachedCommands>
---@field CommandLayers TMap<ECommandLayerType, FCommandLayer>
---@field FallbackInputAction UInputAction
local UCommandComponent = {}

---@param CategoriesToReset TArray<ECommandCategory>
function UCommandComponent:ResetFallingExecutionCountsOfCategories(CategoriesToReset) end
function UCommandComponent:ResetFallingExecutionCounts() end
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UCommandComponent:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
---@return boolean
function UCommandComponent:HasCommand() end
---@param CommandSet UCommandSet
---@return float
function UCommandComponent:GetCooldownRatioForCommandSet(CommandSet) end
---@param CommandSet UCommandSet
---@return float
function UCommandComponent:GetCooldownForCommandSet(CommandSet) end
---@param bStopCurrentCommand boolean
function UCommandComponent:ClearCommands(bStopCurrentCommand) end
---@param CommandClasses TArray<TSubclassOf<UCommand>>
---@param InvokedByInputAction UInputAction
---@param CommandLayerType ECommandLayerType
---@param BufferTTL float
function UCommandComponent:AddCommandsToVirtualBufferFromClasses(CommandClasses, InvokedByInputAction, CommandLayerType, BufferTTL) end
---@param CommandClasses TArray<TSubclassOf<UCommand>>
---@param InvokedByInputAction UInputAction
---@param CommandLayerType ECommandLayerType
---@param bRemoveOnStartFailure boolean
---@param OverrideCommandSet UCommandSet
function UCommandComponent:AddCommandsFromClasses(CommandClasses, InvokedByInputAction, CommandLayerType, bRemoveOnStartFailure, OverrideCommandSet) end
---@param CommandSettingsArray TArray<FCommandSettings>
---@param OverrideCommandSet UCommandSet
---@return int32
function UCommandComponent:AddCommands(CommandSettingsArray, OverrideCommandSet) end


---@class UCommandCondition : UObject
---@field bInvertCondition boolean
local UCommandCondition = {}

function UCommandCondition:OnInitialize() end
---@return boolean
function UCommandCondition:OnCheckCondition() end
---@return UCommand
function UCommandCondition:GetCommand() end
---@return ACharacter
function UCommandCondition:GetCharacter() end


---@class UCommandCondition_AnyInput : UCommandCondition
local UCommandCondition_AnyInput = {}


---@class UCommandCondition_CommandLevel_Check : UCommandCondition
---@field MaxCommandLevel int32
local UCommandCondition_CommandLevel_Check = {}



---@class UCommandCondition_Cooldown : UCommandCondition
---@field Cooldown float
local UCommandCondition_Cooldown = {}



---@class UCommandCondition_DashChargeMode : UCommandCondition
---@field ValidModes TArray<EDashChargeMode>
local UCommandCondition_DashChargeMode = {}



---@class UCommandCondition_DodgeStill_InputSetting : UCommandCondition
---@field ValidInputDirections TArray<EInputDirection>
local UCommandCondition_DodgeStill_InputSetting = {}



---@class UCommandCondition_FallingExecutionCount : UCommandCondition
---@field CountType EFallingExecutionCountType
---@field MaxFallingExecutionCount int32
local UCommandCondition_FallingExecutionCount = {}



---@class UCommandCondition_HasAptitude : UCommandCondition
---@field Aptitudes TArray<EAptitudeType>
local UCommandCondition_HasAptitude = {}



---@class UCommandCondition_HasEnoughSP : UCommandCondition
local UCommandCondition_HasEnoughSP = {}


---@class UCommandCondition_HasRemainingHeals : UCommandCondition
local UCommandCondition_HasRemainingHeals = {}


---@class UCommandCondition_HasState : UCommandCondition
---@field CheckType EHasStateConditionType
---@field States TArray<TSubclassOf<UState>>
local UCommandCondition_HasState = {}



---@class UCommandCondition_HasStatusEffect : UCommandCondition
---@field CheckOperator EConditionOperator
---@field StatusEffects TArray<EStatusEffectType>
local UCommandCondition_HasStatusEffect = {}



---@class UCommandCondition_ImmersionDepth : UCommandCondition
---@field Operator ECommonOperator
---@field ComparingImmersionDepth float
local UCommandCondition_ImmersionDepth = {}



---@class UCommandCondition_InputDirection : UCommandCondition
---@field bIgnoreCanMoveCheck boolean
local UCommandCondition_InputDirection = {}



---@class UCommandCondition_InputDirection_Custom : UCommandCondition_InputDirection
---@field ValidInputDirections TArray<EInputDirection>
local UCommandCondition_InputDirection_Custom = {}



---@class UCommandCondition_InputDirection_Lateral : UCommandCondition_InputDirection
---@field ValidInputDirections TArray<EInputDirection>
local UCommandCondition_InputDirection_Lateral = {}



---@class UCommandCondition_IsFullHP : UCommandCondition
local UCommandCondition_IsFullHP = {}


---@class UCommandCondition_IsInvokedInputPressed : UCommandCondition
local UCommandCondition_IsInvokedInputPressed = {}


---@class UCommandCondition_IsPlayingAnimation : UCommandCondition
---@field AnimatorLayer ESpineAnimatorLayer
local UCommandCondition_IsPlayingAnimation = {}



---@class UCommandCondition_IsSpecialModifierPressed : UCommandCondition
---@field SpecialInputAction UInputAction
local UCommandCondition_IsSpecialModifierPressed = {}



---@class UCommandCondition_IsSpiritActive : UCommandCondition
---@field SpiritClass TSubclassOf<ACharacterZionSpirit>
---@field CheckMode ESpiritActivationCheckMode
---@field ValidCategories TSet<ECommandSetCategory>
local UCommandCondition_IsSpiritActive = {}



---@class UCommandCondition_MovementMode : UCommandCondition
---@field ValidMovementModes TArray<FMovementModeData>
local UCommandCondition_MovementMode = {}



---@class UCommandCondition_MovementSpeedMode : UCommandCondition
---@field ValidMovementSpeedModes TArray<EMovementSpeedMode>
local UCommandCondition_MovementSpeedMode = {}



---@class UCommandCondition_PassiveEquipped : UCommandCondition
---@field PassiveHandle FDataTableRowHandle
local UCommandCondition_PassiveEquipped = {}



---@class UCommandModule : UObject
---@field bEnabled boolean
---@field bWaitForModuleToComplete boolean
local UCommandModule = {}

function UCommandModule:OnStart() end
function UCommandModule:OnReset() end
function UCommandModule:OnInitialize() end
function UCommandModule:OnFinish() end
---@return float
function UCommandModule:GetExecutionTime() end
---@return UCommand
function UCommandModule:GetCommand() end
---@return ACharacter
function UCommandModule:GetCharacter() end


---@class UCommandModule_AbilityInstant : UCommandModule
---@field TargetType EAbilityInstantTarget
---@field TargetFaction EFaction
---@field Radius float
---@field ConditionType EAbilityInstantTriggerCondition
---@field ParriedActorValidFactions TSet<EFaction>
---@field AbilityData FAbilityData
---@field AbilityAdditionalData FAbilityAdditionalData
---@field DelayBeforeLaunch float
---@field bLoop boolean
---@field LoopMaxCount int32
---@field LoopTimer float
local UCommandModule_AbilityInstant = {}



---@class UCommandModule_AbilityLoop : UCommandModule
---@field AbilityData FAbilityData
---@field AbilityAdditionalData FAbilityAdditionalData
---@field DelayBeforeLaunch float
---@field LoopMaxCount int32
---@field LoopTimer float
local UCommandModule_AbilityLoop = {}



---@class UCommandModule_AbilityShockwave : UCommandModule
---@field AbilityData FAbilityData
---@field AbilityAdditionalData FAbilityAdditionalData
---@field DelayBeforeFirstLaunch float
---@field DelayBetweenLaunch float
---@field MaxCount int32
---@field OffsetBetweenLaunch float
---@field MaxAcceptableAngle float
---@field GroundCheckStartDistance float
---@field GroundMaxDistance float
---@field bUseAdditionalGroundCheck boolean
---@field AdditionalGroundCheckDistanceStep float
local UCommandModule_AbilityShockwave = {}



---@class UCommandModule_ActivateAuraFXs : UCommandModule
---@field AuraFXTag FName
---@field ActivationTime float
---@field bEnsureActivation boolean
local UCommandModule_ActivateAuraFXs = {}



---@class UCommandModule_AddCommands : UCommandModule
---@field Conditions TArray<UCommandCondition>
---@field CommandClasses TArray<TSubclassOf<UCommand>>
---@field bAbortOnSuccess boolean
---@field ActiveType ECommandModuleActiveType
---@field StartTime float
---@field EndTime float
local UCommandModule_AddCommands = {}



---@class UCommandModule_CommandLevel_Increment : UCommandModule
local UCommandModule_CommandLevel_Increment = {}


---@class UCommandModule_CommandLevel_Reset : UCommandModule
local UCommandModule_CommandLevel_Reset = {}


---@class UCommandModule_CommandLevel_Set : UCommandModule
---@field CommandLevel int32
local UCommandModule_CommandLevel_Set = {}



---@class UCommandModule_ConsumeSP : UCommandModule
---@field UISoundEvent UFMODEvent
local UCommandModule_ConsumeSP = {}



---@class UCommandModule_ConvertToFlying : UCommandModule
local UCommandModule_ConvertToFlying = {}


---@class UCommandModule_DeactivateAuraFXs : UCommandModule
---@field AuraFXTag FName
---@field DeactivationTime float
---@field bEnsureDeactivation boolean
local UCommandModule_DeactivateAuraFXs = {}



---@class UCommandModule_Dummy : UCommandModule
local UCommandModule_Dummy = {}


---@class UCommandModule_EnableCustomHurtbox : UCommandModule
---@field HurtboxTags TArray<FName>
---@field ActiveType EEnableCustomHurtboxActiveType
---@field StartTime float
---@field EndTime float
local UCommandModule_EnableCustomHurtbox = {}



---@class UCommandModule_FallingExecutionCounts_Reset : UCommandModule
---@field bResetSpecificCategories boolean
---@field SpecificCategories TArray<ECommandCategory>
local UCommandModule_FallingExecutionCounts_Reset = {}



---@class UCommandModule_GravityScale : UCommandModule
---@field GravityScale float
---@field GravityScaleFactorCurve UCurveFloat
local UCommandModule_GravityScale = {}



---@class UCommandModule_IKBoneTarget : UCommandModule
---@field IKBoneDriver EIKBoneDriver
---@field bResetIKBoneOnFinish boolean
---@field StartTime float
---@field bUseEndTime boolean
---@field EndTime float
---@field BlendMode EIKBoneBlendMode
---@field BlendInjectionSpeed float
---@field RotationSpeed float
---@field MinIKTargetDistance float
---@field ClampReferenceVectorMode EIKBoneReferenceVectorMode
---@field ClampAngleMin float
---@field ClampAngleMax float
---@field bOverrideAbilityGlobalOffset boolean
local UCommandModule_IKBoneTarget = {}



---@class UCommandModule_LaunchStatusEffect : UCommandModule
---@field StatusEffectClasses TArray<TSubclassOf<UStatusEffect>>
local UCommandModule_LaunchStatusEffect = {}



---@class UCommandModule_MovementMode : UCommandModule
---@field MovementMode FMovementModeData
local UCommandModule_MovementMode = {}



---@class UCommandModule_OrientToTarget : UCommandModule
---@field StartTime float
---@field bUseEndTime boolean
---@field EndTime float
---@field BlendMode ERotationBlendMode
---@field BlendInjectionSpeed float
---@field RotationSpeed float
local UCommandModule_OrientToTarget = {}



---@class UCommandModule_PhaseLevel_Increment : UCommandModule
local UCommandModule_PhaseLevel_Increment = {}


---@class UCommandModule_PhaseLevel_Set : UCommandModule
---@field PhaseLevel int32
local UCommandModule_PhaseLevel_Set = {}



---@class UCommandModule_PlayAnimation : UCommandModule
---@field AnimationDefinitions TArray<FSpineAnimationDefinition>
---@field OverrideForMovementModes TMap<FMovementModeData, FAnimationDefinitionList>
---@field OverrideForMovementSpeedModes TMap<EMovementSpeedMode, FAnimationDefinitionList>
local UCommandModule_PlayAnimation = {}



---@class UCommandModule_PlayAnimation_InputDirection : UCommandModule_PlayAnimation
---@field AnimationsForDirections TMap<EInputDirection, FAnimationDefinitionList>
local UCommandModule_PlayAnimation_InputDirection = {}



---@class UCommandModule_ResetJumpCount : UCommandModule
local UCommandModule_ResetJumpCount = {}


---@class UCommandModule_ResetVelocity : UCommandModule
---@field bResetVelocityX boolean
---@field bResetVelocityY boolean
---@field bResetVelocityZ boolean
local UCommandModule_ResetVelocity = {}



---@class UCommandModule_SetFacingFromInput : UCommandModule
---@field bCheckLockFacing boolean
local UCommandModule_SetFacingFromInput = {}



---@class UCommandModule_Sound : UCommandModule
---@field SoundEvent UFMODEvent
---@field Delay float
---@field bAttach boolean
---@field SoundSubsystem USoundSubsystem
local UCommandModule_Sound = {}



---@class UCommandModule_Spawn : UCommandModule
---@field SpawnData FSpawnData
---@field StartTime float
local UCommandModule_Spawn = {}



---@class UCommandModule_SpineActor : UCommandModule
---@field SpineActorClass TSubclassOf<ASpineActor>
---@field DefaultAnimationDefinitions TArray<FSpineSimpleAnimationDefinition>
---@field OverrideForMovementModes TMap<FMovementModeData, FSimpleAnimationDefinitionList>
---@field OriginBone ESpineBone
---@field OriginBoneCustomName FName
---@field LocalSpaceOffset FVector
---@field SpineActor ASpineActor
local UCommandModule_SpineActor = {}



---@class UCommandModule_SpineSkins : UCommandModule
---@field Delay float
---@field Skins TArray<FString>
local UCommandModule_SpineSkins = {}



---@class UCommandModule_Summon : UCommandModule
---@field SpiritClass TSubclassOf<ACharacterZionSpirit>
---@field CommandClasses TArray<TSubclassOf<UCommand>>
---@field SummonParameters FSpiritSummonParameters
---@field OnFinishDismissType EDismissType
---@field DismissDelay float
local UCommandModule_Summon = {}

---@return ACharacterZionSpirit
function UCommandModule_Summon:GetSpirit() end


---@class UCommandModule_SummonAuto : UCommandModule_Summon
---@field AutoParameters FSpiritAutoSummonParameters
local UCommandModule_SummonAuto = {}



---@class UCommandModule_SummonRepeat : UCommandModule_Summon
---@field RepeatParameters FSpiritRepeatSummonParameters
local UCommandModule_SummonRepeat = {}



---@class UCommandModule_SummonTurret : UCommandModule_Summon
---@field TurretParameters FSpiritTurretSummonParameters
local UCommandModule_SummonTurret = {}



---@class UCommandModule_TimeDilation : UCommandModule
---@field StartTime float
---@field Settings FTimedDilationData
local UCommandModule_TimeDilation = {}



---@class UCommandModule_Timeline : UCommandModule
local UCommandModule_Timeline = {}


---@class UCommandModule_Timeline_Ability : UCommandModule_Timeline
---@field GlobalOffsetMode EAbilityOffsetMode
---@field TimelineAbility FTimelineAbility
local UCommandModule_Timeline_Ability = {}



---@class UCommandModule_Timeline_FX : UCommandModule_Timeline
---@field TimelineFX FTimelineFX
local UCommandModule_Timeline_FX = {}



---@class UCommandModule_Timeline_Move : UCommandModule_Timeline
---@field TimelineMove FTimelineMove
---@field RotationMode EMoveTimelineRotation
---@field MovementModeChangedBehavior EMoveTimelineMovementModeChangeBehavior
local UCommandModule_Timeline_Move = {}

---@param InCharacter ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UCommandModule_Timeline_Move:OnMovementModeChanged(InCharacter, PrevMovementMode, PreviousCustomMode) end


---@class UCommandModule_Timeline_SE : UCommandModule_Timeline
---@field TimelineSE FTimelineSE
local UCommandModule_Timeline_SE = {}



---@class UCommandModule_Timeline_State : UCommandModule_Timeline
---@field TimelineState FTimelineState
local UCommandModule_Timeline_State = {}



---@class UCommandModule_TriggerLeadFx : UCommandModule
---@field TriggerTime float
---@field bOverrideLeadFX boolean
---@field OverrideLeadFX FSpineFXData
local UCommandModule_TriggerLeadFx = {}



---@class UCommandModule_TriggerPlayerUIAnimation : UCommandModule
---@field Animation EPlayerUIAnimation
local UCommandModule_TriggerPlayerUIAnimation = {}



---@class UCommandSet : UDataAsset
---@field Category ECommandSetCategory
---@field bAllowAutoReSummon boolean
---@field Cooldown float
---@field CommandSettingsList TArray<UCommandSettingsData>
local UCommandSet = {}



---@class UCommandSettingsData : UDataAsset
---@field CommandSettings FCommandSettings
local UCommandSettingsData = {}



---@class UCommand_AI_DashTo : UCommand
---@field DashForward FDashToData
---@field DashBackward FDashToData
---@field DashLoopFXs TArray<FSpineFXData>
---@field DashLoopSoundData FSoundData
---@field AbilityData FAbilityData
---@field DashStopAbilityData FAbilityData
---@field bCheckDistanceFromBlocker boolean
---@field AutoStopAtDistanceFromBlocker float
---@field LoopFXInstances TArray<UNiagaraComponent>
---@field LoopSEInstance UFMODAudioComponent
---@field Ability AAbility
local UCommand_AI_DashTo = {}

---@param Hit FHitResult
function UCommand_AI_DashTo:OnMoveBlocked(Hit) end


---@class UCommand_AI_WarpTo : UCommand
---@field WarpLocationComputationTiming EWarpLocationComputationTiming
---@field bSweepToTeleportLocation boolean
---@field WarpExecutionTiming EWarpExecutionTiming
---@field WarpExecutionTime float
---@field AnimationStartName FString
---@field bOffsetByHalfHeight boolean
---@field WarpFacingMode EWarpFacingMode
---@field MaxGroundDistance float
---@field SnapToGroundCollisionChannel ECollisionChannel
---@field bWarpYAxis boolean
---@field bWarpZAxis boolean
local UCommand_AI_WarpTo = {}

---@param TrackEntry UTrackEntry
function UCommand_AI_WarpTo:OnAnimationStart(TrackEntry) end


---@class UCommand_AutoClimb : UCommand
---@field LocationBlendCurve UCurveVector
local UCommand_AutoClimb = {}



---@class UCommand_Dodge : UCommand
---@field bSetMovementSpeedFastOnFinish boolean
local UCommand_Dodge = {}



---@class UCommand_Fall : UCommand
---@field LandingCommandClasses TArray<TSubclassOf<UCommand>>
local UCommand_Fall = {}



---@class UCommand_FinalAbility : UCommand
---@field ValidFinishTypes TArray<ECommandFinishType>
---@field AbilityDataList TArray<FAbilityData>
---@field bKillCharacter boolean
---@field KillDelay float
local UCommand_FinalAbility = {}



---@class UCommand_Heal : UCommand
---@field TimeBeforeHeal float
---@field OnHealFXData FSpineFXData
local UCommand_Heal = {}



---@class UCommand_HighJump_Release : UCommand
---@field HighJumpStopCondition EHighJumpStopCondition
---@field HighJumpMaxDistance float
---@field HighJumpMaxDuration float
---@field AbilityData FAbilityData
---@field bUseAbilityRelativeOffset boolean
---@field AbilityRelativeOffsetCurve FRuntimeVectorCurve
---@field MinExecutionTimeForHighCeiling float
---@field HighJumpBlockedEndTime float
---@field HighJumpStoppedEndTime float
---@field SpiritClass TSubclassOf<ACharacterZionSpirit>
---@field CommandClasses_Release TArray<TSubclassOf<UCommand>>
---@field SummonParameters_Release FSpiritSummonParameters
---@field CommandClasses_Blocked TArray<TSubclassOf<UCommand>>
---@field SummonParameters_Blocked FSpiritSummonParameters
---@field BlockedSummonLocalSpaceOffsetCurve FRuntimeVectorCurve
---@field TimelineState_Release FTimelineState
---@field TimelineState_Blocked FTimelineState
---@field AnimationDefinitions_Release TArray<FSpineAnimationDefinition>
---@field AnimationDefinitions_Blocked TArray<FSpineAnimationDefinition>
local UCommand_HighJump_Release = {}



---@class UCommand_HoldGuard : UCommand
---@field MaxEnergy float
---@field EnergyCostPerSecond float
---@field EnergyRegenPerSecond float
---@field DamageCutPercentageBonus float
---@field OnGuardedAbilityData FAbilityData
---@field bUseAbilityCooldown boolean
---@field AbilityCooldown float
---@field GaugeClass TSubclassOf<UUserWidgetWorldSpaceGauge>
---@field GaugeWidgetHolder AWorldSpaceWidgetHolder
local UCommand_HoldGuard = {}

function UCommand_HoldGuard:OnRelease() end
---@param Source AActor
---@param Value int32
function UCommand_HoldGuard:OnReceivedDamage(Source, Value) end
---@param Ability AAbility
---@param Source AActor
function UCommand_HoldGuard:OnGuarded(Ability, Source) end
---@return boolean
function UCommand_HoldGuard:IsReleased() end


---@class UCommand_Hook : UCommand
---@field InvalidInputDirections TArray<EInputDirection>
---@field MinLaunchSize float
---@field MaxLaunchSize float
---@field DelayBeforeLaunch float
---@field Hook_Ground_Up TArray<FSpineAnimationDefinition>
---@field Hook_Ground_HalfUp TArray<FSpineAnimationDefinition>
---@field Hook_Ground_Forward TArray<FSpineAnimationDefinition>
---@field Hook_Ground_HalfDown TArray<FSpineAnimationDefinition>
---@field Hook_Ground_Down TArray<FSpineAnimationDefinition>
---@field Hook_Air_Up TArray<FSpineAnimationDefinition>
---@field Hook_Air_HalfUp TArray<FSpineAnimationDefinition>
---@field Hook_Air_Forward TArray<FSpineAnimationDefinition>
---@field Hook_Air_HalfDown TArray<FSpineAnimationDefinition>
---@field Hook_Air_Down TArray<FSpineAnimationDefinition>
---@field HookFX FSpineFXData
---@field HookFXLaunchTime float
---@field HookBlendTime float
---@field ShootSoundEvent FSoundData
---@field AttachSoundEvent FSoundData
---@field LaunchSoundEvent FSoundData
---@field HookFXInstance UNiagaraComponent
local UCommand_Hook = {}

---@param DeltaSeconds float
---@param OldLocation FVector
---@param OldVelocity FVector
function UCommand_Hook:OnMovementUpdated(DeltaSeconds, OldLocation, OldVelocity) end
---@param HitResult FHitResult
function UCommand_Hook:OnMoveBlocked(HitResult) end


---@class UCommand_Jump : UCommand
---@field MinJumpHoldTime float
local UCommand_Jump = {}



---@class UCommand_PileAttack : UCommand
---@field ChargePhaseTime float
---@field ChargePhaseStates TArray<TSubclassOf<UState>>
---@field DiveChargeLevels TArray<FPileAttackChargeLevel>
---@field DiveLaunchVelocity float
---@field CurrentDiveChargeLevelStates TArray<TSubclassOf<UState>>
---@field CurrentDiveLoopFXInstance UNiagaraComponent
---@field CurrentDiveAbility AAbility
local UCommand_PileAttack = {}



---@class UCommand_Transform : UCommand
---@field TransformDelay float
---@field EnemyRowHandle FDataTableRowHandle
---@field SpawnBone ESpineBone
---@field SpawnBoneCustomName FName
---@field bSpawnOffsetByHalfHeight boolean
---@field CommandClasses TArray<TSubclassOf<UCommand>>
local UCommand_Transform = {}



---@class UCommand_WallDash_Release : UCommand
local UCommand_WallDash_Release = {}

---@param Hit FHitResult
function UCommand_WallDash_Release:OnMoveBlocked(Hit) end


---@class UConditionalDestroyComponent : UActorComponent
---@field Mode EConditionDestroyMode
---@field Conditions FGameplayConditionChecker
---@field AdditionalActors TArray<AActor>
local UConditionalDestroyComponent = {}



---@class UConditionedTextureData : UDataAsset
---@field ConditionedTextures TArray<FConditionedTexture>
local UConditionedTextureData = {}

---@return TArray<FConditionedTexture>
function UConditionedTextureData:GetConditionedTextures() end


---@class UContactDamageComponent : UActorComponent
---@field AbilityData FAbilityData
---@field DelayBeforeReEntry float
---@field bReTriggerAbility boolean
---@field AbilityTriggerDelay float
---@field Targets TArray<AActor>
---@field InContactActors TMap<AActor, int32>
local UContactDamageComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UContactDamageComponent:OnHitboxEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UContactDamageComponent:OnHitboxBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UCustomCableComponent : UCableComponent
local UCustomCableComponent = {}


---@class UCustomMarkerComponent : UActorComponent
---@field WidgetCustomMarkerIconClass TSoftClassPtr<UUserWidgetMapIcon_CustomMarker>
---@field CustomMarkerMaxCount int32
---@field PlacedCustomMarkers TSet<FMapCustomMarkerIconData>
local UCustomMarkerComponent = {}

---@return int32
function UCustomMarkerComponent:GetCustomMarkerMaxCount() end


---@class UCustomStyleCharColorDecorator : URichTextBlockDecorator
local UCustomStyleCharColorDecorator = {}


---@class UDashChargeComponent : UActorComponent
---@field DashTimeForCharge float
---@field DashTimeForChargeShort float
---@field ChargeDashSpeedFactorToAdd float
---@field ChargingFXData FSpineFXData
---@field ChargingSoundData FSoundData
---@field OnChargedFXData FSpineFXData
---@field OnChargedSoundData FSoundData
---@field ChargedAuraFXData FSpineFXData
---@field DashChargeStates TArray<TSubclassOf<UState>>
---@field DefaultSettings FDashChargeSettings
---@field SwimmingSettings FDashChargeSettings
---@field DefaultSpiritClass TSubclassOf<ACharacterZionSpirit>
---@field SwimmingSpiritClass TSubclassOf<ACharacterZionSpirit>
---@field ChargingFX UNiagaraComponent
---@field ChargingAudio UFMODAudioComponent
---@field AuraFX UNiagaraComponent
---@field Ability AAbility
---@field Spirit ACharacterZionSpirit
---@field LoopAudioComponent UFMODAudioComponent
local UDashChargeComponent = {}

---@param TrackEntry UTrackEntry
function UDashChargeComponent:OnStartAnimation(TrackEntry) end
---@param Command UCommand
function UDashChargeComponent:OnCommandStart(Command) end
---@return boolean
function UDashChargeComponent:IsDashCharged() end


---@class UDataTableBPFLibrary : UBlueprintFunctionLibrary
local UDataTableBPFLibrary = {}

---@param Handle FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:IsValid(Handle) end
---@param PlayerControllerZion APlayerControllerZion
---@param Handle FDataTableRowHandle
---@param RecollectionItemType ERecollectionItemType
---@return boolean
function UDataTableBPFLibrary:IsRecollectionItemVisible(PlayerControllerZion, Handle, RecollectionItemType) end
---@param ItemHandle FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:IsProgressionItem(ItemHandle) end
---@param PlayerControllerZion APlayerControllerZion
---@param Handle FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:IsItemNPCInfoVisible(PlayerControllerZion, Handle) end
---@param PlayerControllerZion APlayerControllerZion
---@param AnimationConditions FItemGenericAnimationConditionData
---@return boolean
function UDataTableBPFLibrary:IsItemGenericAnimationVisible(PlayerControllerZion, AnimationConditions) end
---@param PlayerControllerZion APlayerControllerZion
---@param Handle FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:IsItemGalleryVisible(PlayerControllerZion, Handle) end
---@param PlayerControllerZion APlayerControllerZion
---@param Handle FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:IsItemEnemyInfoVisible(PlayerControllerZion, Handle) end
---@param A FDataTableRowHandle
---@param B FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:IsEqual(A, B) end
---@param PlayerControllerZion APlayerControllerZion
---@param DataTable UDataTable
---@param RecollectionItemType ERecollectionItemType
---@return boolean
function UDataTableBPFLibrary:IsAnyRecollectionItemVisible(PlayerControllerZion, DataTable, RecollectionItemType) end
---@param PlayerControllerZion APlayerControllerZion
---@param DataTable UDataTable
---@param RecollectionItemType ERecollectionItemType
---@return boolean
function UDataTableBPFLibrary:IsAllRecollectionItemsChecked(PlayerControllerZion, DataTable, RecollectionItemType) end
---@param ItemSkillData FInventoryItemSkillData
---@param Level int32
---@param out_SkillData FSkillLevelData
---@return boolean
function UDataTableBPFLibrary:GetSkillLevelDataFromItemSkillData(ItemSkillData, Level, out_SkillData) end
---@param Handle FDataTableRowHandle
---@param out_RestPointEventData FRestPointEventData
---@return boolean
function UDataTableBPFLibrary:GetRestPointEventData(Handle, out_RestPointEventData) end
---@param Handle FDataTableRowHandle
---@param out_RestPointData FRestPointData
---@return boolean
function UDataTableBPFLibrary:GetRestPointData(Handle, out_RestPointData) end
---@param Handle FDataTableRowHandle
---@param RecollectionItemType ERecollectionItemType
---@param out_RecollectionItemData FRecollectionItemData
---@return boolean
function UDataTableBPFLibrary:GetRecollectionItemData(Handle, RecollectionItemType, out_RecollectionItemData) end
---@param MapTransitionDataTable UDataTable
---@param MapTransitionSpawnPointData FMapTransitionSpawnPointData
---@param out_MapTransitionRowHandle FDataTableRowHandle
---@return boolean
function UDataTableBPFLibrary:GetMapTransitionRowHandleFromTransitionSpawnPointData(MapTransitionDataTable, MapTransitionSpawnPointData, out_MapTransitionRowHandle) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemTutorialData
---@return boolean
function UDataTableBPFLibrary:GetItemTutorialData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemTipData
---@return boolean
function UDataTableBPFLibrary:GetItemTipData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemSpiritData
---@return boolean
function UDataTableBPFLibrary:GetItemSpiritData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemSkillData
---@return boolean
function UDataTableBPFLibrary:GetItemSkillData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemPassiveData
---@return boolean
function UDataTableBPFLibrary:GetItemPassiveData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemNPCInfoData
---@return boolean
function UDataTableBPFLibrary:GetItemNPCInfoData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemGenericInfoData
---@return boolean
function UDataTableBPFLibrary:GetItemGenericInfoData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemGalleryData
---@return boolean
function UDataTableBPFLibrary:GetItemGalleryData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemEquipmentData
---@return boolean
function UDataTableBPFLibrary:GetItemEquipmentData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemEnemyInfoData
---@return boolean
function UDataTableBPFLibrary:GetItemEnemyInfoData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemCostumeData
---@return boolean
function UDataTableBPFLibrary:GetItemCostumeData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemBaseEquipmentData
---@return boolean
function UDataTableBPFLibrary:GetItemBaseEquipmentData(Handle, out_ItemData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemAssistData
---@return boolean
function UDataTableBPFLibrary:GetItemAssistData(Handle, out_ItemData) end
---@param DataTable UDataTable
---@param AptitudeType EAptitudeType
---@param out_AptitudeData FInventoryItemAptitudeData
---@return boolean
function UDataTableBPFLibrary:GetItemAptitudeDataFromType(DataTable, AptitudeType, out_AptitudeData) end
---@param Handle FDataTableRowHandle
---@param out_ItemData FInventoryItemData
---@return boolean
function UDataTableBPFLibrary:GetInventoryItemData(Handle, out_ItemData) end


---@class UDeathComponent : UActorComponent
---@field OnDeathProcessStart FDeathComponentOnDeathProcessStart
---@field OnDeathProcessEnd FDeathComponentOnDeathProcessEnd
---@field DeathProcessClass TSubclassOf<UDeathProcess>
---@field bDestroyActor boolean
---@field DeathProcess UDeathProcess
local UDeathComponent = {}

function UDeathComponent:OnHPReachedZero() end
---@return boolean
function UDeathComponent:IsDead() end


---@class UDeathProcess : UObject
---@field FacingMode EDeathFacingMode
---@field BorderDistanceForFallback float
---@field FXData FSpineFXData
---@field OnFinishFXData FSpineFXData
local UDeathProcess = {}

---@param Actor AActor
---@param DeltaTime float
function UDeathProcess:Update(Actor, DeltaTime) end
function UDeathProcess:OnFinish() end
---@param Actor AActor
function UDeathProcess:Launch(Actor) end
---@param Actor AActor
function UDeathProcess:Initialize(Actor) end
function UDeathProcess:FinishProcess() end
function UDeathProcess:Destroy() end


---@class UDeathProcess_Animation : UDeathProcess
---@field DeathAnimations TArray<FSpineAnimationDefinition>
---@field bCanUseBackAnimations boolean
---@field BackDeathAnimations TArray<FSpineAnimationDefinition>
---@field bWaitForAnimations boolean
local UDeathProcess_Animation = {}

function UDeathProcess_Animation:OnDeathAnimationFinished() end


---@class UDeathProcess_Boss : UDeathProcess_Animation
---@field bLockFastTravel boolean
---@field bSetInvincible boolean
---@field bStopNegativeStatusEffects boolean
---@field bUseTimeDilation boolean
---@field bSetFallingIfAirborne boolean
---@field TimeDilation FTimedDilationData
local UDeathProcess_Boss = {}



---@class UDeathProcess_Dissolve : UDeathProcess
---@field DissolveCurve FRuntimeFloatCurve
---@field StaticMeshComponents TArray<UStaticMeshComponent>
local UDeathProcess_Dissolve = {}



---@class UDeathProcess_Enemy : UDeathProcess_Dissolve
---@field DeathAnimations TArray<FSpineAnimationDefinition>
local UDeathProcess_Enemy = {}



---@class UDeathProcess_Player : UDeathProcess
---@field DeathAnimations TArray<FSpineAnimationDefinition>
---@field bCanUseBackAnimations boolean
---@field BackDeathAnimations TArray<FSpineAnimationDefinition>
---@field AdditionalDeathStates TArray<TSubclassOf<UState>>
---@field bUseTimeDilation boolean
---@field TimeDilation FTimedDilationData
---@field DelayBeforeFadeOut float
---@field FadeOutDescription FFadeDescriptionData
---@field SystemMPC UMaterialParameterCollection
---@field LocationTargetBone ESpineBone
local UDeathProcess_Player = {}

function UDeathProcess_Player:OnTimerFinished() end
function UDeathProcess_Player:OnFadeFinished() end


---@class UDeathProcess_SpineAnimation : UDeathProcess
---@field TrackIndex int32
---@field AnimationName FString
---@field bCanUseBackAnimations boolean
---@field BackAnimationName FString
---@field bLoop boolean
local UDeathProcess_SpineAnimation = {}

---@param TrackEntry UTrackEntry
function UDeathProcess_SpineAnimation:OnAnimationFinished(TrackEntry) end


---@class UDeathProcess_Transform : UDeathProcess
---@field bWaitForGrounded boolean
---@field FallAnimations TArray<FSpineAnimationDefinition>
---@field DeathAnimations TArray<FSpineAnimationDefinition>
---@field LevelSequence ULevelSequence
---@field SequenceSettings FMovieSceneSequencePlaybackSettings
---@field EnemyRowHandle FDataTableRowHandle
---@field SpawnBone ESpineBone
---@field SpawnBoneCustomName FName
---@field bSpawnOffsetByHalfHeight boolean
---@field CommandClasses TArray<TSubclassOf<UCommand>>
---@field ActivationDelay float
local UDeathProcess_Transform = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UDeathProcess_Transform:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
function UDeathProcess_Transform:OnDeathAnimationFinished() end


---@class UDebugDisplayComponent : UActorComponent
---@field WidgetClass TSubclassOf<UUserWidgetWorldSpaceDebug>
---@field WorldSpaceLocationOffset FVector
---@field WidgetHolder AWorldSpaceWidgetHolder
---@field Widget UUserWidgetWorldSpaceDebug
local UDebugDisplayComponent = {}

function UDebugDisplayComponent:OnTickSpineTextureInfo() end
function UDebugDisplayComponent:OnTickLevel() end
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UDebugDisplayComponent:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
function UDebugDisplayComponent:OnHPValueChanged() end
---@param Command UCommand
function UDebugDisplayComponent:OnCommandStart(Command) end
function UDebugDisplayComponent:OnCommandLevelChanged() end
---@param Command UCommand
---@param FinishType ECommandFinishType
function UDebugDisplayComponent:OnCommandFinished(Command, FinishType) end
---@param Entry UTrackEntry
function UDebugDisplayComponent:OnAnimationStart(Entry) end
---@param Entry UTrackEntry
function UDebugDisplayComponent:OnAnimationEnd(Entry) end


---@class UDelayFrameAsyncAction : UBlueprintAsyncActionBase
---@field OnFinish FDelayFrameAsyncActionOnFinish
local UDelayFrameAsyncAction = {}

---@param WorldContextObject UObject
---@param DelayInFrames int32
---@return UDelayFrameAsyncAction
function UDelayFrameAsyncAction:DelayFrame(WorldContextObject, DelayInFrames) end


---@class UDelayRealTimeAsyncAction : UBlueprintAsyncActionBase
---@field OnFinish FDelayRealTimeAsyncActionOnFinish
local UDelayRealTimeAsyncAction = {}

---@param WorldContextObject UObject
---@param DelayInSeconds float
---@return UDelayRealTimeAsyncAction
function UDelayRealTimeAsyncAction:DelayRealTime(WorldContextObject, DelayInSeconds) end


---@class UDelayUndilatedAsyncAction : UBlueprintAsyncActionBase
---@field OnFinish FDelayUndilatedAsyncActionOnFinish
local UDelayUndilatedAsyncAction = {}

---@param WorldContextObject UObject
---@param DelayInSeconds float
---@return UDelayUndilatedAsyncAction
function UDelayUndilatedAsyncAction:DelayUndilated(WorldContextObject, DelayInSeconds) end


---@class UDifficultySystemComponent : UActorComponent
---@field DifficultyForPresets TMap<EDifficultyPreset, FDifficultySettings>
---@field MinCurrencyFactor float
---@field MaxCurrencyFactor float
---@field MaxHPFactorCurrencyCurve FRuntimeFloatCurve
---@field AttackFactorCurrencyCurve FRuntimeFloatCurve
---@field ActionFrequencyCurrencyCurve FRuntimeFloatCurve
---@field StaminaFactorCurrencyCurve FRuntimeFloatCurve
---@field StaminaRecoverySpeedFactorCurrencyCurve FRuntimeFloatCurve
---@field DifficultyPresets TMap<EDifficultyMode, EDifficultyPreset>
---@field DifficultySettings TMap<EDifficultyMode, FDifficultySettings>
local UDifficultySystemComponent = {}

---@param NewDifficultyPreset EDifficultyPreset
---@param NewDifficultySettings FDifficultySettings
function UDifficultySystemComponent:SetDifficultyPresetAndSettings(NewDifficultyPreset, NewDifficultySettings) end
---@param NewDifficultyMode EDifficultyMode
function UDifficultySystemComponent:SetDifficultyMode(NewDifficultyMode) end
---@return boolean
function UDifficultySystemComponent:HasAnyChallengeEnabled() end
---@param InDifficultyPreset EDifficultyPreset
---@return FDifficultySettings
function UDifficultySystemComponent:GetDifficultySettingsForPreset(InDifficultyPreset) end
---@param InDifficultyMode EDifficultyMode
---@return FDifficultySettings
function UDifficultySystemComponent:GetDifficultySettingsForMode(InDifficultyMode) end
---@return FDifficultySettings
function UDifficultySystemComponent:GetDifficultySettings() end
---@param InDifficultySettings FDifficultySettings
---@return EDifficultyPreset
function UDifficultySystemComponent:GetDifficultyPresetFromSettings(InDifficultySettings) end
---@param InDifficultyMode EDifficultyMode
---@return EDifficultyPreset
function UDifficultySystemComponent:GetDifficultyPresetForMode(InDifficultyMode) end
---@return EDifficultyPreset
function UDifficultySystemComponent:GetDifficultyPreset() end
---@return EDifficultyMode
function UDifficultySystemComponent:GetDifficultyMode() end
---@return float
function UDifficultySystemComponent:GetCurrencyFactorRatio() end
---@return float
function UDifficultySystemComponent:GetCurrencyFactor() end
---@param WorldContextObject UObject
---@return UDifficultySystemComponent
function UDifficultySystemComponent:Get(WorldContextObject) end


---@class UDropComponent : UActorComponent
---@field ExperienceDropAmount int32
---@field ExperienceDrop int32
---@field DropDataHandle FDataTableRowHandle
local UDropComponent = {}

function UDropComponent:OnDeath() end
function UDropComponent:LaunchDropProcess() end


---@class UDropSystemComponent : UActorComponent
---@field CollectableExperienceClass TSubclassOf<ACollectable_Experience>
---@field HistoryTime double
local UDropSystemComponent = {}

---@param Experience int32
---@param Origin FTransform
function UDropSystemComponent:LaunchExperienceDrop(Experience, Origin) end
---@param WorldContextObject UObject
---@return UDropSystemComponent
function UDropSystemComponent:Get(WorldContextObject) end


---@class UDummyStatsComponent : UStatsComponent
local UDummyStatsComponent = {}


---@class UEditorDebugComponent : UActorComponent
local UEditorDebugComponent = {}


---@class UElevatorDestinationComponent : USceneComponent
local UElevatorDestinationComponent = {}


---@class UElevatorMovementComponent : UMovementComponent
---@field OnStartedMovement FElevatorMovementComponentOnStartedMovement
---@field OnFinishedMovement FElevatorMovementComponentOnFinishedMovement
---@field ElevatorComponentRef FComponentReference
---@field DestinationComponentRef FComponentReference
---@field Speed float
---@field MovementCurve FRuntimeFloatCurve
---@field DelayBeforeMove float
---@field bSweep boolean
---@field TeleportType ETeleportType
local UElevatorMovementComponent = {}

function UElevatorMovementComponent:TeleportToOrigin() end
function UElevatorMovementComponent:TeleportToDestination() end
---@param bAllowed boolean
function UElevatorMovementComponent:SetAllowOutOfScreenSpeedFactor(bAllowed) end
---@return boolean
function UElevatorMovementComponent:IsMoving() end
---@return boolean
function UElevatorMovementComponent:IsDirectionSetToDestination() end
---@param bInstant boolean
function UElevatorMovementComponent:GoToOrigin(bInstant) end
---@param bInstant boolean
function UElevatorMovementComponent:GoToDestination(bInstant) end
---@return FVector
function UElevatorMovementComponent:GetCurrentLocation() end


---@class UElevatorStateManagerComponent : UActorComponent
---@field ElevatorStates TMap<FClearActorData, EElevatorState>
local UElevatorStateManagerComponent = {}

---@param ElevatorActor AMovingPlatform_Elevator
---@return EElevatorState
function UElevatorStateManagerComponent:RegisterElevatorState(ElevatorActor) end
function UElevatorStateManagerComponent:OnGameMapChangeFinished() end
---@param ElevatorActor AMovingPlatform_Elevator
---@return EElevatorState
function UElevatorStateManagerComponent:GetElevatorState(ElevatorActor) end
---@param WorldContextObject UObject
---@return UElevatorStateManagerComponent
function UElevatorStateManagerComponent:Get(WorldContextObject) end
function UElevatorStateManagerComponent:ClearElevatorStates() end


---@class UEmulatedFogManagerComponent : UActorComponent
---@field EmulatedFogMPC UMaterialParameterCollection
local UEmulatedFogManagerComponent = {}



---@class UEnemyHookPointSceneComponent : USceneComponent
local UEnemyHookPointSceneComponent = {}


---@class UEquipmentComponent : UActorComponent
---@field EquippedItems TMap<EEquipmentSlot, FEquippedItem>
---@field CurrentLoadoutIndex int32
---@field EquipmentLoadouts TArray<FPlayerEquipmentLoadoutData>
local UEquipmentComponent = {}

---@param bRemoveFromCurrentLoadout boolean
function UEquipmentComponent:UnEquipAll(bRemoveFromCurrentLoadout) end
---@param EquipmentSlot EEquipmentSlot
---@param bRemoveFromCurrentLoadout boolean
function UEquipmentComponent:UnEquip(EquipmentSlot, bRemoveFromCurrentLoadout) end
---@param OldPawn APawn
---@param NewPawn APawn
function UEquipmentComponent:OnPossessedPawnChanged(OldPawn, NewPawn) end
---@param EquipmentSlot EEquipmentSlot
---@param EquipmentID FName
---@return boolean
function UEquipmentComponent:IsEquippedOnSlot(EquipmentSlot, EquipmentID) end
---@param EquipmentID FName
---@return boolean
function UEquipmentComponent:IsEquipped(EquipmentID) end
---@param EquipmentSlot EEquipmentSlot
---@return FName
function UEquipmentComponent:GetEquipmentIDFromSlot(EquipmentSlot) end
---@param EquipmentSlot EEquipmentSlot
---@return FInventoryItemEquipmentData
function UEquipmentComponent:GetEquipmentDataFromSlot(EquipmentSlot) end
---@param EquipmentID FName
---@return FInventoryItemEquipmentData
function UEquipmentComponent:GetEquipmentDataFromID(EquipmentID) end
---@return int32
function UEquipmentComponent:GetCurrentEquipmentLoadoutIndex() end
---@param LoadoutIndex int32
function UEquipmentComponent:EquipEquipmentLoadout(LoadoutIndex) end
---@param EquipmentSlot EEquipmentSlot
---@param EquipmentID FName
---@param bAddToCurrentLoadout boolean
function UEquipmentComponent:Equip(EquipmentSlot, EquipmentID, bAddToCurrentLoadout) end


---@class UEventAction_AddRestPointEvent : UEventAction
---@field RestPointEventDataHandle FDataTableRowHandle
local UEventAction_AddRestPointEvent = {}



---@class UEventAction_CameraShake : UEventAction
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field InnerRadius float
---@field OuterRadius float
---@field Falloff float
---@field bOrientShakeTowardsEpicenter boolean
local UEventAction_CameraShake = {}



---@class UEventAction_Choice : UEventAction
---@field Speaker FText
---@field ChoiceLine FText
---@field ChoiceSaveKey FName
---@field ChoicesData TArray<FChoiceEntryData>
local UEventAction_Choice = {}



---@class UEventAction_ClearEventIdleOverride : UEventAction_SubjectBinding
local UEventAction_ClearEventIdleOverride = {}


---@class UEventAction_ClearStashedSpirits : UEventAction
local UEventAction_ClearStashedSpirits = {}


---@class UEventAction_Convert : UEventAction_SubjectBinding
---@field TargetBinding FActorBindingKey
---@field SpawnAnimations TArray<FSpineAnimationDefinition>
---@field HideMode EActorHideMode
---@field HideAnimation FString
local UEventAction_Convert = {}



---@class UEventAction_ConvertToActorBinding : UEventAction_Convert
local UEventAction_ConvertToActorBinding = {}


---@class UEventAction_ConvertToInteractableNPC : UEventAction_Convert
---@field InteractableNPCClass TSoftClassPtr<AInteractable_EventNPC>
---@field NPCClass TSoftClassPtr<ACharacterZionNPC>
---@field NPCDataList TArray<FInteractableNPCData>
---@field LoadedInteractableNPCClass TSubclassOf<AInteractable_EventNPC>
---@field LoadedNPCClass TSubclassOf<ACharacterZionNPC>
local UEventAction_ConvertToInteractableNPC = {}



---@class UEventAction_ConvertToNPC : UEventAction_Convert
---@field NPCClass TSoftClassPtr<ACharacterZionNPC>
---@field LoadedNPCClass TSubclassOf<ACharacterZionNPC>
local UEventAction_ConvertToNPC = {}



---@class UEventAction_DismissSpirits : UEventAction
---@field bInstant boolean
local UEventAction_DismissSpirits = {}



---@class UEventAction_EquipCostume : UEventAction
---@field bAutoGrantCostume boolean
---@field CostumeHandle FDataTableRowHandle
local UEventAction_EquipCostume = {}



---@class UEventAction_EquipSkills : UEventAction
---@field bOnlyIfSetIsEmpty boolean
---@field SkillsToEquip TMap<ESkillSlot, FDataTableRowHandle>
local UEventAction_EquipSkills = {}



---@class UEventAction_ExecuteFastTravel : UEventAction
---@field FastTravelDestinationKey FName
local UEventAction_ExecuteFastTravel = {}



---@class UEventAction_ExecuteRecollectionBossFight : UEventAction
---@field IsBossRushKey FName
---@field RecollectionBossDataKey FName
local UEventAction_ExecuteRecollectionBossFight = {}



---@class UEventAction_Fade : UEventAction
---@field FadeType EFadeType
---@field FadeDescription FFadeDescriptionData
---@field FadeLayer EFadeLayer
local UEventAction_Fade = {}

function UEventAction_Fade:OnFadeCompleted() end


---@class UEventAction_FadeSetup : UEventAction
---@field FadeDescription FFadeDescriptionData
---@field FadeLayer EFadeLayer
local UEventAction_FadeSetup = {}



---@class UEventAction_ForceFeedback : UEventAction
---@field ForceFeedbackEffect UForceFeedbackEffect
local UEventAction_ForceFeedback = {}



---@class UEventAction_GrantItems : UEventAction_GrantItemsBase
---@field ItemHandleCounts TArray<FItemHandleCount>
---@field bOverrideItemsOnEventRepeat boolean
---@field RepeatItemMode EEventClearedCheckMode
---@field RepeatItemHandleCounts TArray<FItemHandleCount>
local UEventAction_GrantItems = {}



---@class UEventAction_GrantItemsBase : UEventAction
---@field bShowUI boolean
---@field UserWidgetClass TSubclassOf<UUserWidgetItemGet>
local UEventAction_GrantItemsBase = {}

function UEventAction_GrantItemsBase:OnWidgetDestruct() end


---@class UEventAction_GrantItemsFromBlackboard : UEventAction_GrantItemsBase
---@field ItemBlackboardKeys TArray<FName>
local UEventAction_GrantItemsFromBlackboard = {}



---@class UEventAction_HideActor : UEventAction_ShowHideActor
local UEventAction_HideActor = {}


---@class UEventAction_IncrementEnvironmentLevel : UEventAction
---@field bLockEnvironmentLevel boolean
local UEventAction_IncrementEnvironmentLevel = {}



---@class UEventAction_MarkEventAsCleared : UEventAction
local UEventAction_MarkEventAsCleared = {}


---@class UEventAction_MarkGameEndingReached : UEventAction
---@field ReachedEnding EGameEndingType
local UEventAction_MarkGameEndingReached = {}



---@class UEventAction_Material_SetParameter : UEventAction_SubjectBinding
---@field RenderComponentRefs TArray<FComponentReference>
---@field ParameterName FName
---@field Mode EMaterialParameterMode
---@field Value float
---@field Curve FRuntimeFloatCurve
local UEventAction_Material_SetParameter = {}



---@class UEventAction_MoveTo : UEventAction_SubjectBinding
---@field AcceptanceRadius float
---@field bStopOnOverlap boolean
---@field bTeleportToTargetOnComplete boolean
---@field MovementSpeedModeOverride EMovementSpeedMode
local UEventAction_MoveTo = {}

---@param RequestID FAIRequestID
---@param Result EPathFollowingResult::Type
function UEventAction_MoveTo:OnMoveCompleted(RequestID, Result) end


---@class UEventAction_MoveTo_Actor : UEventAction_MoveTo
---@field TargetBinding FActorBindingKey
---@field TargetLocalOffset FVector
---@field WorldOffset FVector
local UEventAction_MoveTo_Actor = {}



---@class UEventAction_MoveTo_Location : UEventAction_MoveTo
---@field bUseEventOrigin boolean
---@field TargetLocation FVector
local UEventAction_MoveTo_Location = {}



---@class UEventAction_MoveTo_TalkDistance : UEventAction_SubjectBinding
---@field TalkTargetBinding FActorBindingKey
---@field MovementType EMoveToTalkDistanceMovementType
---@field DistanceToTalkTarget float
---@field bUpdateFacingWhileMoving boolean
---@field bSweepOnTeleport boolean
---@field bPlaySubjectTurnAnimation boolean
---@field SubjectTurnAnimationDefinitions TArray<FSpineAnimationDefinition>
---@field TalkTargetFacingType EMoveToTalkDistanceTargetFacingType
---@field TalkTargetTurnAnimationDefinitions TArray<FSpineAnimationDefinition>
---@field bUseEventCamera boolean
---@field ZoomDistanceOverride float
---@field WorldSpaceOffset FVector
---@field BlendSettings FViewTargetBlendSettings
local UEventAction_MoveTo_TalkDistance = {}

---@param RequestID FAIRequestID
---@param Result EPathFollowingResult::Type
function UEventAction_MoveTo_TalkDistance:OnMoveCompleted(RequestID, Result) end


---@class UEventAction_OpenUI : UEventAction
---@field UserWidgetClass TSubclassOf<UUserWidgetZion>
local UEventAction_OpenUI = {}

function UEventAction_OpenUI:OnWidgetDestruct() end


---@class UEventAction_OpenWorld : UEventAction
---@field World TSoftObjectPtr<UWorld>
---@field PlayerStartTag FName
---@field FadeOutDescription FFadeDescriptionData
---@field FadeInDescription FFadeDescriptionData
local UEventAction_OpenWorld = {}



---@class UEventAction_OpenWorldSpaceWidget : UEventAction_SubjectBinding
---@field WidgetClass TSubclassOf<UUserWidgetWorldSpace>
---@field LocalSpaceOffset FVector
---@field bAttachToSubject boolean
local UEventAction_OpenWorldSpaceWidget = {}



---@class UEventAction_PlayAnimations : UEventAction_SubjectBinding
---@field AnimationDefinitions TArray<FSpineAnimationDefinition>
local UEventAction_PlayAnimations = {}



---@class UEventAction_PlayBGM : UEventAction
---@field BGM UFMODEvent
local UEventAction_PlayBGM = {}



---@class UEventAction_PlayFX : UEventAction_SubjectBinding
---@field FXData FSpineFXData
---@field BlackboardID FName
local UEventAction_PlayFX = {}

---@param PSystem UNiagaraComponent
function UEventAction_PlayFX:OnSystemCompleted(PSystem) end


---@class UEventAction_PlayLevelSequence : UEventAction
---@field LevelSequence ULevelSequence
---@field SequenceSettings FMovieSceneSequencePlaybackSettings
local UEventAction_PlayLevelSequence = {}

function UEventAction_PlayLevelSequence:OnLevelSequenceFinished() end


---@class UEventAction_PlayRandomAnimations : UEventAction_SubjectBinding
---@field StartAnimationDefinitions TArray<FSpineAnimationDefinition>
---@field RandomAnimationDefinitions TArray<FSpineAnimationDefinition>
---@field FinishActionKey FName
local UEventAction_PlayRandomAnimations = {}

function UEventAction_PlayRandomAnimations:OnAnimationFinished() end


---@class UEventAction_PlaySE : UEventAction_SubjectBinding
---@field SoundEvent UFMODEvent
local UEventAction_PlaySE = {}



---@class UEventAction_RemoveItems : UEventAction
---@field ItemHandleCounts TArray<FItemHandleCount>
local UEventAction_RemoveItems = {}



---@class UEventAction_ResetClearedObjects : UEventAction
local UEventAction_ResetClearedObjects = {}


---@class UEventAction_RestorePlayer : UEventAction
local UEventAction_RestorePlayer = {}


---@class UEventAction_SaveGame : UEventAction
---@field bUseAsyncSave boolean
local UEventAction_SaveGame = {}

---@param bResult boolean
function UEventAction_SaveGame:OnSaveFinished(bResult) end


---@class UEventAction_SetEventIdleOverride : UEventAction_SubjectBinding
---@field IdleDefinitions TArray<FSpineAnimationDefinition>
---@field bOverrideTurn boolean
---@field TurnDefinitions TArray<FSpineAnimationDefinition>
local UEventAction_SetEventIdleOverride = {}



---@class UEventAction_SetFacing : UEventAction_SubjectBinding
---@field bPlayAnimation boolean
---@field AnimationType EFacingAnimationType
---@field TurnAnimationDefinitions TArray<FSpineAnimationDefinition>
local UEventAction_SetFacing = {}



---@class UEventAction_SetFacing_Actor : UEventAction_SetFacing
---@field TargetBinding FActorBindingKey
local UEventAction_SetFacing_Actor = {}



---@class UEventAction_SetFacing_FacingType : UEventAction_SetFacing
---@field FacingType EFacingType
local UEventAction_SetFacing_FacingType = {}



---@class UEventAction_SetRenderLayer : UEventAction_SubjectBinding
---@field RenderLayer ERenderLayerTypes
local UEventAction_SetRenderLayer = {}



---@class UEventAction_SetRespawnPointData : UEventAction
---@field RespawnRestPointData FDataTableRowHandle
local UEventAction_SetRespawnPointData = {}



---@class UEventAction_SetSpineMaterial : UEventAction_SubjectBinding
---@field Material UMaterialInterface
local UEventAction_SetSpineMaterial = {}



---@class UEventAction_SetSpineSkins : UEventAction_SubjectBinding
---@field Skins TArray<FString>
local UEventAction_SetSpineSkins = {}



---@class UEventAction_ShowActor : UEventAction_ShowHideActor
local UEventAction_ShowActor = {}


---@class UEventAction_ShowHideActor : UEventAction_SubjectBinding
---@field FadeTime float
---@field Curve UCurveFloat
---@field FadeParameterName FName
local UEventAction_ShowHideActor = {}



---@class UEventAction_StopAnimation : UEventAction_SubjectBinding
local UEventAction_StopAnimation = {}


---@class UEventAction_StopBGM : UEventAction
---@field FadeOutTime float
local UEventAction_StopBGM = {}



---@class UEventAction_StopFX : UEventAction
---@field BlackboardID FName
local UEventAction_StopFX = {}



---@class UEventAction_SummonEquippedSpirits : UEventAction
local UEventAction_SummonEquippedSpirits = {}


---@class UEventAction_Talk : UEventAction
---@field Speaker FText
---@field TalkData TArray<FTalkData>
local UEventAction_Talk = {}



---@class UEventAction_Talk_Actor : UEventAction_SubjectBinding
---@field WidgetWorldSpaceTalk_Class TSubclassOf<UUserWidgetWorldSpaceText_Talk>
---@field ActorAnchor EWidgetActorAnchor
---@field ActorLocalOffset FVector
---@field WorldOffset FVector
---@field bAttachToSubject boolean
---@field AnimationType ETalkAnimationType
---@field StartAnimationDefinitions TArray<FSpineAnimationDefinition>
---@field EndAnimationDefinitions TArray<FSpineAnimationDefinition>
---@field TalkData TArray<FTalkData>
local UEventAction_Talk_Actor = {}



---@class UEventAction_WaitAnimation : UEventAction_SubjectBinding
local UEventAction_WaitAnimation = {}


---@class UEventAction_WaitMove : UEventAction_SubjectBinding
local UEventAction_WaitMove = {}

---@param RequestID FAIRequestID
---@param Result EPathFollowingResult::Type
function UEventAction_WaitMove:OnMoveCompleted(RequestID, Result) end


---@class UEventBPFLibrary : UBlueprintFunctionLibrary
local UEventBPFLibrary = {}

---@param SpawnerBindings TMap<FName, ASpawner>
---@return TMap<FName, AActor>
function UEventBPFLibrary:GenerateActorBindingsFromSpawners(SpawnerBindings) end
---@param ActorBindings TMap<FName, AActor>
---@param SpawnerBindings TMap<FName, ASpawner>
---@return TMap<FName, AActor>
function UEventBPFLibrary:GenerateActorBindings(ActorBindings, SpawnerBindings) end
---@param ActorBindings TMap<FName, AActor>
---@param AdditionalBindings TMap<FName, AActor>
function UEventBPFLibrary:AppendActorBindings(ActorBindings, AdditionalBindings) end


---@class UEventCondition_HasSeenEvent : UEventCondition
---@field Event TSoftObjectPtr<UEventAsset>
local UEventCondition_HasSeenEvent = {}



---@class UEventCondition_IsDemoBuild : UEventCondition
local UEventCondition_IsDemoBuild = {}


---@class UEventSkipActionZion : UEventSkipAction
local UEventSkipActionZion = {}


---@class UFXComponent : USpineFXComponent
---@field bTriggerStepOnLanding boolean
---@field LandingStepHeaviness EStepHeavinessCategory
---@field AuraFXDataList TArray<FAuraFXData>
---@field AuraFXDataListForTags TMap<FName, FAuraFXDataList>
---@field FindTargetFXData FSpineFXData
---@field LeadAbilityFXData FSpineFXData
---@field OnGuardFXData FSpineFXData
---@field OnParryFXData FSpineFXData
---@field SPChargedFXDataList TArray<FSpineFXData>
---@field SPChargedLoopFXDataList TArray<FSpineFXData>
---@field BurnFXDataList TArray<FSpineFXData>
---@field StopBurnFXDataList TArray<FSpineFXData>
---@field FreezeFXDataList TArray<FSpineFXData>
---@field StopFreezeFXDataList TArray<FSpineFXData>
---@field ShockFXDataList TArray<FSpineFXData>
---@field StopShockFXDataList TArray<FSpineFXData>
---@field StunFXDataList TArray<FSpineFXData>
---@field StopStunFXDataList TArray<FSpineFXData>
---@field AttackUpFXDataList TArray<FSpineFXData>
---@field StopAttackUpFXDataList TArray<FSpineFXData>
---@field DefenseUpFXDataList TArray<FSpineFXData>
---@field StopDefenseUpFXDataList TArray<FSpineFXData>
---@field AuraFXInstances TArray<FAuraFXRuntimeData>
---@field SPChargedLoopFXInstances TArray<UNiagaraComponent>
---@field BurnFXInstances TArray<UNiagaraComponent>
---@field FreezeFXInstances TArray<UNiagaraComponent>
---@field ShockFXInstances TArray<UNiagaraComponent>
---@field StunFXInstances TArray<UNiagaraComponent>
---@field AttackUpFXInstances TArray<UNiagaraComponent>
---@field DefenseUpFXInstances TArray<UNiagaraComponent>
local UFXComponent = {}

---@param StatusEffect UStatusEffect
function UFXComponent:OnStatusEffectStopped(StatusEffect) end
---@param StatusEffect UStatusEffect
function UFXComponent:OnStatusEffectLaunched(StatusEffect) end
function UFXComponent:OnSPValueChanged() end
---@param Ability AAbility
---@param Source AActor
function UFXComponent:OnParried(Ability, Source) end
---@param Hit FHitResult
function UFXComponent:OnLanded(Hit) end
---@param Ability AAbility
---@param Source AActor
function UFXComponent:OnGuarded(Ability, Source) end
---@param Command UCommand
---@param FinishType ECommandFinishType
function UFXComponent:OnFinishCommand(Command, FinishType) end
function UFXComponent:OnDeathProcessStart() end
---@param AuraFXTag FName
function UFXComponent:DeactivateAuraFXs(AuraFXTag) end
---@param AuraFXTag FName
function UFXComponent:ActivateAuraFXs(AuraFXTag) end


---@class UFactionComponent : UActorComponent
---@field Faction EFaction
local UFactionComponent = {}



---@class UFadeSubsystem : UGameInstanceSubsystem
---@field Fades TMap<EFadeLayer, FFadeRuntimeData>
local UFadeSubsystem = {}

---@param FadeDescription FFadeDescriptionData
---@param FadeLayer EFadeLayer
function UFadeSubsystem:SetupFadeIn(FadeDescription, FadeLayer) end
function UFadeSubsystem:OnFadeWidgetDestruct() end
---@param FadeDescription FFadeDescriptionData
---@param OnFadeFinishedDelegate FLaunchFadeOutOnFadeFinishedDelegate
---@param FadeLayer EFadeLayer
function UFadeSubsystem:LaunchFadeOut(FadeDescription, OnFadeFinishedDelegate, FadeLayer) end
---@param FadeDescription FFadeDescriptionData
---@param OnFadeFinishedDelegate FLaunchFadeInOnFadeFinishedDelegate
---@param FadeLayer EFadeLayer
function UFadeSubsystem:LaunchFadeIn(FadeDescription, OnFadeFinishedDelegate, FadeLayer) end
---@param FadeLayer EFadeLayer
---@return boolean
function UFadeSubsystem:IsFading(FadeLayer) end
---@param FadeLayer EFadeLayer
---@return boolean
function UFadeSubsystem:IsFadeVisible(FadeLayer) end
---@return boolean
function UFadeSubsystem:IsAnyFadeVisible() end
---@param FadeLayer EFadeLayer
---@return EFadeState
function UFadeSubsystem:GetFadeState(FadeLayer) end


---@class UFallDamageComponent : UActorComponent
---@field FallDamageCurve FRuntimeFloatCurve
---@field NecessaryStatesForFallDamage TArray<TSubclassOf<UState>>
local UFallDamageComponent = {}

---@param Hit FHitResult
function UFallDamageComponent:OnLandedCallback(Hit) end


---@class UFallThroughComponent : UActorComponent
---@field IgnoredPlatforms TArray<FIgnoredPlatformData>
local UFallThroughComponent = {}

---@param OneWayPlatform AOneWayPlatform
function UFallThroughComponent:FallThroughOneWayPlatform(OneWayPlatform) end
function UFallThroughComponent:ClearAllIgnoredPlatforms() end


---@class UFieldMessageAsset : UDataAsset
---@field FieldMessageType EFieldMessageType
---@field ConditionedMessages TArray<FConditionedFieldMessageData>
local UFieldMessageAsset = {}



---@class UFieldMessageComponent : UWidgetComponent
---@field OnFieldMessageFinished FFieldMessageComponentOnFieldMessageFinished
---@field MessageData UFieldMessageAsset
local UFieldMessageComponent = {}

---@param MessageDataAsset UFieldMessageAsset
function UFieldMessageComponent:SetMessageData(MessageDataAsset) end
function UFieldMessageComponent:OnMessageCompleted() end
---@param InTargetActor AActor
---@return boolean
function UFieldMessageComponent:LaunchFieldMessage(InTargetActor) end
---@return boolean
function UFieldMessageComponent:IsProcessingFieldMessage() end
---@return UFieldMessageAsset
function UFieldMessageComponent:GetFieldMessageAsset() end
function UFieldMessageComponent:Abort() end


---@class UFieldTalkAsset : UDataAsset
---@field FieldTalk FFieldTalkData
local UFieldTalkAsset = {}



---@class UFieldTalkComponent : UActorComponent
---@field OnFieldTalkFinished FFieldTalkComponentOnFieldTalkFinished
---@field CachedFieldTalkAsset UFieldTalkAsset
local UFieldTalkComponent = {}

---@param FieldTalkAsset UFieldTalkAsset
---@param bSkipActiveFieldTalkAsset boolean
---@return boolean
function UFieldTalkComponent:StartFieldTalk(FieldTalkAsset, bSkipActiveFieldTalkAsset) end
function UFieldTalkComponent:ShowFieldTalkEntry() end
function UFieldTalkComponent:OnPawnDeath() end
---@return boolean
function UFieldTalkComponent:CanStartFieldTalk() end


---@class UFindTargetComponent : UActorComponent
---@field DetectionType EAITargetDetectionType
---@field MinDistance float
---@field MaxDistance float
---@field bCheckFront boolean
---@field bCheckLineOfSight boolean
---@field VisibilityCollisionChannel ECollisionChannel
local UFindTargetComponent = {}



---@class UFluidInteractionComponent : UActorComponent
---@field SplashSettingsForSpeedModes TMap<EMovementSpeedMode, FSplashSettings>
local UFluidInteractionComponent = {}



---@class UFluidMeshComponent : UProceduralMeshComponent
---@field Material UMaterialInterface
---@field MeshType EFluidMeshType
---@field bUseMeshSubdivision boolean
---@field CellSizeX int32
---@field CellSizeY int32
---@field GeneratedCellCounts FIntVector
local UFluidMeshComponent = {}

function UFluidMeshComponent:RegenerateMesh() end


---@class UFluidSimulationComponent : UActorComponent
---@field SplatMaterial UMaterialInterface
---@field HeightSimulationMaterial UMaterialInterface
---@field bComputeNormal boolean
---@field ComputeNormalMaterial UMaterialInterface
---@field VelocityToSplashStrength FRuntimeFloatCurve
---@field VelocityToSplashSize FRuntimeFloatCurve
---@field FluidMIDs TArray<UMaterialInstanceDynamic>
---@field SplatMID UMaterialInstanceDynamic
---@field HeightSimulationMID UMaterialInstanceDynamic
---@field ComputeNormalMID UMaterialInstanceDynamic
---@field HeightFieldRTs TArray<UTextureRenderTarget2D>
---@field NormalRT UTextureRenderTarget2D
local UFluidSimulationComponent = {}

---@param WorldLocation FVector
---@param Strength float
---@param SizePercent float
function UFluidSimulationComponent:GenerateSplash(WorldLocation, Strength, SizePercent) end


---@class UFogOfWarComponent : UActorComponent
---@field MapAreaMaterial UMaterialInterface
---@field ClearZoneMaterial UMaterialInterface
---@field CompleteZoneSizeOffset FVector2D
---@field CompleteZoneBorderSize FVector2D
---@field RevealZoneSizeOffset FVector2D
---@field RevealZoneBorderSize FVector2D
---@field ClearZoneMID UMaterialInstanceDynamic
---@field ClearFogOfWarMaterial UMaterialInterface
---@field ClearFogOfWarSizeOffset FVector2D
---@field ClearFogOfWarMID UMaterialInstanceDynamic
---@field FogOfWarBlockerMID UMaterialInstanceDynamic
---@field FogOfWarMaskRTBuffer UTextureRenderTarget2D
---@field ZonesClearedMaskRTBuffer UTextureRenderTarget2D
---@field RenderTargetDataMap TMap<FName, FRenderTargetData>
---@field CachedZonesCompletedForMask TSet<FClearActorData>
---@field CachedZonesRevealedForMask TSet<FClearActorData>
local UFogOfWarComponent = {}

---@param MapName FName
function UFogOfWarComponent:ResetMapFogOfWar(MapName) end
function UFogOfWarComponent:ResetAllMapsFogOfWar() end
---@param MapName FName
function UFogOfWarComponent:ClearMapFogOfWar(MapName) end
function UFogOfWarComponent:ClearAllMapsFogOfWar() end


---@class UFollowGeometryMovementComponent : UMovementComponent
---@field MovementData FFollowGeometryMovementData
---@field bStartMovementAtBeginPlay boolean
local UFollowGeometryMovementComponent = {}

function UFollowGeometryMovementComponent:StopMovement() end
function UFollowGeometryMovementComponent:StartMovement() end
---@param NewSpeedFactor float
function UFollowGeometryMovementComponent:SetSpeedFactor(NewSpeedFactor) end
function UFollowGeometryMovementComponent:Reset() end
---@return boolean
function UFollowGeometryMovementComponent:IsMoving() end
---@return float
function UFollowGeometryMovementComponent:GetSpeedFactor() end


---@class UFollowSplineComponent : UActorComponent
---@field OnStartedMovement FFollowSplineComponentOnStartedMovement
---@field OnFinishedMovement FFollowSplineComponentOnFinishedMovement
---@field TimeToComplete float
---@field bIsClosedLoop boolean
---@field bIsMovementContinuous boolean
---@field bUseConstantVelocity boolean
---@field bUseMovementCurve boolean
---@field MovementCurve FRuntimeFloatCurve
---@field bSweep boolean
---@field bShouldTeleportWhenCalled boolean
---@field DurationWhenCalled float
local UFollowSplineComponent = {}

---@return boolean
function UFollowSplineComponent:IsClosedLoop() end


---@class UFollowTargetComponent : UMovementComponent
---@field bUpdateOwnerLocation boolean
---@field BlendSpeedMode EFollowTargetBlendSpeedMode
---@field BlendSpeed float
---@field BlendSpeedCurve FRuntimeFloatCurve
---@field OscillationScale float
---@field LocOscillation FVOscillator
---@field Offset FVector
---@field LocalSpaceOffset FVector
---@field bSweep boolean
---@field bSpringArmBehavior boolean
---@field ProbeChannel ECollisionChannel
---@field ProbeRadius float
---@field Owner AActor
local UFollowTargetComponent = {}

function UFollowTargetComponent:TeleportToTarget() end
---@param NewFollowTarget USceneComponent
---@param bSnapToTarget boolean
function UFollowTargetComponent:SetFollowTarget(NewFollowTarget, bSnapToTarget) end
function UFollowTargetComponent:OnGameMapChanged() end
---@param PinnedTarget USceneComponent
---@return FVector
function UFollowTargetComponent:GetTargetLocation(PinnedTarget) end
---@return FVector
function UFollowTargetComponent:GetFollowTargetLocation() end
---@return FVector
function UFollowTargetComponent:GetFollowTargetForward() end
---@return FVector
function UFollowTargetComponent:GetFollowTargetDeltaLocation() end
---@return USceneComponent
function UFollowTargetComponent:GetFollowTarget() end
function UFollowTargetComponent:ClearFollowTarget() end


---@class UFootIKComponent : UActorComponent
---@field Settings_Ground FFootIKSettings
---@field Settings_Slide FFootIKSettings
---@field bUseIKLocation boolean
---@field bUseIKRotation boolean
---@field bBlendIKRotation boolean
---@field IKRotationBlendSpeed float
---@field NegativeScaleAnimations TSet<FString>
---@field HeightOffsetForSlopeAngle FRuntimeFloatCurve
---@field bUseHeightOffsetBlend boolean
---@field HeightOffsetBlendSpeed float
---@field bAllowUpdateLimitation boolean
local UFootIKComponent = {}

---@param Skeleton USpineSkeletonComponent
function UFootIKComponent:OnBeforeUpdateWorldTransform(Skeleton) end
---@param TrackEntry UTrackEntry
function UFootIKComponent:OnAnimationStart(TrackEntry) end


---@class UGameEngineZion : UGameEngine
---@field OnApplicationSuspend FGameEngineZionOnApplicationSuspend
---@field OnApplicationUnsuspend FGameEngineZionOnApplicationUnsuspend
local UGameEngineZion = {}

---@return UGameEngineZion
function UGameEngineZion:Get() end


---@class UGameInstanceZion : UGameInstance
---@field LaunchGameIntent ELaunchGameIntent
---@field InputContexts TArray<UInputMappingContext>
---@field DebugInputContexts TArray<UInputMappingContext>
---@field SoundVCAs TMap<ESoundFamily, UFMODVCA>
---@field SoundBuses TMap<ESoundFamily, UFMODBus>
---@field VoiceBanks TArray<UFMODBank>
---@field PersistentGameWorld TSoftObjectPtr<UWorld>
---@field WorldLoadingIconWidgetClass TSoftClassPtr<UUserWidgetZionShowHide>
---@field SaveIconWidgetClass TSoftClassPtr<UUserWidgetZionShowHide>
---@field AchievementNotificationWidgetClass TSoftClassPtr<UUserWidgetAchievementNotificationHolder>
local UGameInstanceZion = {}

---@param NewLaunchGameIntent ELaunchGameIntent
function UGameInstanceZion:SetLaunchGameIntent(NewLaunchGameIntent) end
function UGameInstanceZion:OnAutoUploadCrashReportChanged() end
---@param Settings USentrySettings
function UGameInstanceZion:HandleSettingsDelegate(Settings) end
---@return ELaunchGameIntent
function UGameInstanceZion:GetLaunchGameIntent() end
---@param WorldContextObject UObject
---@return UGameInstanceZion
function UGameInstanceZion:Get(WorldContextObject) end
function UGameInstanceZion:ClearLaunchGameIntent() end


---@class UGameLogicBPFLibrary : UBlueprintFunctionLibrary
local UGameLogicBPFLibrary = {}

---@param InventoryComponent UInventoryComponent
---@param SkillHandle FDataTableRowHandle
---@param Level int32
---@return boolean
function UGameLogicBPFLibrary:UnlockSkillLevel(InventoryComponent, SkillHandle, Level) end
---@param WorldContextObject UObject
---@param TutorialWidgetClass TSubclassOf<UUserWidgetTutorial>
---@param TutorialHandle FDataTableRowHandle
---@param UMGLayer EUMGLayer
---@return UUserWidgetTutorial
function UGameLogicBPFLibrary:TryLaunchTutorialWidget(WorldContextObject, TutorialWidgetClass, TutorialHandle, UMGLayer) end
---@param PlayerController APlayerController
---@param Tag FName
function UGameLogicBPFLibrary:StopForceFeedbackByTag(PlayerController, Tag) end
---@param PlayerController APlayerController
---@param ForceFeedbackEffect UForceFeedbackEffect
---@param Tag FName
---@param bLooping boolean
---@param bIgnoreTimeDilation boolean
---@param bPlayWhilePaused boolean
function UGameLogicBPFLibrary:LaunchForceFeedback(PlayerController, ForceFeedbackEffect, Tag, bLooping, bIgnoreTimeDilation, bPlayWhilePaused) end
---@return int32
function UGameLogicBPFLibrary:GetSPGaugeValue() end
---@param WorldContextObject UObject
---@param SkillID FName
---@return int32
function UGameLogicBPFLibrary:GetSkillLevelFromID(WorldContextObject, SkillID) end
---@param WorldContextObject UObject
---@param SkillHandle FDataTableRowHandle
---@return int32
function UGameLogicBPFLibrary:GetSkillLevelFromHandle(WorldContextObject, SkillHandle) end
---@param PlayerController APlayerControllerZion
---@return int32
function UGameLogicBPFLibrary:GetPlayerMaxSPLimit(PlayerController) end
---@param PlayerController APlayerControllerZion
---@return FExtendedStatsData
function UGameLogicBPFLibrary:GetPlayerMaxPossibleStats(PlayerController) end
---@param PlayerController APlayerControllerZion
---@return int32
function UGameLogicBPFLibrary:GetPlayerMaxHPLimit(PlayerController) end
---@param PlayerController APlayerControllerZion
---@return int32
function UGameLogicBPFLibrary:GetPlayerMaxHealPowerLimit(PlayerController) end
---@param PlayerController APlayerControllerZion
---@return int32
function UGameLogicBPFLibrary:GetPlayerMaxHealCountLimit(PlayerController) end
---@param PlayerController APlayerControllerZion
---@return int32
function UGameLogicBPFLibrary:GetPlayerMaxDefenseLimit(PlayerController) end
---@param PlayerController APlayerControllerZion
---@return int32
function UGameLogicBPFLibrary:GetPlayerMaxAttackLimit(PlayerController) end
---@param InventoryComponent UInventoryComponent
---@param SkillHandle FDataTableRowHandle
---@return int32
function UGameLogicBPFLibrary:GetNextLevelForSkill(InventoryComponent, SkillHandle) end
---@return int32
function UGameLogicBPFLibrary:GetEquipLoadoutCount() end
---@param PlayerControllerZion APlayerControllerZion
---@param ItemConditionData FItemConditionData
---@return boolean
function UGameLogicBPFLibrary:CheckItemConditions(PlayerControllerZion, ItemConditionData) end
---@param PlayerController APlayerController
---@param GameplayConditions FGameplayConditionChecker
---@return boolean
function UGameLogicBPFLibrary:CheckGameplayConditions(PlayerController, GameplayConditions) end
---@param InventoryComponent UInventoryComponent
---@param SkillHandle FDataTableRowHandle
---@param Level int32
---@return ESkillUnlockResultType
function UGameLogicBPFLibrary:CanUnlockSkillLevel(InventoryComponent, SkillHandle, Level) end
---@param InventoryComponent UInventoryComponent
---@return boolean
function UGameLogicBPFLibrary:CanUnlockAnySkillLevel(InventoryComponent) end


---@class UGameMapBPFLibrary : UBlueprintFunctionLibrary
local UGameMapBPFLibrary = {}

---@param WorldLocation FVector
---@return FVector
function UGameMapBPFLibrary:WorldToPixelLocation(WorldLocation) end
---@return float
function UGameMapBPFLibrary:GetPixelPerMeter() end


---@class UGameSettingsSubsystem : UGameInstanceSubsystem
---@field OnAutoUploadCrashReportChanged FGameSettingsSubsystemOnAutoUploadCrashReportChanged
---@field OnDisplayHPAboveGaugeChanged FGameSettingsSubsystemOnDisplayHPAboveGaugeChanged
---@field OnDisplaySPAboveGaugeChanged FGameSettingsSubsystemOnDisplaySPAboveGaugeChanged
---@field OnDisplayPlayerUIChanged FGameSettingsSubsystemOnDisplayPlayerUIChanged
---@field OnDisplayEnemyGaugesChanged FGameSettingsSubsystemOnDisplayEnemyGaugesChanged
---@field OnDisplayAchievementNotificationsChanged FGameSettingsSubsystemOnDisplayAchievementNotificationsChanged
---@field OnConstraintHUDAspectRatioChanged FGameSettingsSubsystemOnConstraintHUDAspectRatioChanged
---@field OnAutoClimbDirectionModeChanged FGameSettingsSubsystemOnAutoClimbDirectionModeChanged
---@field OnLowHPFeedbackOpacityChanged FGameSettingsSubsystemOnLowHPFeedbackOpacityChanged
local UGameSettingsSubsystem = {}

---@param NewUIAspectRatio EConstraintCameraAspectRatio
---@return EConstraintCameraAspectRatio
function UGameSettingsSubsystem:SetUIAspectRatio(NewUIAspectRatio) end
---@param TitleType EGameEndingType
function UGameSettingsSubsystem:SetTitleType(TitleType) end
---@param InputStick EInputStick
---@param NewDeadZone float
---@return float
function UGameSettingsSubsystem:SetStickDeadZone(InputStick, NewDeadZone) end
---@param NewResolutionScale float
---@return float
function UGameSettingsSubsystem:SetResolutionScale(NewResolutionScale) end
---@param NewLowHPFeedbackOpacity float
---@return float
function UGameSettingsSubsystem:SetLowHPFeedbackOpacity(NewLowHPFeedbackOpacity) end
---@param Language FString
function UGameSettingsSubsystem:SetLanguage(Language) end
function UGameSettingsSubsystem:SetInitialSettingsDone() end
---@param bEnable boolean
---@return boolean
function UGameSettingsSubsystem:SetHoldDownToDodgeStill(bEnable) end
---@param NewGammaPercentage float
---@return float
function UGameSettingsSubsystem:SetGammaPercentage(NewGammaPercentage) end
---@param NewGamma float
---@return float
function UGameSettingsSubsystem:SetGamma(NewGamma) end
---@param bDisplay boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayTutorials(bDisplay) end
---@param bDisplay boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayPlayerUI(bDisplay) end
---@param bDisplayHPAboveGauge boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayHPAboveGauge(bDisplayHPAboveGauge) end
---@param bDisplayHealValues boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayHealValues(bDisplayHealValues) end
---@param bDisplay boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayEnemyGauges(bDisplay) end
---@param bDisplayDamageValues boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayDamageValues(bDisplayDamageValues) end
---@param bDisplay boolean
---@return boolean
function UGameSettingsSubsystem:SetDisplayAchievementNotifications(bDisplay) end
---@param NewControllerVibration float
---@return float
function UGameSettingsSubsystem:SetControllerVibration(NewControllerVibration) end
---@param bNewConstraintHUDAspectRatio boolean
---@return boolean
function UGameSettingsSubsystem:SetConstraintHUDAspectRatio(bNewConstraintHUDAspectRatio) end
---@param NewConstraintCameraAspectRatio EConstraintCameraAspectRatio
---@return EConstraintCameraAspectRatio
function UGameSettingsSubsystem:SetConstraintCameraAspectRatio(NewConstraintCameraAspectRatio) end
---@param NewCameraShake float
---@return float
function UGameSettingsSubsystem:SetCameraShake(NewCameraShake) end
---@param bEnable boolean
---@return boolean
function UGameSettingsSubsystem:SetCameraOscillation(bEnable) end
---@param bNewAutoUploadCrashReport boolean
function UGameSettingsSubsystem:SetAutoUploadCrashReport(bNewAutoUploadCrashReport) end
---@param bAutoSkip boolean
---@return boolean
function UGameSettingsSubsystem:SetAutoSkipAlreadySeenEvents(bAutoSkip) end
---@param NewMode EAutoClimbDirectionMode
---@return EAutoClimbDirectionMode
function UGameSettingsSubsystem:SetAutoClimbDirectionMode(NewMode) end
---@param NewAntiAliasingMethod EAntiAliasingMethod
---@return EAntiAliasingMethod
function UGameSettingsSubsystem:SetAntiAliasingMethod(NewAntiAliasingMethod) end
---@param GameSettingsToReset EGameSettingsType
function UGameSettingsSubsystem:ResetToDefault(GameSettingsToReset) end
function UGameSettingsSubsystem:ResetSticksDeadZone() end
---@return float
function UGameSettingsSubsystem:ResetResolutionScale() end
---@return float
function UGameSettingsSubsystem:ResetLowHPFeedbackOpacity() end
---@return boolean
function UGameSettingsSubsystem:ResetHoldDownToDodgeStill() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayTutorials() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayPlayerUI() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayHPAboveGauge() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayHealValues() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayEnemyGauges() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayDamageValues() end
---@return boolean
function UGameSettingsSubsystem:ResetDisplayAchievementNotifications() end
---@return float
function UGameSettingsSubsystem:ResetControllerVibration() end
---@return float
function UGameSettingsSubsystem:ResetCameraShake() end
---@return boolean
function UGameSettingsSubsystem:ResetCameraOscillation() end
---@return boolean
function UGameSettingsSubsystem:ResetAutoSkipAlreadySeenEvents() end
---@return EAutoClimbDirectionMode
function UGameSettingsSubsystem:ResetAutoClimbDirectionMode() end
function UGameSettingsSubsystem:ResetAspectRatio() end
function UGameSettingsSubsystem:ResetAntiAliasingMethod() end
---@return boolean
function UGameSettingsSubsystem:IsInitialSettingsDone() end
---@return EConstraintCameraAspectRatio
function UGameSettingsSubsystem:GetUIAspectRatio() end
---@return EGameEndingType
function UGameSettingsSubsystem:GetTitleType() end
---@param InputStick EInputStick
---@return float
function UGameSettingsSubsystem:GetStickDeadZone(InputStick) end
---@return float
function UGameSettingsSubsystem:GetResolutionScale() end
---@return float
function UGameSettingsSubsystem:GetMinResolutionScale() end
---@return float
function UGameSettingsSubsystem:GetMaxResolutionScale() end
---@return float
function UGameSettingsSubsystem:GetLowHPFeedbackOpacity() end
---@return FString
function UGameSettingsSubsystem:GetLanguage() end
---@return boolean
function UGameSettingsSubsystem:GetHoldDownToDodgeStill() end
---@return float
function UGameSettingsSubsystem:GetGammaPercentage() end
---@return float
function UGameSettingsSubsystem:GetGammaMin() end
---@return float
function UGameSettingsSubsystem:GetGammaMax() end
---@return float
function UGameSettingsSubsystem:GetGammaDefault() end
---@return float
function UGameSettingsSubsystem:GetGamma() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayTutorials() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayPlayerUI() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayHPAboveGauge() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayHealValues() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayEnemyGauges() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayDamageValues() end
---@return boolean
function UGameSettingsSubsystem:GetDisplayAchievementNotifications() end
---@return float
function UGameSettingsSubsystem:GetControllerVibration() end
---@return boolean
function UGameSettingsSubsystem:GetConstraintHUDAspectRatio() end
---@return EConstraintCameraAspectRatio
function UGameSettingsSubsystem:GetConstraintCameraAspectRatio() end
---@return float
function UGameSettingsSubsystem:GetCameraShake() end
---@return boolean
function UGameSettingsSubsystem:GetCameraOscillation() end
---@return boolean
function UGameSettingsSubsystem:GetAutoUploadCrashReport() end
---@return boolean
function UGameSettingsSubsystem:GetAutoSkipAlreadySeenEvents() end
---@return EAutoClimbDirectionMode
function UGameSettingsSubsystem:GetAutoClimbDirectionMode() end
---@return EAntiAliasingMethod
function UGameSettingsSubsystem:GetAntiAliasingMethod() end
---@param GameEndingType EGameEndingType
---@return boolean
function UGameSettingsSubsystem:DidReachGameEnding(GameEndingType) end
---@return boolean
function UGameSettingsSubsystem:DidReachAnyGameEnding() end


---@class UGameStatsComponent : UActorComponent
local UGameStatsComponent = {}

---@return int32
function UGameStatsComponent:UnsetPause() end
---@return int32
function UGameStatsComponent:SetPause() end
---@return FString
function UGameStatsComponent:GetPlayTimeAsString() end


---@class UGameViewportZion : UGameViewportClient
---@field OnResolutionChangedDelegate FGameViewportZionOnResolutionChangedDelegate
local UGameViewportZion = {}

---@param bEnableWorldRendering boolean
function UGameViewportZion:SetWorldRenderingEnable(bEnableWorldRendering) end
---@param bVisible boolean
function UGameViewportZion:SetViewportOverlayWidgetVisible(bVisible) end
---@param Opacity float
function UGameViewportZion:SetViewportOverlayRenderOpacity(Opacity) end
---@return boolean
function UGameViewportZion:IsShowingCollision() end
---@param ClassToFind TSubclassOf<UUserWidget>
---@return UUserWidget
function UGameViewportZion:GetUserWidgetInStack(ClassToFind) end
---@return UGameViewportZion
function UGameViewportZion:Get() end


---@class UGameplayCondition : UObject
---@field bInvertCondition boolean
local UGameplayCondition = {}

---@param PlayerController APlayerController
---@return boolean
function UGameplayCondition:OnCheckCondition(PlayerController) end
---@param GameplayConditionClass TSubclassOf<UGameplayCondition>
---@param PlayerController APlayerController
---@return boolean
function UGameplayCondition:CheckGameplayCondition(GameplayConditionClass, PlayerController) end


---@class UGameplayConditionCheckerAsset : UObject
---@field ConditionChecker FGameplayConditionChecker
local UGameplayConditionCheckerAsset = {}

---@param GameplayConditionAssetClass TSubclassOf<UGameplayConditionCheckerAsset>
---@param PlayerController APlayerController
---@return boolean
function UGameplayConditionCheckerAsset:CheckGameplayConditionAsset(GameplayConditionAssetClass, PlayerController) end
---@param PlayerController APlayerController
---@return boolean
function UGameplayConditionCheckerAsset:CheckCondition(PlayerController) end


---@class UGameplayConditionRefreshComponent : UActorComponent
---@field OnRefreshRequestedDynamic FGameplayConditionRefreshComponentOnRefreshRequestedDynamic
---@field bEnableRefresh boolean
local UGameplayConditionRefreshComponent = {}



---@class UGameplayCondition_HasAptitude : UGameplayCondition
---@field Aptitude EAptitudeType
local UGameplayCondition_HasAptitude = {}



---@class UGameplayCondition_HasClearedEvent : UGameplayCondition
---@field Event TSoftObjectPtr<UEventAsset>
local UGameplayCondition_HasClearedEvent = {}



---@class UGameplayCondition_HasItem : UGameplayCondition
---@field Item FDataTableRowHandle
local UGameplayCondition_HasItem = {}



---@class UGameplayCondition_HasPassiveEquipped : UGameplayCondition
---@field Passive FDataTableRowHandle
local UGameplayCondition_HasPassiveEquipped = {}



---@class UGameplayCondition_IsActorCleared : UGameplayCondition
---@field Actor AActor
local UGameplayCondition_IsActorCleared = {}



---@class UGameplayCondition_StoryLevel : UGameplayCondition
---@field Operator ECommonOperator
---@field StoryLevel FDataTableRowHandle
local UGameplayCondition_StoryLevel = {}



---@class UGameplayEffect : UObject
local UGameplayEffect = {}


---@class UGameplayEffect_HealCount : UGameplayEffect
---@field HealCount int32
local UGameplayEffect_HealCount = {}



---@class UGameplayEffect_HealHP : UGameplayEffect
---@field HealPercentage float
local UGameplayEffect_HealHP = {}



---@class UGameplayEffect_HealSP : UGameplayEffect
---@field HealPercentage float
local UGameplayEffect_HealSP = {}



---@class UGuardComponent : UActorComponent
---@field OnGuardedCommands TArray<TSubclassOf<UCommand>>
local UGuardComponent = {}

---@param Ability AAbility
---@param Source AActor
function UGuardComponent:OnGuarded(Ability, Source) end


---@class UGunmanIKBoneTargetComponent : UActorComponent
---@field IKBoneDriver EIKBoneDriver
---@field BlendMode EIKBoneBlendMode
---@field BlendInjectionSpeed float
---@field RotationSpeed float
---@field MinIKTargetDistance float
---@field ClampReferenceVectorMode EIKBoneReferenceVectorMode
---@field ClampAngleMin float
---@field ClampAngleMax float
---@field bOverrideAbilityGlobalOffset boolean
local UGunmanIKBoneTargetComponent = {}

---@param bNewActive boolean
function UGunmanIKBoneTargetComponent:OnSpiritActivationChanged(bNewActive) end
---@return FTransform
function UGunmanIKBoneTargetComponent:GetAbilityGlobalOffset() end


---@class UHealComponent : UActorComponent
---@field OnUseHealDelegate FHealComponentOnUseHealDelegate
---@field OnRestoreHealsDelegate FHealComponentOnRestoreHealsDelegate
---@field OnFullyRestoreHealsDelegate FHealComponentOnFullyRestoreHealsDelegate
---@field OnHealCountChangedDelegate FHealComponentOnHealCountChangedDelegate
---@field BaseHealPower int32
---@field MaxBonusHealPower int32
---@field MaxBonusHealCount int32
---@field BaseHealCount int32
---@field BonusHealCount int32
---@field AdditiveBonusHealCount int32
---@field HealPowerPercentageBonus int32
---@field CurrHealCount int32
---@field BonusHealPower int32
local UHealComponent = {}

function UHealComponent:UseHeal() end
---@param HealPercentBonusToSub int32
---@return int32
function UHealComponent:SubHealPowerPercentageBonus(HealPercentBonusToSub) end
---@param HealCountBonusToSub int32
---@return int32
function UHealComponent:SubHealCountBonus(HealCountBonusToSub) end
---@param RestoreCount int32
---@return int32
function UHealComponent:RestoreHeals(RestoreCount) end
---@return boolean
function UHealComponent:IsHealCountMax() end
---@return int32
function UHealComponent:GetRemainingHealCount() end
---@return int32
function UHealComponent:GetMaxHealCount() end
---@return int32
function UHealComponent:GetHealValue() end
---@return boolean
function UHealComponent:FullyRestoreHeals() end
---@param HealPercentBonusToAdd int32
---@return int32
function UHealComponent:AddHealPowerPercentageBonus(HealPercentBonusToAdd) end
---@param HealCountBonusToAdd int32
---@return int32
function UHealComponent:AddHealCountBonus(HealCountBonusToAdd) end


---@class UHitStopComponent : UActorComponent
---@field HitStopFactor float
---@field AdditionalHitStopStates TArray<TSubclassOf<UState>>
local UHitStopComponent = {}

---@param HitStopDuration float
function UHitStopComponent:LaunchHitStop(HitStopDuration) end
---@return boolean
function UHitStopComponent:IsInHitStop() end


---@class UHomingComponent : UMovementComponent
---@field bSweep boolean
---@field InitialSpeedType EHomingPropertyType
---@field InitialSpeed float
---@field InitialSpeedMin float
---@field InitialSpeedMax float
---@field Acceleration float
---@field bClampMaxSpeed boolean
---@field MaxSpeed float
---@field InitialAngularSpeedType EHomingPropertyType
---@field InitialAngularSpeed float
---@field InitialAngularSpeedMin float
---@field InitialAngularSpeedMax float
---@field AngularAcceleration float
---@field bClampMaxAngularSpeed boolean
---@field MaxAngularSpeed float
---@field AngularSpeedForStraightToTarget float
---@field bRotationFollowVelocity boolean
---@field bAutoStopHoming boolean
---@field AutoStopHomingDelay float
---@field RangeForTargetReach float
---@field bIncreaseRangeOverTime boolean
---@field IncreaseRangeOverTimeDelay float
---@field ReachMaxRangeTime float
---@field MaxRangeForTargetReach float
local UHomingComponent = {}

---@param TargetActor AActor
---@param bReset boolean
function UHomingComponent:SetTarget(TargetActor, bReset) end
function UHomingComponent:Reset() end
---@return USceneComponent
function UHomingComponent:GetTarget() end
---@param PinnedTarget USceneComponent
---@return boolean
function UHomingComponent:DidReachTarget(PinnedTarget) end


---@class UHookComponent : UActorComponent
---@field SphereComponent USphereComponent
---@field SphereRadius float
---@field MaxTimeSinceLastRender float
---@field MinHookDistance float
---@field MinAngle float
---@field MaxAngle float
---@field AttachPointZLocationOffset float
---@field HookPointBelowActorDistanceWeightMultiplier float
---@field InvalidStates TArray<TSubclassOf<UState>>
---@field ValidMovementModes TArray<FMovementModeData>
---@field WorldSpaceHookTargetClass_Point TSubclassOf<UUserWidgetWorldSpace>
local UHookComponent = {}

function UHookComponent:UnlockHook() end
---@param NewHookWorldLocation FVector
function UHookComponent:SetOverrideHookWorldLocation(NewHookWorldLocation) end
---@param NewHookPoint AHookPoint
function UHookComponent:SetOverrideHookPoint(NewHookPoint) end
function UHookComponent:ResetOverrideHookWorldLocation() end
function UHookComponent:ResetOverrideHookPoint() end
---@param HookPoint AHookPoint
function UHookComponent:OnUnlockHook(HookPoint) end
---@param HookPoint AHookPoint
function UHookComponent:OnLockHook(HookPoint) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UHookComponent:OnComponentOverlapEnd(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UHookComponent:OnComponentOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function UHookComponent:OnAptitudesChanged() end
function UHookComponent:LockCurrentHook() end
---@return FVector
function UHookComponent:GetHookWorldLocation() end
---@param HookType EHookType
---@return boolean
function UHookComponent:CanTargetHook(HookType) end


---@class UHookTargetEnemyComponent : UActorComponent
---@field EnemyHookPoints TArray<UEnemyHookPointSceneComponent>
local UHookTargetEnemyComponent = {}



---@class UIKBonesComponent : UActorComponent
---@field CachedBoneDrivers TMap<EIKBoneDriver, USceneComponent>
local UIKBonesComponent = {}

---@param IKBoneDriver EIKBoneDriver
---@param bResetIKConstraint boolean
function UIKBonesComponent:ResetIKBone(IKBoneDriver, bResetIKConstraint) end
---@param IKBoneDriver EIKBoneDriver
---@return USceneComponent
function UIKBonesComponent:GetIKBone(IKBoneDriver) end


---@class UImageZion : UImage
---@field OnImageStreamingStart FImageZionOnImageStreamingStart
---@field OnImageStreamingFinish FImageZionOnImageStreamingFinish
local UImageZion = {}



---@class UInputBPFLibrary : UBlueprintFunctionLibrary
local UInputBPFLibrary = {}

---@param DirectionA EInputDirection
---@param DirectionB EInputDirection
---@param bConsiderNeutralAsSame boolean
---@return boolean
function UInputBPFLibrary:IsSameVerticalDirection(DirectionA, DirectionB, bConsiderNeutralAsSame) end
---@param DirectionA EInputDirection
---@param DirectionB EInputDirection
---@param bConsiderNeutralAsSame boolean
---@return boolean
function UInputBPFLibrary:IsSameHorizontalDirection(DirectionA, DirectionB, bConsiderNeutralAsSame) end
---@param InputSnapshot FInputSnapshot
---@param InputAction UInputAction
---@return boolean
function UInputBPFLibrary:IsInputActionTriggering(InputSnapshot, InputAction) end
---@param InputSnapshot FInputSnapshot
---@param InputAction UInputAction
---@return boolean
function UInputBPFLibrary:IsInputActionJustTriggered(InputSnapshot, InputAction) end
---@param A FInputSnapshot
---@param B FInputSnapshot
---@return boolean
function UInputBPFLibrary:IsEqual(A, B) end


---@class UInputBufferComponent : UActorComponent
---@field MaxBufferTime float
local UInputBufferComponent = {}

---@return int32
function UInputBufferComponent:GetInputSnapshotCount() end
---@param Index int32
---@return FTimedInputSnapshot
function UInputBufferComponent:GetInputSnapshotAtIndex(Index) end


---@class UInputDeviceCheckerComponent : UActorComponent
---@field UserWidgetClass TSoftClassPtr<UUserWidgetZion>
local UInputDeviceCheckerComponent = {}

function UInputDeviceCheckerComponent:OnWidgetClosed() end
function UInputDeviceCheckerComponent:OnActiveControllerDisconnected() end


---@class UInputModifier_SettingsDrivenDeadZone : UInputModifier
---@field Type EDeadZoneType
---@field LowerThreshold float
---@field UpperThreshold float
---@field DeadZoneStick EInputStick
local UInputModifier_SettingsDrivenDeadZone = {}



---@class UInputRichTextBlockImageDecorator : URichTextBlockDecorator
---@field IconSets TMap<EInputStyle, UDataTable>
---@field FallbackBrush FSlateBrush
---@field FallbackPadding FMargin
local UInputRichTextBlockImageDecorator = {}



---@class UInputSettingsSubsystem : UGameInstanceSubsystem
---@field InputContexts TArray<UInputMappingContext>
local UInputSettingsSubsystem = {}

---@param InputMappingContext UInputMappingContext
---@param bIsGamepad boolean
function UInputSettingsSubsystem:ResetInputMappingContextToDefault(InputMappingContext, bIsGamepad) end
---@param bIsGamepad boolean
function UInputSettingsSubsystem:ResetAllInputMappingContextsToDefault(bIsGamepad) end
---@param ActionInputType EActionInputType
---@param NewKey FKey
---@param InvalidInputTypes TSet<EActionInputType>
---@param bIsGamepadKey boolean
---@return boolean
function UInputSettingsSubsystem:RemapKey(ActionInputType, NewKey, InvalidInputTypes, bIsGamepadKey) end
---@param InputAction UInputAction
---@param bIsGamepad boolean
---@return FName
function UInputSettingsSubsystem:GetMappingNameFromInputAction(InputAction, bIsGamepad) end
---@param MappingName FName
---@return FKey
function UInputSettingsSubsystem:GetMappedKey(MappingName) end


---@class UInteractComponent : UActorComponent
---@field InteractMappingContext UInputMappingContext
---@field InteractInputAction UInputAction
---@field NoDisplayStates TArray<TSubclassOf<UState>>
---@field AllowedMovementModes TArray<FMovementModeData>
---@field IgnoredTags TArray<FName>
---@field PawnOwner APawn
---@field InputComponent UZionInputComponent
---@field MovementComponent UZionCharacterMovementComponent
---@field StateComponent UStateComponent
---@field CommandComponent UCommandComponent
local UInteractComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UInteractComponent:OnOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UInteractComponent:OnOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class UInventory : UObject
---@field Items TMap<FName, int32>
---@field CheckedItems TSet<FName>
---@field DataTable UDataTable
local UInventory = {}

---@param ItemRowName FName
function UInventory:MarkItemAsChecked(ItemRowName) end
---@param ItemRowName FName
---@return boolean
function UInventory:IsItemChecked(ItemRowName) end
---@return boolean
function UInventory:HasNonCheckedItem() end
---@param ItemRowName FName
---@param Count int32
---@return boolean
function UInventory:HasItem(ItemRowName, Count) end
---@return int32
function UInventory:GetItemCount() end
---@return UDataTable
function UInventory:GetDataTable() end
---@param ItemId FName
---@return int32
function UInventory:GetCountOfItem(ItemId) end
---@return TMap<FName, int32>
function UInventory:GetAllItemsAvailable() end
---@return TMap<FName, int32>
function UInventory:GetAllItems() end


---@class UInventoryAptitude : UInventory
local UInventoryAptitude = {}


---@class UInventoryComponent : UActorComponent
---@field OnItemAdded FInventoryComponentOnItemAdded
---@field OnCurrencyAdded FInventoryComponentOnCurrencyAdded
---@field DropFactoredCurrencies TSet<ECurrencyType>
---@field ItemCurrencyInventory UInventory
---@field ItemAptitudeInventory UInventoryAptitude
---@field ItemSpiritInventory UInventory
---@field ItemSkillInventory UInventorySkill
---@field ItemEquipmentInventory UInventory
---@field ItemAssistInventory UInventory
---@field ItemStatsInventory UInventory
---@field ItemPassiveInventory UInventory
---@field ItemMaterialInventory UInventory
---@field ItemTipInventory UInventory
---@field ItemTutorialInventory UInventory
---@field ItemKeyInventory UInventory
---@field ItemQuestInventory UInventory
---@field ItemCostumeInventory UInventory
---@field ItemEnemyInfoInventory UInventory
---@field ItemNPCInfoInventory UInventory
---@field ItemGalleryInventory UInventory
local UInventoryComponent = {}

---@param CurrencyValue FCurrencyValue
---@return int32
function UInventoryComponent:SpendCurrency(CurrencyValue) end
---@param ItemHandle FDataTableRowHandle
---@param Count int32
---@return boolean
function UInventoryComponent:RemoveItem(ItemHandle, Count) end
---@param ItemHandle FDataTableRowHandle
function UInventoryComponent:MarkItemAsChecked(ItemHandle) end
---@param ItemHandle FDataTableRowHandle
---@return boolean
function UInventoryComponent:IsItemChecked(ItemHandle) end
---@param ItemType EInventoryItemType
---@return boolean
function UInventoryComponent:HasNonCheckedItem(ItemType) end
---@param ItemHandle FDataTableRowHandle
---@param Count int32
---@return boolean
function UInventoryComponent:HasItem(ItemHandle, Count) end
---@param AptitudeType EAptitudeType
---@return boolean
function UInventoryComponent:HasAptitude(AptitudeType) end
---@return UInventory
function UInventoryComponent:GetTutorialInventory() end
---@return UInventory
function UInventoryComponent:GetTipInventory() end
---@return UInventory
function UInventoryComponent:GetStatsInventory() end
---@return UInventory
function UInventoryComponent:GetSpiritInventory() end
---@return UInventorySkill
function UInventoryComponent:GetSkillInventory() end
---@return UInventory
function UInventoryComponent:GetPassiveInventory() end
---@return UInventory
function UInventoryComponent:GetNPCInfoInventory() end
---@param ItemType EInventoryItemType
---@return UInventory
function UInventoryComponent:GetInventoryFromItemType(ItemType) end
---@return UInventory
function UInventoryComponent:GetGalleryInventory() end
---@return UInventory
function UInventoryComponent:GetEquipmentInventory() end
---@return UInventory
function UInventoryComponent:GetEnemyInfoInventory() end
---@return UInventory
function UInventoryComponent:GetCurrencyInventory() end
---@param CurrencyType ECurrencyType
---@return int32
function UInventoryComponent:GetCurrency(CurrencyType) end
---@param ItemHandle FDataTableRowHandle
---@return int32
function UInventoryComponent:GetCountOfItem(ItemHandle) end
---@return UInventory
function UInventoryComponent:GetCostumeInventory() end
---@return UInventory
function UInventoryComponent:GetAssistInventory() end
---@return UInventoryAptitude
function UInventoryComponent:GetAptitudeInventory() end
---@param CurrencyValue FCurrencyValue
---@return boolean
function UInventoryComponent:CanSpendCurrency(CurrencyValue) end
---@param ItemHandle FDataTableRowHandle
---@param Count int32
---@return boolean
function UInventoryComponent:AddItem(ItemHandle, Count) end
---@param Drop FDrop
---@param DropFactor float
---@return boolean
function UInventoryComponent:AddDrop(Drop, DropFactor) end
---@param CurrencyType ECurrencyType
---@param CurrencyToAdd int32
---@return int32
function UInventoryComponent:AddCurrency(CurrencyType, CurrencyToAdd) end


---@class UInventorySkill : UInventory
---@field SkillLevels TMap<FName, int32>
local UInventorySkill = {}

---@param SkillID FName
---@param NewLevel int32
---@return int32
function UInventorySkill:SetSkillLevel(SkillID, NewLevel) end
---@param SkillID FName
---@return boolean
function UInventorySkill:IsMaxSkillLevel(SkillID) end
---@param SkillID FName
---@param bFallbackInitialLevel boolean
---@return int32
function UInventorySkill:GetSkillLevel(SkillID, bFallbackInitialLevel) end
---@return int32
function UInventorySkill:GetMinSkillLevel() end
---@return int32
function UInventorySkill:GetMaxSkillLevel() end
---@param SkillID FName
---@return int32
function UInventorySkill:GetInitialSkillLevel(SkillID) end


---@class UItemStatsWatcherComponent : UActorComponent
local UItemStatsWatcherComponent = {}


---@class UKnockbackComponent : UActorComponent
---@field GlobalStates TArray<TSubclassOf<UState>>
---@field StatePhase_Launch TArray<TSubclassOf<UState>>
---@field StatePhase_WaitForLanding TArray<TSubclassOf<UState>>
---@field StatePhase_Stagger TArray<TSubclassOf<UState>>
---@field StatePhase_Recovery TArray<TSubclassOf<UState>>
---@field PostKnockbackStates TArray<TSubclassOf<UState>>
---@field PostKnockbackStatesDuration float
---@field UpdateBlockingStates TArray<TSubclassOf<UState>>
---@field bSetFacing boolean
---@field bIgnoreKnockbackDuringKnockback boolean
---@field ImpulseForceFactor float
---@field MinImpulseForLaunch float
---@field bRestoreDefaultMovementMode boolean
local UKnockbackComponent = {}

---@param KnockbackData FKnockbackData
---@param KnockbackDirection FVector
function UKnockbackComponent:StartKnockback(KnockbackData, KnockbackDirection) end
function UKnockbackComponent:OnRecoveryAnimationFinished() end
---@param Command UCommand
function UKnockbackComponent:OnPreStartCommand(Command) end
function UKnockbackComponent:OnLandingAnimationFinished() end
---@return boolean
function UKnockbackComponent:IsInKnockback() end


---@class ULocalizationBPFLibrary : UBlueprintFunctionLibrary
local ULocalizationBPFLibrary = {}

function ULocalizationBPFLibrary:SetLanguageToSystemLanguage() end
---@param Language FString
function ULocalizationBPFLibrary:SetLanguage(Language) end
---@return FString
function ULocalizationBPFLibrary:GetLanguage() end
---@return TArray<FString>
function ULocalizationBPFLibrary:GetAvailableLanguages() end


---@class ULocalizationSwitcherComponent : UActorComponent
local ULocalizationSwitcherComponent = {}


---@class ULocomotionComponent : UActorComponent
---@field OnFacingChange FLocomotionComponentOnFacingChange
---@field DashInputAction UInputAction
---@field bAllowFacing boolean
---@field bUpdateFacing boolean
---@field bUseVelocityForFacing boolean
---@field ImmersionDepthForLateralOnly float
local ULocomotionComponent = {}

function ULocomotionComponent:ToggleFacing() end
---@param NewUpVector FVector
function ULocomotionComponent:SetUpVector(NewUpVector) end
---@param bNewUpdateFacing boolean
function ULocomotionComponent:SetUpdateFacing(bNewUpdateFacing) end
---@param Vector FVector
function ULocomotionComponent:SetFacingFromVector(Vector) end
---@param FacingType EFacingType
function ULocomotionComponent:SetFacing(FacingType) end
---@return FQuat
function ULocomotionComponent:GetWorldUpToUpRotation() end
---@return FVector
function ULocomotionComponent:GetUpVector() end
---@return boolean
function ULocomotionComponent:GetUpdateFacing() end
---@return EFacingType
function ULocomotionComponent:GetFacing() end


---@class UMaterialFXMatrixData : UDataAsset
---@field FXMatrix TMap<EEffectAttackType, FActionToFXMap>
local UMaterialFXMatrixData = {}



---@class UMaterialSEMatrixData : UDataAsset
---@field SEMatrix TMap<EEffectAttackType, FActionToMaterialMap>
---@field SEGuards TMap<EEffectAttackType, FGuardMaterialToSoundMap>
---@field FallbackSoundDataGroup FSoundDataGroup
local UMaterialSEMatrixData = {}



---@class UMathBPFLibrary : UBlueprintFunctionLibrary
local UMathBPFLibrary = {}

---@param Value int32
---@param Min int32
---@param Max int32
---@return int32
function UMathBPFLibrary:LoopAround(Value, Min, Max) end
---@param Curve FRuntimeFloatCurve
---@return float
function UMathBPFLibrary:GetMinTime(Curve) end
---@param Curve FRuntimeFloatCurve
---@return float
function UMathBPFLibrary:GetMaxTime(Curve) end
---@param Curve FRuntimeFloatCurve
---@param Time float
---@return float
function UMathBPFLibrary:Evaluate(Curve, Time) end
---@param VectorA FVector
---@param VectorB FVector
---@return float
function UMathBPFLibrary:AngleBetweenAsRad(VectorA, VectorB) end
---@param VectorA FVector
---@param VectorB FVector
---@return float
function UMathBPFLibrary:AngleBetweenAsDegree(VectorA, VectorB) end


---@class UMoveComponent : UMovementComponent
---@field bSweep boolean
---@field InitialLocalSpaceVelocity FVector
---@field LocalSpaceAcceleration FVector
---@field bClampMaxSpeed boolean
---@field MaxSpeed float
---@field bRotationFollowsVelocity boolean
---@field GravityFactor float
local UMoveComponent = {}

---@param NewVelocity FVector
function UMoveComponent:SetVelocity(NewVelocity) end
function UMoveComponent:Reset() end


---@class UNotificationComponent : UActorComponent
---@field DelayBetweenNotifications float
---@field NotificationDuration float
---@field UnnotifiedItems TArray<EInventoryItemType>
---@field NotificationMap UNotificationMapAsset
local UNotificationComponent = {}

function UNotificationComponent:OnPawnDeath() end
function UNotificationComponent:OnNotificationDurationFinished() end
function UNotificationComponent:OnNotificationDelayFinished() end
---@param Inventory UInventory
---@param ItemId FName
---@param AddedCount int32
function UNotificationComponent:OnItemAdded(Inventory, ItemId, AddedCount) end
---@return boolean
function UNotificationComponent:CanStartNotification() end


---@class UNotificationMapAsset : UDataAsset
---@field Notifications TMap<ENotificationTypes, FNotificationData>
local UNotificationMapAsset = {}



---@class UOrientFromFloorComponent : UActorComponent
---@field OrientTargetType EOrientTargetType
---@field ComponentToOrient FComponentReference
---@field bUseBlend boolean
---@field BlendSpeed float
---@field bClampAngle boolean
---@field ClampAngle float
---@field bSkipOnLowPerfPlatforms boolean
local UOrientFromFloorComponent = {}

function UOrientFromFloorComponent:OnFacingChange() end


---@class UOrientFromInputComponent : UActorComponent
---@field bBlendRotation boolean
---@field RotationBlendSpeed float
local UOrientFromInputComponent = {}



---@class UOrientToTargetComponent : UActorComponent
---@field BlendMode EOrientToTargetBlendMode
---@field BlendInjectionSpeed float
---@field RotationSpeed float
---@field bAutoDeactivate boolean
---@field AutoDeactivateTime float
local UOrientToTargetComponent = {}



---@class UPSOCacheDataAsset : UDataAsset
---@field VFXs TArray<UNiagaraSystem>
---@field Characters TArray<TSubclassOf<AActor>>
local UPSOCacheDataAsset = {}



---@class UPassive : UObject
local UPassive = {}


---@class UPassiveComponent : UActorComponent
---@field OnPassiveEquipped FPassiveComponentOnPassiveEquipped
---@field OnPassiveUnequipped FPassiveComponentOnPassiveUnequipped
---@field MaxPassiveCount int32
---@field DefaultSlotCount int32
---@field AdditionalSlotCount int32
---@field UsedSlotCount int32
---@field CurrentLoadoutIndex int32
---@field Passives TArray<FPassiveRuntimeData>
---@field PassivesToUpdate TArray<FPassiveRuntimeData>
---@field PassiveLoadouts TArray<FPlayerPassiveLoadoutData>
local UPassiveComponent = {}

---@param PassiveID FName
---@param OutPassiveIndex int32
---@param bRemoveFromCurrentLoadout boolean
---@return boolean
function UPassiveComponent:UnequipPassive(PassiveID, OutPassiveIndex, bRemoveFromCurrentLoadout) end
---@param PassiveToRemove FName
---@param PassiveToAdd FName
function UPassiveComponent:ReplacePassiveInAllLoadouts(PassiveToRemove, PassiveToAdd) end
---@param OldPawn APawn
---@param NewPawn APawn
function UPassiveComponent:OnPossessedPawnChanged(OldPawn, NewPawn) end
---@param PassiveID FName
---@return boolean
function UPassiveComponent:IsPassiveEquipped(PassiveID) end
---@return int32
function UPassiveComponent:GetUsedSlotCount() end
---@return int32
function UPassiveComponent:GetSlotCount() end
---@return TArray<FPassiveRuntimeData>
function UPassiveComponent:GetEquippedPassives() end
---@return int32
function UPassiveComponent:GetCurrentPassiveLoadoutIndex() end
---@return int32
function UPassiveComponent:GetAvailableSlotCount() end
---@param LoadoutIndex int32
function UPassiveComponent:EquipPassiveLoadout(LoadoutIndex) end
---@param PassiveID FName
---@param bAddToCurrentLoadout boolean
---@param InsertIndex int32
---@return EPassiveEquipResult
function UPassiveComponent:EquipPassive(PassiveID, bAddToCurrentLoadout, InsertIndex) end
---@param ItemPassiveData FInventoryItemPassiveData
---@return EPassiveEquipResult
function UPassiveComponent:CanEquipPassive(ItemPassiveData) end


---@class UPassive_AttackCommandSetCategory : UPassive
---@field CommandSetCategory ECommandSetCategory
---@field PercentageBonus int32
local UPassive_AttackCommandSetCategory = {}



---@class UPassive_AttackDamageAboveDistance : UPassive
---@field Distance int32
---@field PercentageBonus int32
local UPassive_AttackDamageAboveDistance = {}



---@class UPassive_AttackDamageBack : UPassive
---@field PercentageBonus int32
local UPassive_AttackDamageBack = {}



---@class UPassive_AttackDamageBelowDistance : UPassive
---@field Distance int32
---@field PercentageBonus int32
local UPassive_AttackDamageBelowDistance = {}



---@class UPassive_AttackDamageFront : UPassive
---@field PercentageBonus int32
local UPassive_AttackDamageFront = {}



---@class UPassive_AttackDamageMaxHP : UPassive
---@field HPPercentage int32
---@field PercentageBonus int32
local UPassive_AttackDamageMaxHP = {}



---@class UPassive_AttackDamageMaxSP : UPassive
---@field SPPercentage int32
---@field PercentageBonus int32
local UPassive_AttackDamageMaxSP = {}



---@class UPassive_AttackDamageMinHP : UPassive
---@field HPPercentage int32
---@field PercentageBonus int32
local UPassive_AttackDamageMinHP = {}



---@class UPassive_AttackDamageMinSP : UPassive
---@field SPPercentage int32
---@field PercentageBonus int32
local UPassive_AttackDamageMinSP = {}



---@class UPassive_AttackDamageMovementMode : UPassive
---@field MovementMode EMovementMode
---@field PercentageBonus int32
local UPassive_AttackDamageMovementMode = {}



---@class UPassive_AttackDamageSPGauge : UPassive
---@field NoGaugePercentageBonus int32
---@field OneGaugePercentageBonus int32
---@field TwoGaugesPercentageBonus int32
---@field ThreeGaugesPercentageBonus int32
local UPassive_AttackDamageSPGauge = {}



---@class UPassive_AttackTypeBonus : UPassive
---@field AttackType EAttackType
---@field PercentageBonus int32
local UPassive_AttackTypeBonus = {}



---@class UPassive_AutoRegenerate : UPassive
---@field ValueToRegenerate int32
---@field RegenerationTick float
local UPassive_AutoRegenerate = {}



---@class UPassive_AutoRegenerateHP : UPassive_AutoRegenerate
local UPassive_AutoRegenerateHP = {}


---@class UPassive_AutoRegenerateSP : UPassive_AutoRegenerate
local UPassive_AutoRegenerateSP = {}


---@class UPassive_BurnDamage : UPassive
---@field PercentageBonus int32
local UPassive_BurnDamage = {}



---@class UPassive_CommandSetOverride : UPassive
---@field CommandSet UCommandSet
local UPassive_CommandSetOverride = {}



---@class UPassive_CurrencyPercentage : UPassive
---@field CurrencyType ECurrencyType
---@field PercentageBonus int32
local UPassive_CurrencyPercentage = {}



---@class UPassive_DamageCutAboveDistance : UPassive
---@field Distance int32
---@field PercentageBonus int32
local UPassive_DamageCutAboveDistance = {}



---@class UPassive_DamageCutAttackType : UPassive
---@field AttackType EAttackType
---@field PercentageBonus int32
local UPassive_DamageCutAttackType = {}



---@class UPassive_DamageCutBackPercentage : UPassive
---@field PercentageBonus int32
local UPassive_DamageCutBackPercentage = {}



---@class UPassive_DamageCutBelowDistance : UPassive
---@field Distance int32
---@field PercentageBonus int32
local UPassive_DamageCutBelowDistance = {}



---@class UPassive_DamageCutDebuffedPercentage : UPassive
---@field PercentageBonus int32
local UPassive_DamageCutDebuffedPercentage = {}



---@class UPassive_DamageCutElementType : UPassive
---@field bImmuneToStatusEffect boolean
---@field ElementTypes TArray<EAttackElement>
---@field PercentageBonus int32
local UPassive_DamageCutElementType = {}



---@class UPassive_DamageCutFrontPercentage : UPassive
---@field PercentageBonus int32
local UPassive_DamageCutFrontPercentage = {}



---@class UPassive_DamageCutMaxHP : UPassive
---@field HPPercentage int32
---@field PercentageBonus int32
local UPassive_DamageCutMaxHP = {}



---@class UPassive_DamageCutMaxSP : UPassive
---@field SPPercentage int32
---@field PercentageBonus int32
local UPassive_DamageCutMaxSP = {}



---@class UPassive_DamageCutMinHP : UPassive
---@field HPPercentage int32
---@field PercentageBonus int32
local UPassive_DamageCutMinHP = {}



---@class UPassive_DamageCutMinSP : UPassive
---@field SPPercentage int32
---@field PercentageBonus int32
local UPassive_DamageCutMinSP = {}



---@class UPassive_DamageCutPercentage : UPassive
---@field PercentageBonus int32
local UPassive_DamageCutPercentage = {}



---@class UPassive_DamageCutSPGauge : UPassive
---@field NoGaugePercentageBonus int32
---@field OneGaugePercentageBonus int32
---@field TwoGaugesPercentageBonus int32
---@field ThreeGaugesPercentageBonus int32
local UPassive_DamageCutSPGauge = {}



---@class UPassive_DashChargeShort : UPassive
local UPassive_DashChargeShort = {}


---@class UPassive_DiveDashChargeShort : UPassive
local UPassive_DiveDashChargeShort = {}


---@class UPassive_DropPercentage : UPassive
---@field PercentageBonus int32
local UPassive_DropPercentage = {}



---@class UPassive_ElementalDamageUp : UPassive
---@field PercentageBonus int32
local UPassive_ElementalDamageUp = {}



---@class UPassive_ExperiencePercentage : UPassive
---@field PercentageBonus int32
local UPassive_ExperiencePercentage = {}



---@class UPassive_ExplorationAptitudesChargeShort : UPassive
---@field CommandSet UCommandSet
local UPassive_ExplorationAptitudesChargeShort = {}



---@class UPassive_FallingGravityFactor_Increase : UPassive
---@field FallingGravityIncreasePercentage int32
local UPassive_FallingGravityFactor_Increase = {}



---@class UPassive_FallingGravityFactor_Reduce : UPassive
---@field FallingGravityReductionPercentage int32
local UPassive_FallingGravityFactor_Reduce = {}



---@class UPassive_FreezeDamage : UPassive
---@field PercentageBonus int32
local UPassive_FreezeDamage = {}



---@class UPassive_HealCount : UPassive
---@field HealCountBonus int32
local UPassive_HealCount = {}



---@class UPassive_HealPower : UPassive
---@field PercentageBonus int32
local UPassive_HealPower = {}



---@class UPassive_HigherMobility : UPassive
---@field RunFactorBonus float
---@field SwimFactorBonus float
---@field bApplyJumpHigher boolean
local UPassive_HigherMobility = {}



---@class UPassive_JumpHigher : UPassive
local UPassive_JumpHigher = {}


---@class UPassive_OnAttack : UPassive
---@field AffectedFactions TArray<EFaction>
local UPassive_OnAttack = {}



---@class UPassive_OnAttack_InstantKillTarget : UPassive_OnAttack
---@field Cooldown float
---@field TriggerChanceCurve FRuntimeFloatCurve
local UPassive_OnAttack_InstantKillTarget = {}



---@class UPassive_OnAttack_Restore : UPassive_OnAttack
---@field RestoreType EPassiveOnAttackRestoreType
---@field FlatAmountToRestore int32
---@field DamagePercentageToRestore float
---@field StatPercentageToRestore float
local UPassive_OnAttack_Restore = {}



---@class UPassive_OnAttack_RestoreHP : UPassive_OnAttack_Restore
local UPassive_OnAttack_RestoreHP = {}


---@class UPassive_OnAttack_RestoreSP : UPassive_OnAttack_Restore
local UPassive_OnAttack_RestoreSP = {}


---@class UPassive_OnKill : UPassive
---@field AffectedFactions TArray<EFaction>
local UPassive_OnKill = {}



---@class UPassive_OnKill_Drop : UPassive_OnKill
---@field DropHandle FDataTableRowHandle
---@field DropPercentage float
local UPassive_OnKill_Drop = {}



---@class UPassive_OnKill_ReduceActiveCooldowns : UPassive_OnKill
---@field ActivationPercentage float
---@field ReductionPercentage float
local UPassive_OnKill_ReduceActiveCooldowns = {}



---@class UPassive_OnKill_Restore : UPassive_OnKill
---@field RestoreType EPassiveOnKillRestoreType
---@field FlatAmountToRestore int32
---@field StatPercentageToRestore int32
local UPassive_OnKill_Restore = {}



---@class UPassive_OnKill_RestoreHP : UPassive_OnKill_Restore
local UPassive_OnKill_RestoreHP = {}


---@class UPassive_OnKill_RestoreSP : UPassive_OnKill_Restore
local UPassive_OnKill_RestoreSP = {}


---@class UPassive_PlayerDebuffedDamage : UPassive
---@field PercentageBonus int32
local UPassive_PlayerDebuffedDamage = {}



---@class UPassive_ReduceCommandSetCooldown : UPassive
---@field PercentageBonus int32
local UPassive_ReduceCommandSetCooldown = {}



---@class UPassive_ReduceKnockbackImpulseForce : UPassive
---@field ImpulseForceReductionPercentage int32
local UPassive_ReduceKnockbackImpulseForce = {}



---@class UPassive_RestoreSPPercentage : UPassive
---@field PercentageBonus int32
local UPassive_RestoreSPPercentage = {}



---@class UPassive_RunFaster : UPassive
---@field FactorBonus float
local UPassive_RunFaster = {}



---@class UPassive_ShockDamage : UPassive
---@field PercentageBonus int32
local UPassive_ShockDamage = {}



---@class UPassive_StaminaDamage : UPassive
---@field PercentageBonus int32
local UPassive_StaminaDamage = {}



---@class UPassive_StatsPercentage : UPassive
---@field PercentageBonus FStatsLevelData
local UPassive_StatsPercentage = {}



---@class UPassive_SwimFaster : UPassive
---@field FactorBonus float
local UPassive_SwimFaster = {}



---@class UPassive_TargetDebuffedDamage : UPassive
---@field PercentageBonus int32
local UPassive_TargetDebuffedDamage = {}



---@class UPassive_TargetStunnedDamage : UPassive
---@field PercentageBonus int32
local UPassive_TargetStunnedDamage = {}



---@class UPhysicsReactionComponent : UActorComponent
---@field bEnabled boolean
---@field PhysicsComponentRef FComponentReference
---@field bLimitVelocity boolean
---@field VelocityLimit float
---@field ImpulseForWeightCategories TMap<EAbilityWeightCategory, float>
---@field PhysicsComponent UPrimitiveComponent
local UPhysicsReactionComponent = {}

---@param bNewEnabled boolean
function UPhysicsReactionComponent:SetEnabled(bNewEnabled) end
---@param Ability AAbility
---@param Source AActor
---@param HitData FHitData
function UPhysicsReactionComponent:OnGotAbilityApplied(Ability, Source, HitData) end
---@return boolean
function UPhysicsReactionComponent:IsEnabled() end


---@class UPlayUMGAnimationAsyncAction : UBlueprintAsyncActionBase
---@field OnFinish FPlayUMGAnimationAsyncActionOnFinish
local UPlayUMGAnimationAsyncAction = {}

---@param Widget UUserWidget
---@param InAnimation UWidgetAnimation
---@param bLockNavigation boolean
---@return UPlayUMGAnimationAsyncAction
function UPlayUMGAnimationAsyncAction:PlayUMGAnimation(Widget, InAnimation, bLockNavigation) end


---@class UPlayerCostumeComponent : UActorComponent
---@field DefaultCostumeID FName
---@field SpineAtlasAsset USpineAtlasAsset
---@field SpineSkeletonDataAsset USpineSkeletonDataAsset
---@field SpineNotifyAsset USpineNotifyAsset
---@field CostumeFXs TMap<EPlayerCostumeFX, UNiagaraSystem>
local UPlayerCostumeComponent = {}

---@param InCostumeID FName
function UPlayerCostumeComponent:SetPendingCostumeID(InCostumeID) end
---@return FName
function UPlayerCostumeComponent:GetPendingOrEquippedCostumeID() end
---@return FName
function UPlayerCostumeComponent:GetEquippedCostumeID() end
---@param InCostumeID FName
function UPlayerCostumeComponent:EquipCostume(InCostumeID) end
function UPlayerCostumeComponent:ApplyPendingCostume() end


---@class UPoolSystemComponent : UActorComponent
---@field CachedInstances TMap<UClass, FObjectArray>
local UPoolSystemComponent = {}

---@param WorldContextObject UObject
---@return UPoolSystemComponent
function UPoolSystemComponent:Get(WorldContextObject) end


---@class UProfileSubsystem : UGameInstanceSubsystem
local UProfileSubsystem = {}

---@return boolean
function UProfileSubsystem:IsUsingProfileSystem() end
---@return FString
function UProfileSubsystem:GetCurrentProfileName() end


---@class URadialSliderZion : URadialSlider
local URadialSliderZion = {}


---@class URecollectionBossBaseComponent : UActorComponent
---@field ExitRespawnReason ERespawnReason
---@field RetryRespawnReason ERespawnReason
---@field DialogMessage FText
---@field bAutoActivateBoss boolean
---@field AutoActivationTimer float
---@field DialogYesNoClass TSoftClassPtr<UUserWidgetDialogYesNo>
---@field FadeDescription FFadeDescriptionData
local URecollectionBossBaseComponent = {}

function URecollectionBossBaseComponent:Start() end
---@param GenerationOverride int32
function URecollectionBossBaseComponent:SetNewGameGenerationOverride(GenerationOverride) end
function URecollectionBossBaseComponent:RetryRecollectionMode_PostFadeOut() end
function URecollectionBossBaseComponent:RetryRecollectionMode() end
function URecollectionBossBaseComponent:OnRetryDialogYes() end
function URecollectionBossBaseComponent:OnRetryDialogNo() end
function URecollectionBossBaseComponent:OnDialogClosed() end
---@return boolean
function URecollectionBossBaseComponent:IsStarted() end
---@return boolean
function URecollectionBossBaseComponent:InstantiateRetryDialog() end
---@return int32
function URecollectionBossBaseComponent:GetNewGameGenerationOverride() end
---@return AEnemySpawner
function URecollectionBossBaseComponent:GetCachedEnemySpawner() end
function URecollectionBossBaseComponent:GameMapChange() end
function URecollectionBossBaseComponent:Finish() end
function URecollectionBossBaseComponent:ExitRecollectionMode_PostFadeOut() end
function URecollectionBossBaseComponent:ExitRecollectionMode() end
---@return boolean
function URecollectionBossBaseComponent:CanLeaveRecollectionBoss() end
---@param EnemySpawner AEnemySpawner
function URecollectionBossBaseComponent:BossDeathStart(EnemySpawner) end
function URecollectionBossBaseComponent:BossDeathEndPostDelay() end
---@param EnemySpawner AEnemySpawner
function URecollectionBossBaseComponent:BossDeathEnd(EnemySpawner) end
---@param EnemySpawner AEnemySpawner
function URecollectionBossBaseComponent:BossActivation(EnemySpawner) end


---@class URecollectionBossComponent : URecollectionBossBaseComponent
---@field BossDeathEndDelay float
local URecollectionBossComponent = {}



---@class URecollectionBossRushComponent : URecollectionBossBaseComponent
---@field CurrentBossRushIndex int32
---@field PreNextBossDelay float
---@field PreClearProcessDelay float
---@field EnemyHPFactor float
---@field bAllowEnemyDrop boolean
---@field BossList TArray<FDataTableRowHandle>
---@field BossDeathRecoveryDrop FDataTableRowHandle
---@field BossRushClearedDrop FDataTableRowHandle
local URecollectionBossRushComponent = {}

---@param NewRecordData FRecollectionBossRushRecordData
---@return int32
function URecollectionBossRushComponent:TryAddNewRecord(NewRecordData) end
---@return boolean
function URecollectionBossRushComponent:ShouldDisplayRecollectionBossRush() end
---@param bIsPaused boolean
---@return boolean
function URecollectionBossRushComponent:SetTimerPaused(bIsPaused) end
function URecollectionBossRushComponent:ResetCurrentRecords() end
function URecollectionBossRushComponent:OnStartBossRush() end
---@param bIsPaused boolean
function URecollectionBossRushComponent:OnSetTimerPaused(bIsPaused) end
function URecollectionBossRushComponent:OnGameMapChangedPostFade() end
function URecollectionBossRushComponent:OnGameMapChanged() end
function URecollectionBossRushComponent:OnEndBossRush() end
function URecollectionBossRushComponent:OnClearBossRush() end
---@return boolean
function URecollectionBossRushComponent:IsTimerPaused() end
function URecollectionBossRushComponent:GoToNextBoss() end
---@param RecordIndex int32
---@return FRecollectionBossRushRecordData
function URecollectionBossRushComponent:GetRecordData(RecordIndex) end
---@return int32
function URecollectionBossRushComponent:GetMaxBossesDefeatedCount() end
---@return int32
function URecollectionBossRushComponent:GetCurrentBossIndex() end
---@return float
function URecollectionBossRushComponent:GetBossRushTime() end
---@return EDifficultyPreset
function URecollectionBossRushComponent:GetBossRushDifficultyPreset() end
function URecollectionBossRushComponent:GameMapChangePostFade() end
function URecollectionBossRushComponent:ClearBossRush() end
---@return boolean
function URecollectionBossRushComponent:CanUpdateTime() end


---@class URefreshableRichTextBlock : URichTextBlock
---@field DecoratorMode ERichTextDecoratorMode
---@field Format FText
---@field FormatElements TArray<FRichTextInputElement>
---@field FormatStrings TArray<FString>
local URefreshableRichTextBlock = {}

---@param NewFormat FText
---@param NewFormatElements TArray<FRichTextInputElement>
---@param NewStringElements TArray<FString>
function URefreshableRichTextBlock:SetupAndRefresh(NewFormat, NewFormatElements, NewStringElements) end
---@param NewFormatElements TArray<FRichTextInputElement>
---@param NewStringElements TArray<FString>
function URefreshableRichTextBlock:SetFormatElements(NewFormatElements, NewStringElements) end
---@param NewFormat FText
function URefreshableRichTextBlock:SetFormat(NewFormat) end
---@param NewDecoratorMode ERichTextDecoratorMode
function URefreshableRichTextBlock:SetDecoratorMode(NewDecoratorMode) end
function URefreshableRichTextBlock:Refresh() end
---@return TArray<FRichTextInputElement>
function URefreshableRichTextBlock:GetFormatElements() end
---@return ERichTextDecoratorMode
function URefreshableRichTextBlock:GetDecoratorMode() end


---@class URenderStateComponent : UActorComponent
---@field OnMarkedAsSeen FRenderStateComponentOnMarkedAsSeen
---@field bEnabled boolean
---@field bVisible boolean
---@field bRequireRecentlyRendered boolean
---@field bAutoMarkAsSeenOnZoneComplete boolean
---@field ZoneLevel TSoftObjectPtr<UWorld>
---@field bOverrideBounds boolean
---@field bGetOnlyCollidingComponentsBounds boolean
---@field OverrideBoundsOriginOffset FVector
---@field OverrideBoundsBoxExtent FVector
---@field bOverrideCameraBounds boolean
---@field OverrideCameraBoxExtent FVector
---@field bCheckDistanceToPlayerLocation boolean
---@field PlayerDistanceBoxExtent FVector
local URenderStateComponent = {}

---@param bIsVisible boolean
---@return boolean
function URenderStateComponent:SetVisible(bIsVisible) end
---@param Actor AActor
function URenderStateComponent:SetNewBounds(Actor) end
---@return boolean
function URenderStateComponent:IsVisible() end


---@class URenderStateManagerComponent : UActorComponent
---@field SeenActors TMap<FName, FNameSet>
---@field RenderStateComponents TArray<TWeakObjectPtr<URenderStateComponent>>
local URenderStateManagerComponent = {}

function URenderStateManagerComponent:OnGameMapChangeStarted() end
function URenderStateManagerComponent:OnGameMapChangeFinished() end
---@param WorldContextObject UObject
---@return URenderStateManagerComponent
function URenderStateManagerComponent:Get(WorldContextObject) end


---@class URepulsionEnemyComponent : UActorComponent
---@field IgnoreRepulsionStates TArray<TSubclassOf<UState>>
---@field bDisableRepulsion boolean
---@field RepulsionOriginType EEnemyRepulsionOrigin
---@field DefaultRepulsionData FEnemyRepulsionData
---@field RepulsionSetupDatas TArray<FEnemyRepulsionSetupData>
---@field IgnoreRepulsionMovementModes TArray<FMovementModeData>
---@field CharacterOwner ACharacter
local URepulsionEnemyComponent = {}

---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function URepulsionEnemyComponent:OnComponentOverlapEnd(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlapComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function URepulsionEnemyComponent:OnComponentOverlapBegin(OverlapComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class URepulsionPlayerComponent : UActorComponent
---@field DisableForceTime float
---@field NoEnemyTime float
---@field FallingForceFactor float
---@field SwimmingForceFactor float
---@field IgnoreRepulsionStates TArray<TSubclassOf<UState>>
---@field IgnoreMovementModes TArray<FMovementModeData>
---@field InputComponent UZionInputComponent
---@field ZionMovementComponent UZionCharacterMovementComponent
---@field StateComponent UStateComponent
---@field CollisionComponent UCollisionComponent
local URepulsionPlayerComponent = {}

---@param RepulsionEnemyComponent URepulsionEnemyComponent
---@param Collider UPrimitiveComponent
function URepulsionPlayerComponent:RemoveRepulsionEnemyComponent(RepulsionEnemyComponent, Collider) end
---@param RepulsionEnemyComponent URepulsionEnemyComponent
---@param Collider UPrimitiveComponent
function URepulsionPlayerComponent:AddRepulsionEnemyComponent(RepulsionEnemyComponent, Collider) end


---@class URichPresenceSubsystem : UGameInstanceSubsystem
local URichPresenceSubsystem = {}

function URichPresenceSubsystem:RefreshPresence() end


---@class URopeComponent : UActorComponent
---@field bUseRope boolean
---@field RopeDepthScale float
---@field RopeWidthScale float
---@field RopeMinLength float
---@field RopeMeshesRef TArray<FComponentReference>
---@field RopeDestinationPointRef FComponentReference
---@field RopeAttachPointRef FComponentReference
---@field RopeDestinationPoint USceneComponent
---@field RopeAttachPoint USceneComponent
local URopeComponent = {}



---@class USaveAchievements : USaveGame
---@field Achievements TArray<FName>
local USaveAchievements = {}



---@class USaveGameZion : USaveGame
---@field Version int32
---@field SubVersion int32
---@field ValidGameVersion FString
---@field ValidBuildVersion int32
---@field BackupIndex int32
---@field GameMode FGameModeSaveData
---@field Player FPlayerSaveData
---@field GameAchievements FGameAchievementsData
local USaveGameZion = {}



---@class USaveSettings : USaveGame
---@field Version int32
---@field SubVersion int32
---@field ValidGameVersion FString
---@field ValidBuildVersion int32
---@field LastGameSlotIndex int32
---@field InputSettingsData FInputSettingsData
---@field UIInputSettingsData FUIInputSettingsData
---@field GameSettingsData FGameSettingsData
---@field SoundSettingsData FSoundSettingsData
local USaveSettings = {}



---@class USaveSubsystem : UGameInstanceSubsystem
---@field CurrentSettings USaveSettings
---@field SavingGameData USaveGameZion
local USaveSubsystem = {}

---@param NewSlotIndex int32
function USaveSubsystem:SetCurrentSlotIndex(NewSlotIndex) end
---@return boolean
function USaveSubsystem:SaveSettings() end
---@param OnSaveFinished FSaveGameInCurrentSlotAsyncOnSaveFinished
function USaveSubsystem:SaveGameInCurrentSlotAsync(OnSaveFinished) end
---@return boolean
function USaveSubsystem:SaveGameInCurrentSlot() end
function USaveSubsystem:ResetTimeSinceLastGameSave() end
---@param bForceReload boolean
---@return ESaveExistsType
function USaveSubsystem:LoadSettings(bForceReload) end
---@param SlotIndex int32
---@param OnLoadFinished FLoadGameFromSlotAsyncOnLoadFinished
function USaveSubsystem:LoadGameFromSlotAsync(SlotIndex, OnLoadFinished) end
---@param OnLoadFinished FLoadGameFromCurrentSlotAsyncOnLoadFinished
function USaveSubsystem:LoadGameFromCurrentSlotAsync(OnLoadFinished) end
---@param out_GameData USaveGameZion
---@return ESaveExistsType
function USaveSubsystem:LoadGameFromCurrentSlot(out_GameData) end
---@return boolean
function USaveSubsystem:IsLoadingGameData() end
---@return float
function USaveSubsystem:GetTimeSinceLastGameSave() end
function USaveSubsystem:DeleteSettings() end
---@param SlotIndex int32
function USaveSubsystem:DeleteSaveDataAtSlotIndex(SlotIndex) end
---@param SlotToCopy int32
---@param out_TargetSlot int32
---@return ESaveCopyResult
function USaveSubsystem:CopyGameDataToEmptySlot(SlotToCopy, out_TargetSlot) end
---@param SlotIndex int32
---@return ESaveExistsType
function USaveSubsystem:CheckSlotExistence(SlotIndex) end
---@return ESaveExistsType
function USaveSubsystem:CheckCurrentSlotExistence() end


---@class UScrollBoxZion : UScrollBox
---@field ElementCountsPerLine int32
---@field NavigationOrientation EOrientation
---@field bAnimateScrollOnNavigation boolean
local UScrollBoxZion = {}

---@param InNavigation EUINavigation
function UScrollBoxZion:SimulateNavigation(InNavigation) end
---@param NewNavigationOrientation EOrientation
function UScrollBoxZion:SetNavigationOrientation(NewNavigationOrientation) end
---@param NewElementCountsPerLine int32
function UScrollBoxZion:SetElementCountPerLine(NewElementCountsPerLine) end
---@param NativeWidgetHost UNativeWidgetHost
---@param InAnimateScroll boolean
---@param InDestination EDescendantScrollDestination
---@param InScrollPadding float
function UScrollBoxZion:ScrollWidgetHostIntoView(NativeWidgetHost, InAnimateScroll, InDestination, InScrollPadding) end
---@param WidgetNavigation UWidgetNavigation
function UScrollBoxZion:CopyWidgetNavigation(WidgetNavigation) end


---@class UShakeComponent : UActorComponent
local UShakeComponent = {}

---@param ShakeData FShakeData
function UShakeComponent:LaunchShake(ShakeData) end


---@class UShopInfoComponent : UActorComponent
---@field DatatableDisplayOrder TArray<TSoftObjectPtr<UDataTable>>
local UShopInfoComponent = {}

---@param NewLevel int32
---@return int32
function UShopInfoComponent:SetLevel(NewLevel) end
---@param ShopType EShopType
---@param ShopItemData FShopItemData
function UShopInfoComponent:MarkSeen(ShopType, ShopItemData) end
---@return int32
function UShopInfoComponent:GetMinLevel() end
---@return int32
function UShopInfoComponent:GetMaxLevel() end
---@return int32
function UShopInfoComponent:GetLevel() end
---@param ShopType EShopType
---@param ShopDataTable UDataTable
---@return TArray<FShopItemData>
function UShopInfoComponent:GetItemsForShop(ShopType, ShopDataTable) end
---@param ShopType EShopType
---@param Item FDataTableRowHandle
---@return FCurrencyValue
function UShopInfoComponent:GetItemCost(ShopType, Item) end
---@param ShopType EShopType
---@param BoughtItem FDataTableRowHandle
function UShopInfoComponent:AddShopHistory(ShopType, BoughtItem) end


---@class USkillComponent : UActorComponent
---@field OnEquipSkillDelegate FSkillComponentOnEquipSkillDelegate
---@field OnLoadEquippedSkillDelegate FSkillComponentOnLoadEquippedSkillDelegate
---@field OnUnequipSkillDelegate FSkillComponentOnUnequipSkillDelegate
---@field InputActionsForSkillSlots TMap<ESkillSlot, FInputActions>
---@field DefaultSkills TMap<ESkillSlot, FName>
---@field EquippedSkillDataForSkillSlots TMap<ESkillSlot, FEquippedSkillData>
---@field CurrentLoadoutIndex int32
---@field SkillLoadouts TArray<FPlayerSkillLoadoutData>
local USkillComponent = {}

---@param bRemoveFromCurrentLoadout boolean
function USkillComponent:UnEquipAll(bRemoveFromCurrentLoadout) end
---@param SkillSlot ESkillSlot
---@param bRemoveFromCurrentLoadout boolean
function USkillComponent:UnEquip(SkillSlot, bRemoveFromCurrentLoadout) end
function USkillComponent:LoadEquippedSkills() end
---@param SkillSlot ESkillSlot
---@return boolean
function USkillComponent:HasEquippedSkill(SkillSlot) end
---@return boolean
function USkillComponent:HasAnyEquippedSkill() end
---@return int32
function USkillComponent:GetMinimumEquippedSPCost() end
---@param SkillID FName
---@return ESkillSlot
function USkillComponent:GetEquippedSkillSlotFromID(SkillID) end
---@param SkillSlot ESkillSlot
---@return FSkillLevelData
function USkillComponent:GetEquippedSkillLevelData(SkillSlot) end
---@param SpiritData FInventoryItemSpiritData
---@return UInputAction
function USkillComponent:GetEquippedSkillInputActionFromSpirit(SpiritData) end
---@param SkillSlot ESkillSlot
---@return FName
function USkillComponent:GetEquippedSkillID(SkillSlot) end
---@param SkillSlot ESkillSlot
---@return FInventoryItemSkillData
function USkillComponent:GetEquippedItemSkillData(SkillSlot) end
---@param SkillSlot ESkillSlot
---@return UCommandSet
function USkillComponent:GetEquippedCommandSet(SkillSlot) end
---@return int32
function USkillComponent:GetCurrentSkillLoadoutIndex() end
---@param LoadoutIndex int32
---@param bAutoLoad boolean
function USkillComponent:EquipSkillLoadout(LoadoutIndex, bAutoLoad) end
---@param SkillSlot ESkillSlot
---@param SkillID FName
---@param bAddToCurrentLoadout boolean
---@param bAutoLoad boolean
function USkillComponent:Equip(SkillSlot, SkillID, bAddToCurrentLoadout, bAutoLoad) end


---@class USleepActivatorComponent : UActorComponent
---@field WakeTriggerReference FComponentReference
---@field WakeTriggerMinRadius float
---@field WakeTriggerMaxRadius float
local USleepActivatorComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function USleepActivatorComponent:OnWakeTriggerOverlapEnd(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function USleepActivatorComponent:OnWakeTriggerOverlapBegin(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end


---@class USleepTargetComponent : UActorComponent
---@field bCanBePutToSleep boolean
---@field SavedComponentTickStates TMap<UActorComponent, boolean>
---@field Owner AActor
---@field MovementComponent UCharacterMovementComponent
---@field StateComponent UStateComponent
---@field StatusEffectComponent UStatusEffectComponent
---@field CommandComponent UCommandComponent
---@field SpineRendererComponent USpineSkeletonRendererComponent
---@field SpineColorComponent USpineColorComponent
---@field DeathComponent UDeathComponent
---@field KnockbackComponent UKnockbackComponent
local USleepTargetComponent = {}



---@class USoundComponent : UActorComponent
---@field Material EEffectMaterialType
---@field GuardMaterial EEffectGuardMaterialType
---@field LoopSoundForMovementModes TMap<FMovementModeData, UFMODEvent>
---@field VoiceAudioComponent UFMODAudioComponent
local USoundComponent = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function USoundComponent:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end


---@class USoundSubsystem : UGameInstanceSubsystem
---@field VolumeForSoundFamilies TMap<ESoundFamily, float>
---@field SnapshotInstances TMap<FName, FFMODEventInstance>
---@field CurrentBGM UFMODEvent
---@field CurrentBGMInstance FFMODEventInstance
---@field CurrentAmbience UFMODEvent
---@field CurrentAmbienceInstance FFMODEventInstance
---@field VoiceEvent UFMODEvent
local USoundSubsystem = {}

---@param SoundInstance FFMODEventInstance
function USoundSubsystem:StopSoundEventInstance(SoundInstance) end
---@param FadeOutTime float
function USoundSubsystem:StopBGM(FadeOutTime) end
function USoundSubsystem:StopAmbience() end
function USoundSubsystem:StopAll() end
---@param SoundFamily ESoundFamily
---@param NewVolume float
function USoundSubsystem:SetVolume(SoundFamily, NewVolume) end
---@param Locale FString
function USoundSubsystem:SetVoiceLanguage(Locale) end
---@param bPause boolean
function USoundSubsystem:SetPauseGameFamilies(bPause) end
---@param Parameter FName
---@param Value float
function USoundSubsystem:SetParameter(Parameter, Value) end
---@param SoundFamily ESoundFamily
function USoundSubsystem:ResumeFamily(SoundFamily) end
function USoundSubsystem:ResumeBGM() end
function USoundSubsystem:ResetVolumes() end
function USoundSubsystem:RefreshAudioVolumes() end
---@param Actor AActor
---@param VoiceID FString
---@return UFMODAudioComponent
function USoundSubsystem:PlayVoiceOnActor(Actor, VoiceID) end
---@param Text FText
---@param Speaker AActor
---@return UFMODAudioComponent
function USoundSubsystem:PlayVoiceFromText(Text, Speaker) end
---@param VoiceID FString
---@return UFMODAudioComponent
function USoundSubsystem:PlayVoice(VoiceID) end
---@param SoundEvent UFMODEvent
---@param WorldLocation FVector
---@return FFMODEventInstance
function USoundSubsystem:PlaySoundEventAtWorldLocation(SoundEvent, WorldLocation) end
---@param SoundEvent UFMODEvent
---@param AttachToComponent USceneComponent
---@return UFMODAudioComponent
function USoundSubsystem:PlaySoundEventAttached(SoundEvent, AttachToComponent) end
---@param SoundEvent UFMODEvent
---@return FFMODEventInstance
function USoundSubsystem:PlaySoundEvent(SoundEvent) end
---@param SoundEvent UFMODEvent
function USoundSubsystem:PlayBGM(SoundEvent) end
---@param SoundEvent UFMODEvent
function USoundSubsystem:PlayAmbience(SoundEvent) end
---@param SoundFamily ESoundFamily
function USoundSubsystem:PauseFamily(SoundFamily) end
function USoundSubsystem:PauseBGM() end
---@param SoundFamily ESoundFamily
---@return float
function USoundSubsystem:GetVolume(SoundFamily) end
---@return FString
function USoundSubsystem:GetVoiceLanguage() end
---@return UFMODEvent
function USoundSubsystem:GetCurrentBGM() end
---@return UFMODEvent
function USoundSubsystem:GetCurrentAmbience() end
---@param Snapshot UFMODEvent
---@param Tag FName
function USoundSubsystem:EnableSnapshot(Snapshot, Tag) end
---@param Tag FName
function USoundSubsystem:DisableSnapshot(Tag) end
function USoundSubsystem:DisableAllSnapshots() end


---@class USpawnerComponent : UActorComponent
---@field bKillAllSpawnedEntitiesOnDeath boolean
local USpawnerComponent = {}

---@param SpawnData FSpawnData
function USpawnerComponent:Spawn(SpawnData) end
---@param EntityActor AActor
function USpawnerComponent:OnEntityDestroyed(EntityActor) end
function USpawnerComponent:OnDeathProcessStart() end
function USpawnerComponent:KillAllSpawnedEntities() end
---@return int32
function USpawnerComponent:GetSpawnedEntityCount() end


---@class USpineAdditiveAccessoryComponent : UActorComponent
---@field AnimationSettings TArray<FSpineAdditiveAccessorySettings>
local USpineAdditiveAccessoryComponent = {}

---@param Entry UTrackEntry
function USpineAdditiveAccessoryComponent:OnAnimationStart(Entry) end


---@class USpineAdditiveComponent : UActorComponent
---@field AdditiveSettings TArray<FSpineAdditiveSettings>
local USpineAdditiveComponent = {}

---@param TrackEntry UTrackEntry
function USpineAdditiveComponent:OnAnimationStart(TrackEntry) end


---@class USpineAnimNotifyState_AfterImage : USpineAnimNotifyState
local USpineAnimNotifyState_AfterImage = {}


---@class USpineAnimNotifyState_Camera : USpineAnimNotifyState
---@field CameraClass TSubclassOf<ACameraActor>
---@field WorldSpaceOffset FVector
---@field LocalSpaceOffset FVector
---@field bAttach boolean
---@field TransitionInParams FViewTargetTransitionParams
---@field TransitionOutParams FViewTargetTransitionParams
local USpineAnimNotifyState_Camera = {}



---@class USpineAnimNotifyState_RenderLayerOverride : USpineAnimNotifyState
---@field RenderLayer ERenderLayerTypes
local USpineAnimNotifyState_RenderLayerOverride = {}



---@class USpineAnimNotifyState_SetMaterialParameter : USpineAnimNotifyState
---@field ParameterName FName
---@field Curve FRuntimeFloatCurve
---@field RenderComponentRefs TArray<FComponentReference>
local USpineAnimNotifyState_SetMaterialParameter = {}



---@class USpineAnimNotifyState_States : USpineAnimNotifyState
---@field States TArray<TSubclassOf<UState>>
local USpineAnimNotifyState_States = {}



---@class USpineAnimNotifyState_TimedSE : USpineAnimNotifyState
---@field SoundData FSoundData
local USpineAnimNotifyState_TimedSE = {}



---@class USpineAnimNotify_ActivateAuraFXs : USpineAnimNotify
---@field AuraFXTag FName
local USpineAnimNotify_ActivateAuraFXs = {}



---@class USpineAnimNotify_CameraShake : USpineAnimNotify
---@field CameraShake TSubclassOf<UCameraShakeBase>
---@field InnerRadius float
---@field OuterRadius float
---@field Falloff float
---@field bOrientShakeTowardsEpicenter boolean
local USpineAnimNotify_CameraShake = {}



---@class USpineAnimNotify_CostumeFX : USpineAnimNotify
---@field CostumeFX EPlayerCostumeFX
---@field FXData FSpineFXData
---@field RuntimeFXData FSpineFXData
local USpineAnimNotify_CostumeFX = {}



---@class USpineAnimNotify_DeactivateAuraFXs : USpineAnimNotify
---@field AuraFXTag FName
local USpineAnimNotify_DeactivateAuraFXs = {}



---@class USpineAnimNotify_ForceFeedback : USpineAnimNotify
---@field ForceFeedbackEffect UForceFeedbackEffect
local USpineAnimNotify_ForceFeedback = {}



---@class USpineAnimNotify_PlayBGM : USpineAnimNotify
---@field BGM UFMODEvent
local USpineAnimNotify_PlayBGM = {}



---@class USpineAnimNotify_PlaySE : USpineAnimNotify
---@field SoundData FSoundData
local USpineAnimNotify_PlaySE = {}



---@class USpineAnimNotify_SetSkins : USpineAnimNotify
---@field Skins TArray<FString>
local USpineAnimNotify_SetSkins = {}



---@class USpineAnimNotify_Step : USpineAnimNotify
---@field StepHeaviness EStepHeavinessCategory
---@field bNotifyFluidInteraction boolean
---@field LocalSpaceOffset FVector
local USpineAnimNotify_Step = {}



---@class USpineAnimNotify_Step_Ceiling : USpineAnimNotify_Step
local USpineAnimNotify_Step_Ceiling = {}


---@class USpineAnimNotify_Step_Wall : USpineAnimNotify_Step
local USpineAnimNotify_Step_Wall = {}


---@class USpineAnimNotify_StopBGM : USpineAnimNotify
---@field FadeOut float
local USpineAnimNotify_StopBGM = {}



---@class USpineAnimNotify_ToggleFacing : USpineAnimNotify
local USpineAnimNotify_ToggleFacing = {}


---@class USpineAnimNotify_TriggerLeadAbilityFX : USpineAnimNotify
---@field bOverrideLeadAbilityFX boolean
---@field LeadAbilityFXDataOverride FSpineFXData
local USpineAnimNotify_TriggerLeadAbilityFX = {}



---@class USpineAnimationTransitionCondition : UObject
local USpineAnimationTransitionCondition = {}

---@param Animator USpineAnimatorComponent
---@param CurrAnimationName FString
---@param NextAnimationName FString
---@return boolean
function USpineAnimationTransitionCondition:Evaluate(Animator, CurrAnimationName, NextAnimationName) end


---@class USpineAnimatorComponent : UActorComponent
---@field bUpdateLocomotion boolean
---@field MinVerticalVelocityForFallingUp float
---@field MinVerticalVelocityForFallingDown float
---@field MinVerticalVelocityForDashFallingUp float
---@field MinVerticalVelocityForDashFallingDown float
---@field MinVerticalVelocityForRideFallingUp float
---@field MinVerticalVelocityForRideFallingDown float
---@field LocomotionVectorSource ELocomotionMoveSource
---@field VelocityZForUp float
---@field VelocityZForDown float
---@field VelocityYForForward float
---@field FallbackMovementModeData FMovementModeData
---@field FallbackMovementModeUse EFallbackMovementModeUse
---@field bSyncLocomotionTrackTime boolean
---@field bAutoManageTurnAnimations boolean
---@field DamageAdditiveType EDamageAdditiveType
---@field DamageAdditiveAnimation FString
---@field DamageAdditiveForbiddenStates TArray<TSubclassOf<UState>>
---@field bFlushOnStagger boolean
---@field EventIdle TArray<FSpineAnimationDefinition>
---@field EventTurn TArray<FSpineAnimationDefinition>
---@field LocomotionIdle TArray<FSpineAnimationDefinition>
---@field LocomotionWalk TArray<FSpineAnimationDefinition>
---@field LocomotionRun TArray<FSpineAnimationDefinition>
---@field LocomotionDash TArray<FSpineAnimationDefinition>
---@field LocomotionRide TArray<FSpineAnimationDefinition>
---@field LocomotionFallingUp TArray<FSpineAnimationDefinition>
---@field LocomotionFallingNeutral TArray<FSpineAnimationDefinition>
---@field LocomotionFallingDown TArray<FSpineAnimationDefinition>
---@field LocomotionDashFallingUp TArray<FSpineAnimationDefinition>
---@field LocomotionDashFallingNeutral TArray<FSpineAnimationDefinition>
---@field LocomotionDashFallingDown TArray<FSpineAnimationDefinition>
---@field LocomotionRideFallingUp TArray<FSpineAnimationDefinition>
---@field LocomotionRideFallingNeutral TArray<FSpineAnimationDefinition>
---@field LocomotionRideFallingDown TArray<FSpineAnimationDefinition>
---@field LocomotionFallingKnockbackUp_Forward TArray<FSpineAnimationDefinition>
---@field LocomotionFallingKnockbackUp_Backward TArray<FSpineAnimationDefinition>
---@field LocomotionFallingKnockbackNeutral_Forward TArray<FSpineAnimationDefinition>
---@field LocomotionFallingKnockbackNeutral_Backward TArray<FSpineAnimationDefinition>
---@field LocomotionFallingKnockbackDown_Forward TArray<FSpineAnimationDefinition>
---@field LocomotionFallingKnockbackDown_Backward TArray<FSpineAnimationDefinition>
---@field LocomotionWallGrab TArray<FSpineAnimationDefinition>
---@field LocomotionSlide TArray<FSpineAnimationDefinition>
---@field LocomotionHookAttach TArray<FSpineAnimationDefinition>
---@field LocomotionSwimIdle TArray<FSpineAnimationDefinition>
---@field LocomotionSwimLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterIdle TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterUp TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterUpLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDown TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDownLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDashUp TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDashUpLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDashDown TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDashDownLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterDashLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterRideUp TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterRideUpLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterRideDown TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterRideDownLateral TArray<FSpineAnimationDefinition>
---@field LocomotionUnderwaterRideLateral TArray<FSpineAnimationDefinition>
---@field LocomotionFlyIdle TArray<FSpineAnimationDefinition>
---@field LocomotionFly TArray<FSpineAnimationDefinition>
---@field LocomotionFlyUp TArray<FSpineAnimationDefinition>
---@field LocomotionFlyDown TArray<FSpineAnimationDefinition>
---@field LocomotionWallScalingIdle TArray<FSpineAnimationDefinition>
---@field LocomotionWallScalingForward TArray<FSpineAnimationDefinition>
---@field LocomotionWallScalingBackward TArray<FSpineAnimationDefinition>
---@field KnockbackStaggers TArray<FSpineAnimationStaggerDefinitions>
---@field KnockbackStaggersSwimming TArray<FSpineAnimationStaggerDefinitions>
---@field KnockbackLaunchLand TArray<FSpineAnimationDefinition>
---@field KnockbackLaunchLandBack TArray<FSpineAnimationDefinition>
---@field KnockbackLaunchStagger TArray<FSpineAnimationDefinition>
---@field KnockbackLaunchRecovery TArray<FSpineAnimationDefinition>
---@field Stun TArray<FSpineAnimationDefinition>
---@field StunRecovery TArray<FSpineAnimationDefinition>
---@field TurnGrounded_Slow TArray<FSpineAnimationDefinition>
---@field TurnGrounded_Default TArray<FSpineAnimationDefinition>
---@field TurnGrounded_Fast TArray<FSpineAnimationDefinition>
---@field TurnSwim_Slow TArray<FSpineAnimationDefinition>
---@field TurnSwim_Default TArray<FSpineAnimationDefinition>
---@field TurnUnderwater_Default TArray<FSpineAnimationDefinition>
---@field TurnUnderwater_Dash_Up TArray<FSpineAnimationDefinition>
---@field TurnUnderwater_Dash_Down TArray<FSpineAnimationDefinition>
---@field TurnUnderwater_Ride_Up TArray<FSpineAnimationDefinition>
---@field TurnUnderwater_Ride_Down TArray<FSpineAnimationDefinition>
---@field TurnFlying_Default TArray<FSpineAnimationDefinition>
---@field TransitionDefinitions TArray<FSpineAnimationTransitionDefinition>
---@field SpineAnimation USpineSkeletonAnimationComponent
---@field RootMotionComponent USpineRootMotionComponent
---@field Character ACharacter
---@field ZionMovementComponent UZionCharacterMovementComponent
---@field KnockbackComponent UKnockbackComponent
---@field StunComponent UStunComponent
---@field LocomotionComponent ULocomotionComponent
---@field StateComponent UStateComponent
---@field DeathComponent UDeathComponent
---@field DashChargeComponent UDashChargeComponent
local USpineAnimatorComponent = {}

---@param Layer ESpineAnimatorLayer
function USpineAnimatorComponent:StopAnimationAtLayer(Layer) end
function USpineAnimatorComponent:StopActionAnimations() end
function USpineAnimatorComponent:ResetLocomotionCycle() end
function USpineAnimatorComponent:ResetAnimations() end
---@param AnimationDefinitions TArray<FSpineAnimationDefinition>
function USpineAnimatorComponent:PlayTurnAnimations(AnimationDefinitions) end
---@param AnimatorLayer ESpineAnimatorLayer
---@param AnimationDefinitions TArray<FSpineAnimationDefinition>
---@param OnLayerEnd FPlayAnimationsWithDelegateOnLayerEnd
function USpineAnimatorComponent:PlayAnimationsWithDelegate(AnimatorLayer, AnimationDefinitions, OnLayerEnd) end
---@param AnimatorLayer ESpineAnimatorLayer
---@param AnimationDefinitions TArray<FSpineAnimationDefinition>
function USpineAnimatorComponent:PlayAnimations(AnimatorLayer, AnimationDefinitions) end
---@param AnimationDefinition FSpineAnimationDefinition
---@param OnLayerEnd FPlayActionAnimationWithDelegateOnLayerEnd
function USpineAnimatorComponent:PlayActionAnimationWithDelegate(AnimationDefinition, OnLayerEnd) end
---@param AnimationDefinitions TArray<FSpineAnimationDefinition>
---@param OnLayerEnd FPlayActionAnimationsWithDelegateOnLayerEnd
function USpineAnimatorComponent:PlayActionAnimationsWithDelegate(AnimationDefinitions, OnLayerEnd) end
---@param AnimationDefinitions TArray<FSpineAnimationDefinition>
function USpineAnimatorComponent:PlayActionAnimations(AnimationDefinitions) end
---@param AnimationDefinition FSpineAnimationDefinition
function USpineAnimatorComponent:PlayActionAnimation(AnimationDefinition) end
---@param TrackEntry UTrackEntry
function USpineAnimatorComponent:OnLayerInterrupt(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineAnimatorComponent:OnLayerComplete(TrackEntry) end
function USpineAnimatorComponent:OnFacingChanged() end
---@param TrackEntry UTrackEntry
function USpineAnimatorComponent:OnAnyAnimationInterrupt(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineAnimatorComponent:OnAnyAnimationComplete(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineAnimatorComponent:OnAnimationInterrupt(TrackEntry) end
---@param TrackEntry UTrackEntry
function USpineAnimatorComponent:OnAnimationComplete(TrackEntry) end
---@param Layer ESpineAnimatorLayer
---@return boolean
function USpineAnimatorComponent:IsPlayingAnimationOnLayer(Layer) end
---@return FVector
function USpineAnimatorComponent:GetLastVelocity() end
---@param Index int32
---@param out_Result FSpineAnimatorHistoryData
---@return boolean
function USpineAnimatorComponent:GetHistoryDataAtIndex(Index, out_Result) end
---@return UTrackEntry
function USpineAnimatorComponent:GetCurrentTrackEntry() end
---@return ESpineAnimatorLayer
function USpineAnimatorComponent:GetCurrentLayer() end
---@return float
function USpineAnimatorComponent:GetCurrentAnimationPlayTime() end
---@return FString
function USpineAnimatorComponent:GetCurrentAnimationName() end


---@class USpineColorComponent : UActorComponent
---@field DefaultDamageFlash FSpineFlashColorData
---@field DamageColorForWeights TMap<EAbilityWeightCategory, FSpineFlashColorData>
---@field AffectedSkins TArray<FString>
---@field SkinMaterial UMaterialInterface
local USpineColorComponent = {}

---@param Color FLinearColor
---@param Alpha float
---@param LerpDuration float
function USpineColorComponent:SetColor(Color, Alpha, LerpDuration) end
---@param Ability AAbility
---@param Source AActor
---@param HitData FHitData
function USpineColorComponent:OnGotAbilityApplied(Ability, Source, HitData) end
---@param Color FLinearColor
---@param Alpha float
---@param FlashDuration float
function USpineColorComponent:FlashColor(Color, Alpha, FlashDuration) end
---@param LerpDuration float
function USpineColorComponent:ClearColor(LerpDuration) end


---@class USpineHighlightComponent : UActorComponent
---@field StencilCategory EStencilCategory
---@field AlternatePivotComputationAnimations TArray<FString>
local USpineHighlightComponent = {}

---@param Entry UTrackEntry
function USpineHighlightComponent:OnAnimationStart(Entry) end


---@class USpineSkinFromFacing : UActorComponent
---@field FacingRightSkins TArray<FString>
---@field FacingRightBrokenSkins TArray<FString>
---@field FacingLeftSkins TArray<FString>
---@field FacingLeftBrokenSkins TArray<FString>
local USpineSkinFromFacing = {}

function USpineSkinFromFacing:OnFacingChanged() end


---@class USpiritAutoComponent : UActorComponent
---@field SpiritOwner ACharacterZionSpirit
---@field FollowTargetComponent UFollowTargetComponent
---@field LocomotionComponent ULocomotionComponent
---@field AnimatorComponent USpineAnimatorComponent
---@field CommandComponent UCommandComponent
---@field AutoCommandSet UCommandSet
local USpiritAutoComponent = {}

function USpiritAutoComponent:OnSummonerFacingChange() end
function USpiritAutoComponent:OnSummonerDodge() end
function USpiritAutoComponent:OnGameMapChanged() end
function USpiritAutoComponent:OnCommandQueueCleared() end


---@class USpiritRepeatComponent : UActorComponent
---@field OnRepeatEnable FSpiritRepeatComponentOnRepeatEnable
---@field OnRepeatDisable FSpiritRepeatComponentOnRepeatDisable
---@field SpiritOwner ACharacterZionSpirit
---@field FollowTargetComponent UFollowTargetComponent
---@field LocomotionComponent ULocomotionComponent
---@field AnimatorComponent USpineAnimatorComponent
---@field AbilityComponent UAbilityComponent
---@field ManualAbility AAbility
local USpiritRepeatComponent = {}

function USpiritRepeatComponent:OnSummonerFacingChange() end


---@class USpiritSkinUpdaterComponent : UActorComponent
---@field NecessaryAptitude EAptitudeType
---@field Skins TArray<FString>
---@field AnimationComponent USpineSkeletonAnimationComponent
local USpiritSkinUpdaterComponent = {}



---@class USpiritStatsSnapshotComponent : UActorComponent
local USpiritStatsSnapshotComponent = {}


---@class USpiritTurretComponent : UActorComponent
---@field bDismissOnZoneSwitch boolean
---@field SummonerLinkFXData FSpineFXData
---@field SummonerLinkFX UNiagaraComponent
---@field SpiritOwner ACharacterZionSpirit
---@field CommandComponent UCommandComponent
---@field BoneComponent USpineBoneComponent
---@field AutoCommandSet UCommandSet
local USpiritTurretComponent = {}



---@class UStatBreakableComponent : UStatComponent
---@field OnBreakDelegate FStatBreakableComponentOnBreakDelegate
---@field OnInvincibilityStart FStatBreakableComponentOnInvincibilityStart
---@field OnInvincibilityEnd FStatBreakableComponentOnInvincibilityEnd
---@field RegenerationBlockingStates TArray<TSubclassOf<UState>>
---@field BreakBlockingStates TArray<TSubclassOf<UState>>
---@field BreakRecoveryBlockingStates TArray<TSubclassOf<UState>>
---@field CompleteBlockingStates TArray<TSubclassOf<UState>>
---@field bEnabled boolean
---@field DefaultParameters FStatBreakableData
---@field bUseMultiplicativeParameters boolean
---@field MultiplicativeParameters FStatBreakableMultiplicativeData
---@field bUseAdditiveParameters boolean
---@field AdditiveParameters FStatBreakableData
---@field bClampMinParameters boolean
---@field MinParameters FStatBreakableData
---@field bClampMaxParameters boolean
---@field MaxParameters FStatBreakableData
---@field CurrParameters FStatBreakableData
local UStatBreakableComponent = {}

---@param bImmune boolean
---@return boolean
function UStatBreakableComponent:SetIsImmune(bImmune) end
function UStatBreakableComponent:OnBreak() end
---@return boolean
function UStatBreakableComponent:IsInvincible() end
---@return boolean
function UStatBreakableComponent:IsEnabled() end
---@return boolean
function UStatBreakableComponent:IsBroken() end


---@class UStatBurnComponent : UStatBreakableComponent
local UStatBurnComponent = {}


---@class UStatComponent : UActorComponent
---@field OnCurrValueChangedDelegate FStatComponentOnCurrValueChangedDelegate
---@field OnMaxValueChangedDelegate FStatComponentOnMaxValueChangedDelegate
---@field OnCurrValueReachedZeroDelegate FStatComponentOnCurrValueReachedZeroDelegate
---@field OnCurrValueReachedMaxDelegate FStatComponentOnCurrValueReachedMaxDelegate
---@field bFullyRestoreOnBeginPlay boolean
---@field SubtractBlockingStates TArray<TSubclassOf<UState>>
---@field AddBlockingStates TArray<TSubclassOf<UState>>
---@field MaxValue int32
---@field CurrValue int32
local UStatComponent = {}

---@param ValueToSubtract int32
---@return int32
function UStatComponent:Subtract(ValueToSubtract) end
---@param NewMaxValue int32
function UStatComponent:SetMaxValue(NewMaxValue) end
---@return int32
function UStatComponent:GetMaxValue() end
---@return int32
function UStatComponent:GetCurrValue() end
---@return float
function UStatComponent:GetCurrRatio() end
function UStatComponent:FullyRestore() end
---@param ValueToAdd int32
---@return int32
function UStatComponent:Add(ValueToAdd) end


---@class UStatFreezeComponent : UStatBreakableComponent
local UStatFreezeComponent = {}


---@class UStatHPComponent : UStatComponent
---@field OnReceivedDamageDataDelegate FStatHPComponentOnReceivedDamageDataDelegate
---@field OnReceivedDamageDelegate FStatHPComponentOnReceivedDamageDelegate
---@field OnReceivedHealDelegate FStatHPComponentOnReceivedHealDelegate
---@field bCanBeInstantKilled boolean
local UStatHPComponent = {}

---@return AActor
function UStatHPComponent:GetLastDamageSource() end
---@param Source AActor
---@param Value int32
---@return boolean
function UStatHPComponent:DoHeal(Source, Value) end
---@param Source AActor
---@param DamageData FDamageData
---@return boolean
function UStatHPComponent:DoDamage(Source, DamageData) end


---@class UStatSPComponent : UStatComponent
---@field SPRegenPercentageBonus int32
local UStatSPComponent = {}

---@param SPRegenPercentBonusToSub int32
---@return int32
function UStatSPComponent:SubSPRegenPercentageBonus(SPRegenPercentBonusToSub) end
---@return int32
function UStatSPComponent:GetFilledGaugeCount() end
---@param SPRegenPercentBonusToAdd int32
---@return int32
function UStatSPComponent:AddSPRegenPercentageBonus(SPRegenPercentBonusToAdd) end


---@class UStatShockComponent : UStatBreakableComponent
local UStatShockComponent = {}


---@class UStatStaminaComponent : UStatBreakableComponent
local UStatStaminaComponent = {}


---@class UState : UObject
local UState = {}


---@class UStateAutoClimb : UState
local UStateAutoClimb = {}


---@class UStateBlockFreezeBreak : UState
local UStateBlockFreezeBreak = {}


---@class UStateBurn : UState
local UStateBurn = {}


---@class UStateBusy : UState
local UStateBusy = {}


---@class UStateComponent : UActorComponent
---@field DefaultStates TArray<TSubclassOf<UState>>
---@field ActiveStates TArray<TSubclassOf<UState>>
---@field TimedStates TArray<FTimedStateData_Time>
---@field FrameTimedStates TArray<FTimedStateData_Frame>
local UStateComponent = {}

---@param States TArray<TSubclassOf<UState>>
function UStateComponent:RemoveStates(States) end
---@param State TSubclassOf<UState>
function UStateComponent:RemoveState(State) end
function UStateComponent:RemoveAllStates() end
---@return boolean
function UStateComponent:IsStunned() end
---@return boolean
function UStateComponent:IsMovementLocked() end
---@param InputAction UInputAction
---@return boolean
function UStateComponent:IsInputActionLocked(InputAction) end
---@return boolean
function UStateComponent:IsInFreezeCritical() end
---@return boolean
function UStateComponent:IsFreeCommandLayerLocked() end
---@return boolean
function UStateComponent:IsFacingLocked() end
---@return boolean
function UStateComponent:IsDebuffed() end
---@param State TSubclassOf<UState>
---@return boolean
function UStateComponent:HasState(State) end
---@return boolean
function UStateComponent:HasBusyState() end
---@param States TArray<TSubclassOf<UState>>
---@return boolean
function UStateComponent:HasAnyState(States) end
---@param States TArray<TSubclassOf<UState>>
---@return boolean
function UStateComponent:HasAllStates(States) end
---@param States TArray<TSubclassOf<UState>>
---@param FrameCount int32
function UStateComponent:AddStatesForFrameCount(States, FrameCount) end
---@param States TArray<TSubclassOf<UState>>
---@param Duration float
function UStateComponent:AddStatesForDuration(States, Duration) end
---@param States TArray<TSubclassOf<UState>>
function UStateComponent:AddStates(States) end
---@param State TSubclassOf<UState>
function UStateComponent:AddState(State) end


---@class UStateCrouch : UState
local UStateCrouch = {}


---@class UStateDead : UStateBusy
local UStateDead = {}


---@class UStateDebuff : UState
local UStateDebuff = {}


---@class UStateDisableGuardResponse : UState
local UStateDisableGuardResponse = {}


---@class UStateDisableMaxFallVelocity : UState
local UStateDisableMaxFallVelocity = {}


---@class UStateDisableRegisteredHitboxes : UState
local UStateDisableRegisteredHitboxes = {}


---@class UStateDisableWalkOffLedges : UState
local UStateDisableWalkOffLedges = {}


---@class UStateDodge : UState
local UStateDodge = {}


---@class UStateFreeze : UStateBusy
local UStateFreeze = {}


---@class UStateFreezeCritical : UStateBusy
local UStateFreezeCritical = {}


---@class UStateGuard_Back : UState
local UStateGuard_Back = {}


---@class UStateGuard_Front : UState
local UStateGuard_Front = {}


---@class UStateHitStop : UState
local UStateHitStop = {}


---@class UStateIgnoreAutoClimb : UState
local UStateIgnoreAutoClimb = {}


---@class UStateIgnoreBrakingDeceleration : UState
local UStateIgnoreBrakingDeceleration = {}


---@class UStateIgnoreEnemyRepulsion : UState
local UStateIgnoreEnemyRepulsion = {}


---@class UStateIgnoreGravity : UState
local UStateIgnoreGravity = {}


---@class UStateIgnoreGroundFriction : UState
local UStateIgnoreGroundFriction = {}


---@class UStateIgnoreKnockback : UState
local UStateIgnoreKnockback = {}


---@class UStateIgnoreStaminaDamage : UState
local UStateIgnoreStaminaDamage = {}


---@class UStateIgnoreWallGrab : UState
local UStateIgnoreWallGrab = {}


---@class UStateInEvent : UStateBusy
local UStateInEvent = {}


---@class UStateInvincible : UState
local UStateInvincible = {}


---@class UStateKnockback : UState
local UStateKnockback = {}


---@class UStateKnockbackLaunch : UState
local UStateKnockbackLaunch = {}


---@class UStateLockAllInputActions : UState
local UStateLockAllInputActions = {}


---@class UStateLockCrouch : UState
local UStateLockCrouch = {}


---@class UStateLockFacing : UState
local UStateLockFacing = {}


---@class UStateLockFreeCommandLayer : UState
local UStateLockFreeCommandLayer = {}


---@class UStateLockInputActions : UState
---@field InputActions TArray<UInputAction>
local UStateLockInputActions = {}



---@class UStateLockInteract : UState
local UStateLockInteract = {}


---@class UStateLockLookup : UState
local UStateLockLookup = {}


---@class UStateLockMovement : UState
local UStateLockMovement = {}


---@class UStateLockMovementAndFacing : UState
local UStateLockMovementAndFacing = {}


---@class UStateLookUp : UState
local UStateLookUp = {}


---@class UStateParry : UState
local UStateParry = {}


---@class UStateShock : UState
local UStateShock = {}


---@class UStateStun : UState
local UStateStun = {}


---@class UStateWallDash : UState
local UStateWallDash = {}


---@class UStatsComponent : UActorComponent
---@field DefaultStatsLevelData FStatsLevelData
---@field DefaultElementalFactor float
---@field FreezeCriticalFactor float
---@field ElementalFactors TMap<EAttackElement, float>
local UStatsComponent = {}

---@param Type EAttackType
---@return int32
function UStatsComponent:GetStaminaCutPercentage(Type) end
---@return int32
function UStatsComponent:GetDefense() end
---@param Type EAttackType
---@return int32
function UStatsComponent:GetDamageCutPercentage(Type) end
---@return int32
function UStatsComponent:GetAttack() end


---@class UStatsControllerAIComponent : UStatsControllerComponent
---@field OnPhaseLevelChangeDelegate FStatsControllerAIComponentOnPhaseLevelChangeDelegate
---@field PhaseLevel int32
local UStatsControllerAIComponent = {}

---@return int32
function UStatsControllerAIComponent:IncrementPhaseLevel() end
---@return int32
function UStatsControllerAIComponent:GetPhaseLevel() end


---@class UStatsControllerComponent : UActorComponent
---@field DefaultLevelTable UDataTable
---@field LevelTable UDataTable
local UStatsControllerComponent = {}

---@return FStatsLevelData
function UStatsControllerComponent:GetStatsLevelData() end
---@return int32
function UStatsControllerComponent:GetLevel() end
---@return int32
function UStatsControllerComponent:GetAppliedLevel() end


---@class UStatsControllerPlayerComponent : UStatsControllerComponent
---@field OnExperienceValueChanged FStatsControllerPlayerComponentOnExperienceValueChanged
---@field OnLevelValueChanged FStatsControllerPlayerComponentOnLevelValueChanged
---@field MaxPossibleStatsData FExtendedStatsData
---@field AdditiveBonusStats FExtendedStatsData
local UStatsControllerPlayerComponent = {}

---@param NewLevel int32
function UStatsControllerPlayerComponent:SetLevel(NewLevel) end
---@return boolean
function UStatsControllerPlayerComponent:IsMaxLevel() end
---@return FStatsLevelData
function UStatsControllerPlayerComponent:GetStatsLevelDataWithBonuses() end
---@return int32
function UStatsControllerPlayerComponent:GetNecessaryExperiencePointsForLevelUp() end
---@return FExtendedStatsData
function UStatsControllerPlayerComponent:GetExtendedStatsLevelDataWithBonuses() end
---@return float
function UStatsControllerPlayerComponent:GetExperiencePointsRatio() end
---@return int32
function UStatsControllerPlayerComponent:GetExperiencePoints() end


---@class UStatsEnemyComponent : UStatsComponent
local UStatsEnemyComponent = {}


---@class UStatsPlayerComponent : UStatsComponent
local UStatsPlayerComponent = {}


---@class UStatusEffect : UObject
---@field bCanEditStatusEffectType boolean
---@field StatusEffectType EStatusEffectType
---@field bUseDifficultySettings boolean
---@field Duration float
---@field OnLaunchSound UFMODEvent
---@field LoopSound UFMODEvent
local UStatusEffect = {}

---@return EStatusEffectType
function UStatusEffect:GetStatusEffectType() end
---@return float
function UStatusEffect:GetDuration() end


---@class UStatusEffectComponent : UActorComponent
---@field OnStatusEffectLaunchedDelegate FStatusEffectComponentOnStatusEffectLaunchedDelegate
---@field OnStatusEffectStoppedDelegate FStatusEffectComponentOnStatusEffectStoppedDelegate
---@field StatusEffectBurn TSubclassOf<UStatusEffect>
---@field StatusEffectFreeze TSubclassOf<UStatusEffect>
---@field StatusEffectShock TSubclassOf<UStatusEffect>
---@field StatusEffects TArray<UStatusEffect>
---@field CachedStatusEffects TMap<TSubclassOf<UStatusEffect>, FStatusEffectList>
local UStatusEffectComponent = {}

function UStatusEffectComponent:OnDeathProcessStart() end
---@param StatusEffectClass TSubclassOf<UStatusEffect>
function UStatusEffectComponent:LaunchStatusEffectFromClass(StatusEffectClass) end
---@param StatusEffectType EStatusEffectType
function UStatusEffectComponent:LaunchStatusEffect(StatusEffectType) end


---@class UStatusEffect_Burn : UStatusEffect
---@field AbilityTick float
---@field AbilityData FAbilityData
local UStatusEffect_Burn = {}



---@class UStatusEffect_BurnPlayer : UStatusEffect_Burn
---@field DodgeDurationReduction float
local UStatusEffect_BurnPlayer = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UStatusEffect_BurnPlayer:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
function UStatusEffect_BurnPlayer:OnDodged() end


---@class UStatusEffect_DamageCut : UStatusEffect
---@field PercentageBonus int32
local UStatusEffect_DamageCut = {}



---@class UStatusEffect_Freeze : UStatusEffect
---@field AbilityData FAbilityData
---@field AdditionalStates TArray<TSubclassOf<UState>>
local UStatusEffect_Freeze = {}



---@class UStatusEffect_FreezeCritical : UStatusEffect_Freeze
---@field ActivationTimeThreshold float
local UStatusEffect_FreezeCritical = {}



---@class UStatusEffect_FreezePlayer : UStatusEffect
---@field MovementSpeedRatio float
local UStatusEffect_FreezePlayer = {}



---@class UStatusEffect_Shock : UStatusEffect_Stats
local UStatusEffect_Shock = {}


---@class UStatusEffect_Stats : UStatusEffect
---@field BonusStatsPercentage FStatsLevelData
local UStatusEffect_Stats = {}



---@class UStepMatrixData : UDataAsset
---@field StepMatrix TMap<EStepHeavinessCategory, FSpeedModeToSurfaceMap>
---@field WallMatrix TMap<EStepHeavinessCategory, FSurfaceToStepMap>
---@field CeilingMatrix TMap<EStepHeavinessCategory, FSurfaceToStepMap>
local UStepMatrixData = {}



---@class UStoryLevelComponent : UActorComponent
---@field StoryLevel int32
local UStoryLevelComponent = {}

---@return FStoryLevelData
function UStoryLevelComponent:GetStoryLevelData() end
---@return int32
function UStoryLevelComponent:GetStoryLevel() end


---@class UStringBPFLibrary : UBlueprintFunctionLibrary
local UStringBPFLibrary = {}

---@param TimeInSeconds float
---@return FString
function UStringBPFLibrary:TimeSecondsToString(TimeInSeconds) end
---@param Array TArray<FString>
---@return TArray<FString>
function UStringBPFLibrary:Sort(Array) end
---@param Text FText
---@param Name FText
---@param Message FText
function UStringBPFLibrary:ProcessSubtitle(Text, Name, Message) end
---@param TimeInSeconds float
---@return FString
function UStringBPFLibrary:BossRushRecordTimeSecondsToString(TimeInSeconds) end


---@class UStructBPFLibrary : UBlueprintFunctionLibrary
local UStructBPFLibrary = {}

---@param Info FCurrencyTransactionInfos
---@param AlreadyBoughtCount int32
---@return FCurrencyValue
function UStructBPFLibrary:ToCurrencyValue(Info, AlreadyBoughtCount) end
---@param A FStatsLevelData
---@param B FStatsLevelData
---@return FStatsLevelData
function UStructBPFLibrary:StatsLevelData_Subtract(A, B) end
---@param A FStatsLevelData
---@param B FStatsLevelData
---@return FStatsLevelData
function UStructBPFLibrary:StatsLevelData_Add(A, B) end
---@param CharacterMovementComponent UCharacterMovementComponent
---@param MovementModeDataList TArray<FMovementModeData>
---@return boolean
function UStructBPFLibrary:MovementModeMatchAny(CharacterMovementComponent, MovementModeDataList) end
---@param CharacterMovementComponent UCharacterMovementComponent
---@param MovementModeData FMovementModeData
---@return boolean
function UStructBPFLibrary:MovementModeMatch(CharacterMovementComponent, MovementModeData) end
---@param ItemData FInventoryItemSkillData
---@return boolean
function UStructBPFLibrary:IsItemSkillDataValid(ItemData) end
---@param AbilityData FAbilityData
---@return boolean
function UStructBPFLibrary:IsAbilityDataValid(AbilityData) end
---@param ItemTutorialData FInventoryItemTutorialData
---@param PlayerControllerZion APlayerControllerZion
---@return UPlatformMediaSource
function UStructBPFLibrary:GetTutorialVideo(ItemTutorialData, PlayerControllerZion) end
---@param A FExtendedStatsData
---@param B FExtendedStatsData
---@return FExtendedStatsData
function UStructBPFLibrary:ExtendedStatsData_Subtract(A, B) end
---@param ExtendedStatsData FExtendedStatsData
function UStructBPFLibrary:ExtendedStatsData_ClampToZero(ExtendedStatsData) end
---@param A FExtendedStatsData
---@param B FExtendedStatsData
---@return FExtendedStatsData
function UStructBPFLibrary:ExtendedStatsData_Add(A, B) end


---@class UStunComponent : UActorComponent
---@field StunStates TArray<TSubclassOf<UState>>
---@field bUseKnockback boolean
---@field KnockbackData FKnockbackData
---@field OnStunSoundEvent UFMODEvent
local UStunComponent = {}

function UStunComponent:OnBreakRecovery() end


---@class USummonComponent : UActorComponent
---@field OnAutoSpiritEnabledDelegate FSummonComponentOnAutoSpiritEnabledDelegate
---@field OnAutoSpiritDisabledDelegate FSummonComponentOnAutoSpiritDisabledDelegate
---@field DefaultSpiritClassesToKeepLoaded TSet<TSubclassOf<ACharacterZionSpirit>>
---@field CachedSpirits TMap<TSubclassOf<ACharacterZionSpirit>, ACharacterZionSpirit>
---@field SpiritClassesToKeepLoaded TSet<TSubclassOf<ACharacterZionSpirit>>
local USummonComponent = {}

---@param SpiritClass TSubclassOf<ACharacterZionSpirit>
---@param CommandClasses TArray<TSubclassOf<UCommand>>
---@param SummonParameters FSpiritSummonParameters
---@param SourceCommand UCommand
---@return ACharacterZionSpirit
function USummonComponent:SummonSpiritFromCommand(SpiritClass, CommandClasses, SummonParameters, SourceCommand) end
---@param SpiritClass TSubclassOf<ACharacterZionSpirit>
---@param CommandClasses TArray<TSubclassOf<UCommand>>
---@param SummonParameters FSpiritSummonParameters
---@param InvokedByInputAction UInputAction
---@param CommandLayerType ECommandLayerType
---@param FallbackCommandSet UCommandSet
---@return ACharacterZionSpirit
function USummonComponent:SummonSpirit(SpiritClass, CommandClasses, SummonParameters, InvokedByInputAction, CommandLayerType, FallbackCommandSet) end
function USummonComponent:SetForceSummonNextToggle() end
function USummonComponent:OnGameMapChanged() end
---@param Pawn APawn
---@param OldController AController
---@param NewController AController
function USummonComponent:OnControllerChanged(Pawn, OldController, NewController) end
---@param SpiritClass TSubclassOf<ACharacterZionSpirit>
---@return boolean
function USummonComponent:IsSpiritSummoned(SpiritClass) end
---@param SpiritClass TSubclassOf<ACharacterZionSpirit>
---@return ACharacterZionSpirit
function USummonComponent:GetOrSpawnSpirit(SpiritClass) end
function USummonComponent:FlushCachedSpirits() end


---@class USummonIdleSpiritComponent : UActorComponent
---@field IdleDurationBeforeSummon float
---@field MinDurationBeforeSummon float
---@field MaxDurationBeforeSummon float
---@field MinDurationBetweenSummon float
---@field MaxDurationBetweenSummon float
---@field MinDurationBeforeAutoDismiss float
---@field MaxDurationBeforeAutoDismiss float
---@field MinOffsetToPlayer float
---@field OffsetToPlayerRange float
---@field MinOffsetBetweenSpirits float
---@field OffsetBetweenSpiritsRange float
---@field IgnoredInputActions TArray<UInputAction>
---@field CachedSpiritClasses TMap<ESkillSlot, FLoadedIdleSpiritClass>
---@field ActiveSpiritsData TArray<FSummonedIdleSpiritData>
local USummonIdleSpiritComponent = {}

---@param Command UCommand
function USummonIdleSpiritComponent:OnPostStartCommand(Command) end
---@param InputAction UInputAction
function USummonIdleSpiritComponent:OnJustTriggeredInputAction(InputAction) end
function USummonIdleSpiritComponent:OnGameMapChanged() end
---@param Pawn APawn
---@param OldController AController
---@param NewController AController
function USummonIdleSpiritComponent:OnControllerChanged(Pawn, OldController, NewController) end
function USummonIdleSpiritComponent:FlushCachedSpirits() end


---@class USummonRestPointSpiritComponent : UActorComponent
---@field MinOffsetToPlayer float
---@field MinOffsetBetweenSpirits float
---@field AptitudeSpirits_Map TMap<TSoftClassPtr<ACharacterZionSpirit>, FAptitudeArray>
---@field ExplorationSpiritSoftClass TSoftClassPtr<ACharacterZionSpirit>
---@field CachedSpirits TArray<TWeakObjectPtr<ACharacterZionSpirit>>
local USummonRestPointSpiritComponent = {}

function USummonRestPointSpiritComponent:StartSummonRestPointSpirits() end
function USummonRestPointSpiritComponent:RefreshRestPointSpirits() end
---@param Pawn APawn
---@param OldController AController
---@param NewController AController
function USummonRestPointSpiritComponent:OnControllerChanged(Pawn, OldController, NewController) end
function USummonRestPointSpiritComponent:FinishSummonRestPointSpirits() end


---@class USystemBPFLibrary : UBlueprintFunctionLibrary
local USystemBPFLibrary = {}

function USystemBPFLibrary:UpdateUITexturesForCurrentResolution() end
---@return boolean
function USystemBPFLibrary:IsXboxFamilyBuild() end
---@return boolean
function USystemBPFLibrary:IsUsing4KResolution() end
---@return boolean
function USystemBPFLibrary:IsSwitchBuild() end
---@return boolean
function USystemBPFLibrary:IsShippingBuild() end
---@return boolean
function USystemBPFLibrary:IsPlaystationBuild() end
---@return boolean
function USystemBPFLibrary:IsPlaystation5Build() end
---@return boolean
function USystemBPFLibrary:IsPlaystation4Build() end
---@return boolean
function USystemBPFLibrary:IsPCBuild() end
---@return boolean
function USystemBPFLibrary:IsNewGamePlusEnabled() end
---@return boolean
function USystemBPFLibrary:IsEditor() end
---@return boolean
function USystemBPFLibrary:IsEarlyAccessBuild() end
---@return boolean
function USystemBPFLibrary:IsDemoBuild() end
---@return boolean
function USystemBPFLibrary:IsCrashReportAllowedBuild() end
---@return boolean
function USystemBPFLibrary:IsBossRecollectionEnabled() end
---@param OutResolutions TArray<FIntPoint>
---@return boolean
function USystemBPFLibrary:GetWindowedResolutions(OutResolutions) end
---@param TextureGroup TextureGroup
---@return TArray<FString>
function USystemBPFLibrary:GetRuntimeTextureInfosFromGroup(TextureGroup) end
---@param Texture2D UTexture2D
---@return FString
function USystemBPFLibrary:GetRuntimeTextureInfos(Texture2D) end
---@return FString
function USystemBPFLibrary:GetRHIName() end
---@param MovieName FString
---@return FString
function USystemBPFLibrary:GetMoviePathFromMovieName(MovieName) end
---@return FString
function USystemBPFLibrary:GetGameVersion() end
---@return int32
function USystemBPFLibrary:GetGameBuildNumber() end
---@return EBuildPlatformType
function USystemBPFLibrary:GetBuildPlatformType() end
---@param PlatformMediaSource UPlatformMediaSource
---@return FString
function USystemBPFLibrary:GetBinkURLFromPlatformMediaSource(PlatformMediaSource) end
---@param bDeferToEndFrame boolean
function USystemBPFLibrary:FlushTextureStreaming(bDeferToEndFrame) end
---@return boolean
function USystemBPFLibrary:DoesGameVersionMatchesPakVersion() end


---@class UTargetChangeNotifierComponent : UActorComponent
---@field OnTargetChanged FTargetChangeNotifierComponentOnTargetChanged
local UTargetChangeNotifierComponent = {}



---@class UTimeDilationAsyncAction : UBlueprintAsyncActionBase
---@field OnFinish FTimeDilationAsyncActionOnFinish
local UTimeDilationAsyncAction = {}

---@param WorldContextObject UObject
---@param TimedDilation FTimedDilationData
---@return UTimeDilationAsyncAction
function UTimeDilationAsyncAction:TimeDilation(WorldContextObject, TimedDilation) end
function UTimeDilationAsyncAction:OnTimedProcessFinished() end


---@class UTimeManagerComponent : UActorComponent
local UTimeManagerComponent = {}

---@param Tag FName
function UTimeManagerComponent:RemoveDilation(Tag) end
function UTimeManagerComponent:RemoveAllTimeDilation() end
---@param Tag FName
---@return boolean
function UTimeManagerComponent:IsTimeDilationActive(Tag) end
---@param WorldContextObject UObject
---@return UTimeManagerComponent
function UTimeManagerComponent:Get(WorldContextObject) end
---@param TimeDilationOverride float
---@param Tag FName
function UTimeManagerComponent:AddDilation(TimeDilationOverride, Tag) end


---@class UUIComponent : UActorComponent
---@field bOverrideGaugeOriginComponent boolean
---@field GaugeOriginComponentRef FComponentReference
---@field GaugeOriginLocalOffset FVector
---@field GaugeOriginWorldOffset FVector
---@field WorldSpaceGaugeClass TSubclassOf<UUserWidgetWorldSpaceGauge>
---@field TextOriginLocalOffset FVector
---@field WorldSpaceTextDamageClass TSubclassOf<UUserWidgetWorldSpaceText>
---@field WorldSpaceTextCriticalDamageClass TSubclassOf<UUserWidgetWorldSpaceText>
---@field WorldSpaceTextAdvantageDamageClass TSubclassOf<UUserWidgetWorldSpaceText>
---@field WorldSpaceTextDisadvantageDamageClass TSubclassOf<UUserWidgetWorldSpaceText>
---@field WorldSpaceTextHealClass TSubclassOf<UUserWidgetWorldSpaceText>
local UUIComponent = {}

---@param Source AActor
---@param HealValue int32
function UUIComponent:OnReceivedHeal(Source, HealValue) end
---@param Source AActor
---@param DamageData FDamageData
function UUIComponent:OnReceivedDamageData(Source, DamageData) end
---@param Source AActor
---@param DamageValue int32
function UUIComponent:OnReceivedDamage(Source, DamageValue) end
function UUIComponent:OnPawnDeath() end


---@class UUMGBPFLibrary : UBlueprintFunctionLibrary
local UUMGBPFLibrary = {}

---@param WorldContextObject UObject
---@return boolean
function UUMGBPFLibrary:ShouldDisplayExtraUnavailableCharacters(WorldContextObject) end
---@return boolean
function UUMGBPFLibrary:ShouldDisplayCompletionWidget() end
---@param Target UImage
---@param Sprite UPaperSprite
---@param bMatchSize boolean
function UUMGBPFLibrary:SetBrushFromSprite(Target, Sprite, bMatchSize) end
---@param Target UImage
---@param SoftSprite TSoftObjectPtr<UPaperSprite>
---@param bMatchSize boolean
function UUMGBPFLibrary:SetBrushFromSoftSpriteAsync(Target, SoftSprite, bMatchSize) end
---@param Target UImage
---@param SoftSprite TSoftObjectPtr<UPaperSprite>
---@param bMatchSize boolean
function UUMGBPFLibrary:SetBrushFromSoftSprite(Target, SoftSprite, bMatchSize) end
function UUMGBPFLibrary:ResetAllNiagaraWidgets() end
---@param WorldContextObject UObject
---@param Key FKey
---@return boolean
function UUMGBPFLibrary:IsUIContextKey(WorldContextObject, Key) end
---@param WorldContextObject UObject
---@param Key FKey
---@return boolean
function UUMGBPFLibrary:IsUIContextAltKey(WorldContextObject, Key) end
---@param WorldContextObject UObject
---@param Key FKey
---@return boolean
function UUMGBPFLibrary:IsUIConfirmKey(WorldContextObject, Key) end
---@param WorldContextObject UObject
---@param Key FKey
---@return boolean
function UUMGBPFLibrary:IsUICancelKey(WorldContextObject, Key) end
---@param KeyEvent FKeyEvent
---@return boolean
function UUMGBPFLibrary:IsRepeatKeyEvent(KeyEvent) end
---@param WorldContextObject UObject
---@param Key FKey
---@param UIInputType EUIInputType
---@return boolean
function UUMGBPFLibrary:IsKeyUIInputType(WorldContextObject, Key, UIInputType) end
---@param WorldContextObject UObject
---@param Key FKey
---@param ActionInputType EActionInputType
---@return boolean
function UUMGBPFLibrary:IsActionInputTypeKey(WorldContextObject, Key, ActionInputType) end
function UUMGBPFLibrary:InvalidateAllWidgets() end
---@param UMGLayer EUMGLayer
---@return int32
function UUMGBPFLibrary:GetUMGZOrder(UMGLayer) end
---@param FocusEvent FFocusEvent
---@return EFocusCause
function UUMGBPFLibrary:GetFocusCause(FocusEvent) end
---@param WorldContextObject UObject
---@param ItemType EInventoryItemType
---@return int32
function UUMGBPFLibrary:GetCompletionPercentageForItemType(WorldContextObject, ItemType) end
---@param Widget UUserWidget
---@param UMGLayer EUMGLayer
function UUMGBPFLibrary:AddToViewportAtLayer(Widget, UMGLayer) end


---@class UUMGSubsystem : UGameInstanceSubsystem
---@field OnSetSubtitle FUMGSubsystemOnSetSubtitle
local UUMGSubsystem = {}

---@param LockSource UUserWidget
function UUMGSubsystem:UnlockNavigation(LockSource) end
---@param Footer UUserWidgetFooter
function UUMGSubsystem:SetActiveFooter(Footer) end
---@param ExplanationWidget UUserWidgetExplanation
function UUMGSubsystem:SetActiveExplanationWidget(ExplanationWidget) end
---@param bGamepad boolean
function UUMGSubsystem:RestoreDefaultBindings(bGamepad) end
function UUMGSubsystem:ResetNavigationLocks() end
---@param UIInputType EUIInputType
---@param Key FKey
function UUMGSubsystem:RemapKey(UIInputType, Key) end
function UUMGSubsystem:RefreshNavigationLockState() end
---@param LockSource UUserWidget
function UUMGSubsystem:LockNavigation(LockSource) end
---@return boolean
function UUMGSubsystem:IsNavigationLocked() end
---@return boolean
function UUMGSubsystem:IsFocusingFromMouse() end
---@return UUserWidgetFooter
function UUMGSubsystem:GetActiveFooter() end
---@return UUserWidgetExplanation
function UUMGSubsystem:GetActiveExplanationWidget() end
---@param WorldContextObject UObject
---@return UUMGSubsystem
function UUMGSubsystem:Get(WorldContextObject) end
function UUMGSubsystem:ClearActiveFooter() end


---@class UUniformGridPanelZion : UUniformGridPanel
---@field Orientation EOrientation
---@field ElementCountPerRow int32
---@field ContentHorizontalAlignment EHorizontalAlignment
---@field ContentVerticalAlignment EVerticalAlignment
local UUniformGridPanelZion = {}

---@return int32
function UUniformGridPanelZion:GetElementCountPerRow() end
---@param Content UWidget
function UUniformGridPanelZion:AddChildAuto(Content) end


---@class UUserWidgetAchievementNotificationHolder : UUserWidgetZion
---@field bIsProcessing boolean
---@field AchievementsQueue TArray<FName>
local UUserWidgetAchievementNotificationHolder = {}

---@param AchievementID FName
function UUserWidgetAchievementNotificationHolder:QueueAchievementNotification(AchievementID) end
---@param bVisible boolean
function UUserWidgetAchievementNotificationHolder:OnRefreshVisibility(bVisible) end
---@param AchievementID FName
function UUserWidgetAchievementNotificationHolder:OnLaunchAchievementNotification(AchievementID) end
function UUserWidgetAchievementNotificationHolder:OnDisplayAchievementNotificationsChanged() end
function UUserWidgetAchievementNotificationHolder:LaunchNextNotification() end


---@class UUserWidgetButton : UUserWidgetZion
---@field OnFocused FUserWidgetButtonOnFocused
---@field OnPressedConfirm FUserWidgetButtonOnPressedConfirm
local UUserWidgetButton = {}

---@param bFocused boolean
function UUserWidgetButton:OnFocusStateChanged(bFocused) end


---@class UUserWidgetCurrencyCounter : UUserWidgetZion
---@field CurrencyType ECurrencyType
---@field AccumulatingCurrencyDuration float
---@field AddingCurrencyDurationCurve FRuntimeFloatCurve
---@field WaitingDuration float
local UUserWidgetCurrencyCounter = {}

function UUserWidgetCurrencyCounter:WaitingTimerFinished() end
function UUserWidgetCurrencyCounter:StartAddingCurrency() end
---@param InAccumulatedCurrency int32
function UUserWidgetCurrencyCounter:StartAccumulatingCurrency(InAccumulatedCurrency) end
---@param bRefreshCurrencyText boolean
function UUserWidgetCurrencyCounter:Show(bRefreshCurrencyText) end
---@param Currency int32
function UUserWidgetCurrencyCounter:SetCurrencyText(Currency) end
---@param Currency int32
function UUserWidgetCurrencyCounter:SetAccumulatedCurrencyText(Currency) end
function UUserWidgetCurrencyCounter:OnStartAccumulatingCurrency() end
function UUserWidgetCurrencyCounter:OnShow() end
---@param Currency int32
function UUserWidgetCurrencyCounter:OnSetCurrencyText(Currency) end
---@param Currency int32
function UUserWidgetCurrencyCounter:OnSetAccumulatedCurrencyText(Currency) end
function UUserWidgetCurrencyCounter:OnHide() end
function UUserWidgetCurrencyCounter:OnAccumulatingCurrencyTimerFinished() end
function UUserWidgetCurrencyCounter:Hide() end
---@return ECurrencyType
function UUserWidgetCurrencyCounter:GetCurrencyType() end
---@return int32
function UUserWidgetCurrencyCounter:GetCurrencyFromInventory() end
---@param InCurrencyType ECurrencyType
---@param AddedCount int32
---@param PreviousCount int32
function UUserWidgetCurrencyCounter:AddCurrency(InCurrencyType, AddedCount, PreviousCount) end
function UUserWidgetCurrencyCounter:AccumulatingCurrencyTimerFinished() end


---@class UUserWidgetCursor : UUserWidget
---@field DPIScaler UScaleBox
local UUserWidgetCursor = {}

---@param bVisible boolean
function UUserWidgetCursor:SetVisible(bVisible) end
function UUserWidgetCursor:OnCursorVisibilityChanged() end


---@class UUserWidgetDialogOk : UUserWidgetZion
---@field OnOK FUserWidgetDialogOkOnOK
---@field Message FText
---@field ButtonOK FText
local UUserWidgetDialogOk = {}



---@class UUserWidgetDialogYesNo : UUserWidgetZion
---@field OnYES FUserWidgetDialogYesNoOnYES
---@field OnNO FUserWidgetDialogYesNoOnNO
---@field Message FText
---@field ButtonYES FText
---@field ButtonNO FText
local UUserWidgetDialogYesNo = {}



---@class UUserWidgetEnemyUI : UUserWidgetZion
local UUserWidgetEnemyUI = {}

---@param bImmediate boolean
function UUserWidgetEnemyUI:OnRequestRemoveFromParent(bImmediate) end
---@return APawn
function UUserWidgetEnemyUI:GetPawn() end
---@return FEnemyData
function UUserWidgetEnemyUI:GetEnemyData() end
---@return AAIController
function UUserWidgetEnemyUI:GetController() end


---@class UUserWidgetEvent : UUserWidgetZion
local UUserWidgetEvent = {}

---@return boolean
function UUserWidgetEvent:ShouldUsePreSkipFadeOut() end
---@return boolean
function UUserWidgetEvent:ShouldUsePostSkipFadeIn() end
---@param SpeakerName FText
---@param Text FText
---@param Duration float
function UUserWidgetEvent:OnTalk(SpeakerName, Text, Duration) end
function UUserWidgetEvent:OnRequestRemoveFromParent() end
---@param SpeakerName FText
---@param Text FText
---@param Choices TArray<FText>
function UUserWidgetEvent:OnPlayChoices(SpeakerName, Text, Choices) end
function UUserWidgetEvent:OnNotifyEventStartPlaying() end
---@return boolean
function UUserWidgetEvent:IsEventAlreadySeen() end
---@return UEventPlayer
function UUserWidgetEvent:GetEventPlayer() end
function UUserWidgetEvent:CompleteTalk() end
---@param SelectedChoiceIndex int32
function UUserWidgetEvent:CompleteChoices(SelectedChoiceIndex) end
---@return boolean
function UUserWidgetEvent:CanSkipEvent() end
---@return boolean
function UUserWidgetEvent:CanAutoSkipEvent() end


---@class UUserWidgetExplanation : UUserWidgetZion
---@field RefreshableRichTextBlock URefreshableRichTextBlock
local UUserWidgetExplanation = {}

---@param Text FText
---@param InputElements TArray<FRichTextInputElement>
---@param StringElements TArray<FString>
function UUserWidgetExplanation:SetExplanationText(Text, InputElements, StringElements) end


---@class UUserWidgetExtraDialogGalleryImage : UUserWidgetZion
---@field GalleryImage UImageZion
---@field MouseMoveSpeed FVector2D
---@field MoveSpeed float
---@field XMinMax FVector2D
---@field YMinMax FVector2D
local UUserWidgetExtraDialogGalleryImage = {}

function UUserWidgetExtraDialogGalleryImage:SetupImageMinMaxPositions() end
---@param NewImagePosition FVector2D
function UUserWidgetExtraDialogGalleryImage:PlaceImage(NewImagePosition) end
---@param InMoveDelta FVector2D
function UUserWidgetExtraDialogGalleryImage:MoveImage(InMoveDelta) end
---@return float
function UUserWidgetExtraDialogGalleryImage:GetCurrentScaleFactor() end
function UUserWidgetExtraDialogGalleryImage:ClearInputs() end
function UUserWidgetExtraDialogGalleryImage:Clear() end


---@class UUserWidgetExtraDialogSpineViewer : UUserWidgetZion
---@field SpineViewerLocationContainer UOverlay
---@field SceneContainer UOverlay
---@field SpineWidget USpineWidget
---@field bCanChangeCharacter boolean
---@field CharacterItemData FInventoryItemGenericInfoData
---@field DefaultNormalBlendMaterial UMaterialInterface
---@field DefaultScreenBlendMaterial UMaterialInterface
---@field MouseMoveSpeed FVector2D
---@field MoveSpeed float
---@field DefaultXMinMax FVector2D
---@field DefaultYMinMax FVector2D
---@field XMinMax FVector2D
---@field YMinMax FVector2D
---@field SpineViewerCurrentLocation FVector2D
local UUserWidgetExtraDialogSpineViewer = {}

---@param MinScaleFactor float
function UUserWidgetExtraDialogSpineViewer:SetupMinMaxPositions(MinScaleFactor) end
function UUserWidgetExtraDialogSpineViewer:ResetSpineViewerToDefaultLocation() end
function UUserWidgetExtraDialogSpineViewer:ReplaceSpineMaterials() end
---@param AnimationNameData FAnimationNameData
---@param RootMotionMode EExtraAnimationRootMotionMode
function UUserWidgetExtraDialogSpineViewer:PlaySpineAnimation(AnimationNameData, RootMotionMode) end
---@param AdditionalAnimations TArray<FString>
function UUserWidgetExtraDialogSpineViewer:PlayAdditionalAnimations(AdditionalAnimations) end
---@param TrackEntry UTrackEntry
function UUserWidgetExtraDialogSpineViewer:OnSpineAnimationFinished(TrackEntry) end
---@param Skeleton USpineWidget
function UUserWidgetExtraDialogSpineViewer:OnAfterUpdateWorldTransform(Skeleton) end
function UUserWidgetExtraDialogSpineViewer:HandleFocusAfterMouseClick() end
function UUserWidgetExtraDialogSpineViewer:ClearSpineAnimation() end
function UUserWidgetExtraDialogSpineViewer:ClearInputs() end
---@return boolean
function UUserWidgetExtraDialogSpineViewer:CanMoveSpineViewer() end


---@class UUserWidgetFade : UUserWidgetZion
local UUserWidgetFade = {}

---@param FadeParameters FFadeParameters
function UUserWidgetFade:SetupFadeIn(FadeParameters) end
function UUserWidgetFade:NotifyFadeOutFinished() end
function UUserWidgetFade:NotifyFadeInFinished() end
---@param FadeParameters FFadeParameters
function UUserWidgetFade:LaunchFadeOut(FadeParameters) end
---@param FadeParameters FFadeParameters
function UUserWidgetFade:LaunchFadeIn(FadeParameters) end


---@class UUserWidgetFieldTalkHolder : UUserWidgetZion
local UUserWidgetFieldTalkHolder = {}

---@param FieldTalkEntry FFieldTalkEntry
function UUserWidgetFieldTalkHolder:OnShowText(FieldTalkEntry) end
function UUserWidgetFieldTalkHolder:OnLaunchFieldTalk() end
---@param bSkipActiveFieldTalk boolean
function UUserWidgetFieldTalkHolder:OnFinishFieldTalk(bSkipActiveFieldTalk) end
---@return boolean
function UUserWidgetFieldTalkHolder:IsUIReady() end


---@class UUserWidgetFooter : UUserWidgetZion
local UUserWidgetFooter = {}

---@param FooterDataList TArray<FFooterData>
function UUserWidgetFooter:Setup(FooterDataList) end
---@param bVisible boolean
function UUserWidgetFooter:SetEntriesVisible(bVisible) end
---@param bTemporaryOnly boolean
function UUserWidgetFooter:ClearEntries(bTemporaryOnly) end
---@param FooterData FFooterData
---@param bTemporary boolean
function UUserWidgetFooter:AddEntry(FooterData, bTemporary) end
---@param FooterDataList TArray<FFooterData>
---@param bTemporary boolean
function UUserWidgetFooter:AddEntries(FooterDataList, bTemporary) end


---@class UUserWidgetGameMenu : UUserWidgetZion
---@field PageSwitcher UWidgetSwitcher
---@field bAtRestPoint boolean
---@field bAllowEquipmentSwitch boolean
---@field PageDataList TArray<FGameMenuPageData>
local UUserWidgetGameMenu = {}

---@param NewPageIndex int32
function UUserWidgetGameMenu:OnPageChanged(NewPageIndex) end
---@param RestPointID FName
---@param RestPointData FRestPointData
function UUserWidgetGameMenu:OnFastTravelRequested(RestPointID, RestPointData) end
---@param RestPointID FName
---@param RestPointData FRestPointData
function UUserWidgetGameMenu:NotifyFastTravelRequested(RestPointID, RestPointData) end
---@return boolean
function UUserWidgetGameMenu:IsAtRestPoint() end
---@param PageIndex int32
function UUserWidgetGameMenu:GoToPage(PageIndex) end
---@return int32
function UUserWidgetGameMenu:GetPageCount() end
---@return UUserWidgetFooter
function UUserWidgetGameMenu:GetFooter() end
---@return int32
function UUserWidgetGameMenu:GetCurrentPageIndex() end
---@return boolean
function UUserWidgetGameMenu:CanSwitchEquipment() end


---@class UUserWidgetGameMenu_Page : UUserWidgetZion
---@field DefaultFooterEntries TArray<FFooterData>
local UUserWidgetGameMenu_Page = {}

function UUserWidgetGameMenu_Page:OnPageOpened() end
function UUserWidgetGameMenu_Page:OnPageClosed() end
---@return boolean
function UUserWidgetGameMenu_Page:IsAtRestPoint() end
---@return UUserWidgetGameMenu
function UUserWidgetGameMenu_Page:GetGameMenu() end
---@return UUserWidgetFooter
function UUserWidgetGameMenu_Page:GetFooter() end
---@return TArray<FFooterData>
function UUserWidgetGameMenu_Page:GetDefaultFooterEntries() end
---@return boolean
function UUserWidgetGameMenu_Page:CanSwitchEquipment() end


---@class UUserWidgetItemGet : UUserWidgetZion
---@field ItemDataHandle FDataTableRowHandle
---@field Count int32
local UUserWidgetItemGet = {}



---@class UUserWidgetLowHPFeedback : UUserWidgetZion
---@field Visual UWidget
---@field LerpSpeed float
local UUserWidgetLowHPFeedback = {}

---@param Actor AActor
function UUserWidgetLowHPFeedback:BindToActor(Actor) end


---@class UUserWidgetMap : UUserWidgetZion
---@field RetainerBox URetainerBox
---@field ScaleBox UScaleBox
---@field MapHolder UCanvasPanel
---@field MapAreaHolder UCanvasPanel
---@field MapCursor UUserWidgetMapCursor
---@field PlayerIcon UUserWidgetMapIcon_Player
---@field MapLegend UUserWidgetMapLegend
---@field RestPointList UUserWidgetRestPointList
---@field WBP_PlayerTrail UUserWidgetPlayerTrail
---@field StoryEventIconsHolder UCanvasPanel
---@field StoryEventDirectionsHolder UCanvasPanel
---@field MapAreaTransitionsHolder UCanvasPanel
---@field CustomMarkerIconsHolder UCanvasPanel
---@field bShowAllMapIcons boolean
---@field MouseWheelSpeed float
---@field MouseMoveSpeed FVector2D
---@field ZoomSpeed float
---@field ZoomMin float
---@field ZoomDefault float
---@field ZoomMax float
---@field HideIconsZoomThreshold float
---@field ZoomScaledIconsScaleMin float
---@field ZoomScaledIconsScaleMax float
---@field MoveSpeed float
---@field MoveSpeedFactors TArray<float>
---@field MoveSpeedFactorRampUpDuration float
---@field MoveSpeedFactorRampUpTime float
---@field XMinMax FVector2D
---@field YMinMax FVector2D
---@field CompletionPercentage int32
---@field StickToIconBlendSpeed float
---@field WidgetStoryEventIconClass TSoftClassPtr<UUserWidgetMapIcon_StoryEvent>
---@field WidgetStoryEventDirectionClass TSoftClassPtr<UUserWidgetZionShowHide>
---@field WidgetStoryEventDirectionShowOffset FVector2D
---@field MapAreaWidgets TArray<UUserWidgetMapArea>
---@field CachedMapAreaTransitionWidgets TArray<UUserWidgetMapTransition>
---@field StoryEventsWithDirections TArray<FWidgetMapStoryEventDirectionData>
---@field CustomMarkerWidgets TArray<UUserWidgetMapIcon_CustomMarker>
---@field RemoveAllCustomMarkersHoldDuration float
local UUserWidgetMap = {}

---@param InZoomDelta float
function UUserWidgetMap:Zoom(InZoomDelta) end
function UUserWidgetMap:ShowAllMapIcons() end
---@param NewZoomScale float
function UUserWidgetMap:SetNewZoomScale(NewZoomScale) end
---@param CustomMarkerIcon UUserWidgetMapIcon_CustomMarker
function UUserWidgetMap:RemoveCustomMarkerUnderCursor(CustomMarkerIcon) end
---@param bRestPointListOpened boolean
---@param bInstant boolean
function UUserWidgetMap:OnToggleRestPointList(bRestPointListOpened, bInstant) end
function UUserWidgetMap:OnRestPointListInitialized() end
---@param MapIcon UUserWidgetMapIcon
---@param bInstant boolean
function UUserWidgetMap:OnResetTargetedIcon(MapIcon, bInstant) end
---@param MapArea UUserWidgetMapArea
function UUserWidgetMap:OnResetMapAreaUnderCursor(MapArea) end
---@param CurrentHoldingTime float
---@param HoldingDuration float
---@param Alpha float
function UUserWidgetMap:OnRefreshRemoveAllCustomMarkersHoldTime(CurrentHoldingTime, HoldingDuration, Alpha) end
function UUserWidgetMap:OnRefreshCustomMarkerAvailableCount() end
---@param MapIcon UUserWidgetMapIcon
function UUserWidgetMap:OnReachedTargetedIcon(MapIcon) end
function UUserWidgetMap:OnNoCustomMarkerAvailable() end
---@param MapArea UUserWidgetMapArea
function UUserWidgetMap:OnChangeMapAreaUnderCursor(MapArea) end
---@param Percentage int32
function UUserWidgetMap:OnCalculateMapCompletionPercentage(Percentage) end
---@param InMoveDelta FVector2D
function UUserWidgetMap:MoveMap(InMoveDelta) end
---@return boolean
function UUserWidgetMap:IsRestPointListOpened() end
---@param MapAreaWidget UUserWidgetMapArea
---@return boolean
function UUserWidgetMap:IsMapAreaVisited(MapAreaWidget) end
---@return boolean
function UUserWidgetMap:HasValidData() end
---@return int32
function UUserWidgetMap:GetMapCompletionPercentage() end
---@return int32
function UUserWidgetMap:GetCustomMarkerAvailableCount() end
---@param Icon UUserWidgetMapIcon
function UUserWidgetMap:ForceTargetIcon(Icon) end
function UUserWidgetMap:DebugMarkAllMapZonesAsVisited() end
function UUserWidgetMap:DebugMarkAllMapIconsAsSeen() end
function UUserWidgetMap:ClearInputs() end
function UUserWidgetMap:Clear() end


---@class UUserWidgetMapArea : UUserWidgetZion
---@field Map UImage
---@field ZonesHolder UCanvasPanel
---@field IconsHolder UCanvasPanel
---@field ZoomScaled_IconsHolder UCanvasPanel
---@field MapTransitionsHolder UCanvasPanel
---@field bIconsRequireRealtimeCheck boolean
---@field MapRowName FName
---@field CachedMapIcons TArray<UUserWidgetMapIcon>
---@field VisibleMapIconTypes TSet<EMapIconType>
---@field CachedMapTransitions TArray<UUserWidgetMapTransition>
local UUserWidgetMapArea = {}

function UUserWidgetMapArea:ShowAllMapAreaIcons() end
---@param ZoneVisited AStaticVolume_Zone
function UUserWidgetMapArea:OnZoneVisited(ZoneVisited) end
---@return int32
function UUserWidgetMapArea:GetZoneCount() end
---@return FName
function UUserWidgetMapArea:GetMapName() end
---@return int32
function UUserWidgetMapArea:GetCompletionPercentage() end
---@return int32
function UUserWidgetMapArea:GetClearedZoneCount() end


---@class UUserWidgetMapCursor : UUserWidgetZion
local UUserWidgetMapCursor = {}


---@class UUserWidgetMapIcon : UUserWidgetZion
---@field Icon UImage
---@field ParentMapArea UUserWidgetMapArea
---@field DependentIcons TArray<UUserWidgetMapIcon>
---@field CanvasAnchors FAnchors
---@field CanvasAlignment FVector2D
---@field GenerationType EMapIconGenerationType
---@field bUseIconLocationOffset boolean
---@field IconLocationOffset FVector2D
---@field bUseIconLocationLocalOffset boolean
---@field IconLocationLocalOffset FVector2D
---@field bUseIconAngleOffset boolean
---@field IconAngleOffset float
---@field WidgetMapIconDetails_Class TSubclassOf<UUserWidgetMapIconDetails>
---@field IconDisplayName FText
---@field IconType EMapIconType
---@field bRequireAptitude boolean
---@field AptitudeRequired EAptitudeType
---@field bRequireGameplayCondition boolean
---@field ConditionNotSatisfiedIcon TSoftObjectPtr<UPaperSprite>
---@field ConditionSatisfiedIcon TSoftObjectPtr<UPaperSprite>
---@field ConditionChecker FGameplayConditionChecker
local UUserWidgetMapIcon = {}

function UUserWidgetMapIcon:ShowIcon() end
---@param NewIcon TSoftObjectPtr<UPaperSprite>
---@param bMatchSize boolean
function UUserWidgetMapIcon:SetIconFromSoftSprite(NewIcon, bMatchSize) end
---@param Inventory UInventory
---@param ItemId FName
---@param AddedCount int32
function UUserWidgetMapIcon:OnItemAdded(Inventory, ItemId, AddedCount) end
function UUserWidgetMapIcon:OnAptitudesChanged() end
function UUserWidgetMapIcon:HideIcon() end
---@return FText
function UUserWidgetMapIcon:GetWidgetIconDisplayName() end
---@return TSubclassOf<UUserWidgetMapIconDetails>
function UUserWidgetMapIcon:GetWidgetIconDetailsClass() end
---@return EMapIconType
function UUserWidgetMapIcon:GetMapIconType() end
---@return TArray<FDataTableRowHandle>
function UUserWidgetMapIcon:GetItemsRequired() end
---@return EAptitudeType
function UUserWidgetMapIcon:GetAptitudeRequired() end


---@class UUserWidgetMapIconDetails : UUserWidgetZion
---@field WidgetMapIcon UUserWidgetMapIcon
---@field bIsRestPointListOpened boolean
local UUserWidgetMapIconDetails = {}

function UUserWidgetMapIconDetails:ShowIconDetails() end
---@param bIsOpened boolean
---@return boolean
function UUserWidgetMapIconDetails:SetIsRestPointListOpened(bIsOpened) end
---@param bInstant boolean
function UUserWidgetMapIconDetails:RemoveIconDetails(bInstant) end
function UUserWidgetMapIconDetails:OnShowIconDetails() end
---@param bInstant boolean
function UUserWidgetMapIconDetails:OnRemoveIconDetails(bInstant) end


---@class UUserWidgetMapIcon_Actor : UUserWidgetMapIcon
---@field ActorData FClearActorData
---@field bOverrideCachedWidgetSize boolean
---@field CachedWidgetSize FVector2D
---@field bOverrideClearFogOfWarSize boolean
---@field ClearFogOfWarPositionOffset FVector2D
---@field ClearFogOfWarSizeOverride FVector2D
local UUserWidgetMapIcon_Actor = {}

---@param InActorData FClearActorData
function UUserWidgetMapIcon_Actor:SetActorData(InActorData) end
---@return FClearActorData
function UUserWidgetMapIcon_Actor:GetActorData() end


---@class UUserWidgetMapIcon_Clearable : UUserWidgetMapIcon_Actor
local UUserWidgetMapIcon_Clearable = {}

function UUserWidgetMapIcon_Clearable:ClearIcon() end


---@class UUserWidgetMapIcon_CustomMarker : UUserWidgetMapIcon
---@field CustomMarkerData FMapCustomMarkerIconData
local UUserWidgetMapIcon_CustomMarker = {}

---@param NewScale float
function UUserWidgetMapIcon_CustomMarker:SetScale(NewScale) end
---@param NewScale float
function UUserWidgetMapIcon_CustomMarker:OnSetScale(NewScale) end
---@param NewCustomMarkerData FMapCustomMarkerIconData
function UUserWidgetMapIcon_CustomMarker:OnSetCustomMarkerData(NewCustomMarkerData) end
---@return FMapCustomMarkerIconData
function UUserWidgetMapIcon_CustomMarker:GetCustomMarkerIconData() end
---@return int32
function UUserWidgetMapIcon_CustomMarker:GetCustomMarkerDisplayID() end


---@class UUserWidgetMapIcon_Player : UUserWidgetMapIcon
local UUserWidgetMapIcon_Player = {}


---@class UUserWidgetMapIcon_PlayerTrail : UUserWidgetMapIcon
local UUserWidgetMapIcon_PlayerTrail = {}


---@class UUserWidgetMapIcon_RestPoint : UUserWidgetMapIcon_Actor
---@field RestPointData FMapRestPointData
local UUserWidgetMapIcon_RestPoint = {}

---@param InRestPointData FMapRestPointData
function UUserWidgetMapIcon_RestPoint:SetRestPointData(InRestPointData) end
---@return FMapRestPointData
function UUserWidgetMapIcon_RestPoint:GetRestPointData() end


---@class UUserWidgetMapIcon_StoryEvent : UUserWidgetMapIcon
local UUserWidgetMapIcon_StoryEvent = {}


---@class UUserWidgetMapIcon_Teleport : UUserWidgetMapIcon_Actor
---@field MapTransitionHandle FDataTableRowHandle
---@field StartWorldLocation FVector
---@field DestinationWorldLocation FVector
---@field ToDestination_MapSpace FVector2D
local UUserWidgetMapIcon_Teleport = {}

---@return FVector2D
function UUserWidgetMapIcon_Teleport:GetToDestination_MapSpace() end
---@return FVector
function UUserWidgetMapIcon_Teleport:GetStartWorldLocation() end
---@return FDataTableRowHandle
function UUserWidgetMapIcon_Teleport:GetMapTransitionHandle() end
---@return FVector
function UUserWidgetMapIcon_Teleport:GetDestinationWorldLocation() end


---@class UUserWidgetMapLegend : UUserWidgetZionShowHide
---@field IgnoreVisibilityCheckIconTypes TSet<EMapIconType>
local UUserWidgetMapLegend = {}

---@param VisibleIconTypes TSet<EMapIconType>
function UUserWidgetMapLegend:OnLegendInitialized(VisibleIconTypes) end


---@class UUserWidgetMapTransition : UUserWidgetZion
---@field MapTransitionHandle FDataTableRowHandle
---@field bShowStartPoint boolean
---@field bShowEndPoint boolean
---@field LinkSize float
---@field Angle float
local UUserWidgetMapTransition = {}

function UUserWidgetMapTransition:ShowMapTransition() end
---@param NewScale float
function UUserWidgetMapTransition:SetScale(NewScale) end
---@param bVisible boolean
function UUserWidgetMapTransition:SetIconsVisibility(bVisible) end
---@param NewScale float
function UUserWidgetMapTransition:OnSetScale(NewScale) end
---@param bVisible boolean
function UUserWidgetMapTransition:OnSetIconsVisibility(bVisible) end
function UUserWidgetMapTransition:HideMapTransition() end


---@class UUserWidgetMapZone : UUserWidgetZion
---@field CanvasAnchors FAnchors
---@field CanvasAlignment FVector2D
---@field bCanvasAutoSize boolean
---@field ZoneActorData FClearActorData
---@field ZoneLevelName FName
---@field ParentMapArea UUserWidgetMapArea
local UUserWidgetMapZone = {}

function UUserWidgetMapZone:VisitZone() end
function UUserWidgetMapZone:ShowZone() end
function UUserWidgetMapZone:RevealZone() end
---@return boolean
function UUserWidgetMapZone:IsCleared() end
function UUserWidgetMapZone:HideZone() end
function UUserWidgetMapZone:CompleteZone() end


---@class UUserWidgetMinimap : UUserWidgetZion
---@field DisplayHolder UCanvasPanel
---@field RetainerBox URetainerBox
---@field MinimapHolder UCanvasPanel
---@field MinimapWidgetHolder UOverlay
---@field PlayerIcon UUserWidgetMapIcon_Player
---@field StoryEventIconsHolder UCanvasPanel
---@field StoryEventDirectionsHolder UCanvasPanel
---@field WBP_PlayerTrail UUserWidgetPlayerTrail
---@field CustomMarkerIconsHolder UCanvasPanel
---@field CurrentWidgetMapArea UUserWidgetMapArea
---@field Zoom float
---@field WidgetStoryEventIconClass TSoftClassPtr<UUserWidgetMapIcon_StoryEvent>
---@field WidgetStoryEventDirectionClass TSoftClassPtr<UUserWidgetZionShowHide>
---@field WidgetStoryEventDirectionShowOffset FVector2D
---@field StoryEventsWithDirections TArray<FWidgetMapStoryEventDirectionData>
---@field FullscreenAnchors FAnchors
---@field FullscreenPosition FVector2D
---@field FullscreenAlignment FVector2D
---@field FullscreenRetainerBoxSize FVector2D
---@field FullscreenOpacity float
local UUserWidgetMinimap = {}

function UUserWidgetMinimap:RequestRender() end
function UUserWidgetMinimap:OnStoryLevelChanged() end
function UUserWidgetMinimap:OnRefreshMinimap() end
function UUserWidgetMinimap:OnGameMapChanged() end
function UUserWidgetMinimap:InitializeDefaultDisplayValues() end
---@return boolean
function UUserWidgetMinimap:HasValidData() end
function UUserWidgetMinimap:ChangeDisplayMode() end


---@class UUserWidgetNotificationHolder : UUserWidgetZion
---@field ScrollContainer UPanelWidget
---@field ScrollDuration float
local UUserWidgetNotificationHolder = {}

---@param NotificationData FNotificationData
function UUserWidgetNotificationHolder:OnLaunchNotification(NotificationData) end
function UUserWidgetNotificationHolder:OnHide() end
function UUserWidgetNotificationHolder:OnDisplayHolder() end
---@return boolean
function UUserWidgetNotificationHolder:IsUIReady() end


---@class UUserWidgetPlayTimeClock : UUserWidgetZion
---@field PlayTimeClock UTextBlock
---@field PlayTimeText FText
local UUserWidgetPlayTimeClock = {}

function UUserWidgetPlayTimeClock:UpdatePlayTime() end


---@class UUserWidgetPlayerTrail : UUserWidgetZion
---@field PlayerTrailIconsHolder UCanvasPanel
---@field bDisplayPlayerTrailIcon boolean
---@field bRegisterEvents boolean
---@field MaxPlayerTrailIconCount int32
---@field PlayerTrailIconOpacityChangeCount int32
---@field PlayerTrailIconMinOpacity float
---@field PlayerTrailIconMaxOpacity float
---@field PlayerTrailIconMinScale float
---@field PlayerTrailIconMaxScale float
---@field WidgetPlayerTrailIconClass TSubclassOf<UUserWidgetMapIcon_PlayerTrail>
---@field CachedPlayerTrailIcons TArray<UUserWidgetMapIcon_PlayerTrail>
local UUserWidgetPlayerTrail = {}



---@class UUserWidgetPlayerUI : UUserWidgetZion
---@field WBP_FieldTalkHolder UUserWidgetFieldTalkHolder
---@field WBP_Minimap UUserWidgetMinimap
local UUserWidgetPlayerUI = {}

function UUserWidgetPlayerUI:TriggerAnimation_HealFailure_NoHeal() end
function UUserWidgetPlayerUI:TriggerAnimation_HealFailure_FullHP() end
function UUserWidgetPlayerUI:ShowUI() end
function UUserWidgetPlayerUI:RefreshSPVisibility() end
function UUserWidgetPlayerUI:RefreshMinimap() end
function UUserWidgetPlayerUI:RefreshHealVisibility() end
function UUserWidgetPlayerUI:RefreshCustomMarkers() end
---@param bVisible boolean
function UUserWidgetPlayerUI:OnRefreshPlayerUIVisibility(bVisible) end
---@param Opacity float
function UUserWidgetPlayerUI:OnRefreshLowHPFeedbackOpacity(Opacity) end
function UUserWidgetPlayerUI:OnPlayerInputUnlocked() end
function UUserWidgetPlayerUI:OnPlayerInputLocked() end
function UUserWidgetPlayerUI:OnLowHPFeedbackOpacityChanged() end
function UUserWidgetPlayerUI:OnDisplayPlayerUIChanged() end
---@param bInstant boolean
function UUserWidgetPlayerUI:HideUI(bInstant) end
---@return APawn
function UUserWidgetPlayerUI:GetPawn() end
---@return UUserWidgetMinimap
function UUserWidgetPlayerUI:GetMinimapWidget() end
---@return UUserWidgetFieldTalkHolder
function UUserWidgetPlayerUI:GetFieldTalkHolder() end
---@return APlayerController
function UUserWidgetPlayerUI:GetController() end
---@return boolean
function UUserWidgetPlayerUI:CanShowSP() end
---@return boolean
function UUserWidgetPlayerUI:CanShowHeal() end


---@class UUserWidgetRestPointList : UUserWidgetZion
---@field OnRestPointEntryFocused FUserWidgetRestPointListOnRestPointEntryFocused
---@field OnRestPointEntryPressed FUserWidgetRestPointListOnRestPointEntryPressed
---@field RestPointListHolder UVerticalBox
---@field RestPointListMapAreaSoftClass TSoftClassPtr<UUserWidgetRestPointListMapArea>
---@field RestPointListMapAreas TArray<UUserWidgetRestPointListMapArea>
---@field RestPointListData TArray<FRestPointListData>
local UUserWidgetRestPointList = {}

---@param NewMapAreaIndex int32
---@return int32
function UUserWidgetRestPointList:SetCurrentMapAreaIndex(NewMapAreaIndex) end
---@param RestPointData FMapRestPointData
function UUserWidgetRestPointList:RestPointEntryPressed(RestPointData) end
---@param MapAreaIndex int32
---@param RestPointIcon UUserWidgetMapIcon_RestPoint
function UUserWidgetRestPointList:RestPointEntryFocused(MapAreaIndex, RestPointIcon) end
---@param CurrentMapPosition FVector2D
---@param bInstant boolean
function UUserWidgetRestPointList:Open(CurrentMapPosition, bInstant) end
---@param bInstant boolean
function UUserWidgetRestPointList:OnOpened(bInstant) end
---@param bInstant boolean
function UUserWidgetRestPointList:OnClosed(bInstant) end
---@return boolean
function UUserWidgetRestPointList:IsOpened() end
---@param ListData TArray<FRestPointListData>
function UUserWidgetRestPointList:InstantiateRestPointList(ListData) end
function UUserWidgetRestPointList:GoToPreviousMapArea() end
function UUserWidgetRestPointList:GoToNextMapArea() end
---@param MapAreaIndex int32
---@param NearestRestPointIcon UUserWidgetMapIcon_RestPoint
function UUserWidgetRestPointList:GoToMapAreaFromIndex(MapAreaIndex, NearestRestPointIcon) end
---@param IndexOffset int32
---@return int32
function UUserWidgetRestPointList:GetNewMapAreaIndex(IndexOffset) end
---@param MapAreaName FName
---@return int32
function UUserWidgetRestPointList:GetIndexFromMapAreaName(MapAreaName) end
---@param CurrentMapPosition FVector2D
---@param OutMapAreaIndex int32
---@return UUserWidgetMapIcon_RestPoint
function UUserWidgetRestPointList:FindNearestRestPointIcon(CurrentMapPosition, OutMapAreaIndex) end
---@param bInstant boolean
function UUserWidgetRestPointList:Close(bInstant) end
---@param IndexOffset int32
---@return UUserWidgetMapIcon_RestPoint
function UUserWidgetRestPointList:ChangeMapArea(IndexOffset) end
---@return boolean
function UUserWidgetRestPointList:CanChangeMapArea() end
---@return boolean
function UUserWidgetRestPointList:CanBeOpened() end


---@class UUserWidgetRestPointListEntry : UUserWidgetZion
---@field OnFocused FUserWidgetRestPointListEntryOnFocused
---@field OnPressed FUserWidgetRestPointListEntryOnPressed
---@field CachedRestPointIcon TWeakObjectPtr<UUserWidgetMapIcon_RestPoint>
local UUserWidgetRestPointListEntry = {}

function UUserWidgetRestPointListEntry:OnInitializeEntry() end
---@param RestPointIcon UUserWidgetMapIcon_RestPoint
---@return boolean
function UUserWidgetRestPointListEntry:IsRestPointIcon(RestPointIcon) end
---@param RestPointIcon UUserWidgetMapIcon_RestPoint
function UUserWidgetRestPointListEntry:InitializeEntry(RestPointIcon) end


---@class UUserWidgetRestPointListMapArea : UUserWidgetZion
---@field OnEntryFocused FUserWidgetRestPointListMapAreaOnEntryFocused
---@field OnEntryPressed FUserWidgetRestPointListMapAreaOnEntryPressed
---@field CachedRestPointIcon TWeakObjectPtr<UUserWidgetMapIcon_RestPoint>
---@field EntriesHolder UVerticalBox
---@field RestPointListEntrySoftClass TSoftClassPtr<UUserWidgetRestPointListEntry>
---@field MapAreaName FText
---@field MapAreaIndex int32
---@field bCompleted boolean
local UUserWidgetRestPointListMapArea = {}

---@param NewMapAreaName FText
function UUserWidgetRestPointListMapArea:SetMapAreaName(NewMapAreaName) end
---@param NewMapAreaIndex int32
function UUserWidgetRestPointListMapArea:SetMapAreaIndex(NewMapAreaIndex) end
---@param bIsCompleted boolean
function UUserWidgetRestPointListMapArea:SetCompleted(bIsCompleted) end
---@param RestPointData FMapRestPointData
function UUserWidgetRestPointListMapArea:RestPointEntryPressed(RestPointData) end
---@param RestPointIcon UUserWidgetMapIcon_RestPoint
function UUserWidgetRestPointListMapArea:RestPointEntryFocused(RestPointIcon) end
---@param RestPointIcons TArray<UUserWidgetMapIcon_RestPoint>
function UUserWidgetRestPointListMapArea:GenerateRestPointListEntries(RestPointIcons) end


---@class UUserWidgetStatusEffectIcon : UUserWidgetZion
---@field StatusEffectDurationSlider URadialSliderZion
---@field CachedStatusEffect TWeakObjectPtr<UStatusEffect>
---@field StatusEffectIcons_Map TMap<EStatusEffectType, TSoftObjectPtr<UPaperSprite>>
local UUserWidgetStatusEffectIcon = {}

function UUserWidgetStatusEffectIcon:UpdateRemainingDuration() end
function UUserWidgetStatusEffectIcon:OnStatusEffectFinished() end
---@param StatusEffectType EStatusEffectType
---@return TSoftObjectPtr<UPaperSprite>
function UUserWidgetStatusEffectIcon:GetStatusEffectIconSpriteFromType(StatusEffectType) end
---@return TSoftObjectPtr<UPaperSprite>
function UUserWidgetStatusEffectIcon:GetStatusEffectIconSprite() end
---@return UStatusEffect
function UUserWidgetStatusEffectIcon:GetCachedStatusEffect() end


---@class UUserWidgetTutorial : UUserWidgetZion
---@field OnClosed FUserWidgetTutorialOnClosed
---@field TutorialDataHandle FDataTableRowHandle
local UUserWidgetTutorial = {}



---@class UUserWidgetWorldSpace : UUserWidgetZionBase
---@field WorldSpacePivot FVector2D
---@field DPIScaler UScaleBox
local UUserWidgetWorldSpace = {}

function UUserWidgetWorldSpace:Show() end
function UUserWidgetWorldSpace:OnShow() end
function UUserWidgetWorldSpace:OnHide() end
function UUserWidgetWorldSpace:Hide() end


---@class UUserWidgetWorldSpaceDebug : UUserWidgetWorldSpace
local UUserWidgetWorldSpaceDebug = {}

---@param Tag FName
---@param Text FString
function UUserWidgetWorldSpaceDebug:SetTextForTag(Tag, Text) end
---@param Tag FName
function UUserWidgetWorldSpaceDebug:ClearTextForTag(Tag) end


---@class UUserWidgetWorldSpaceGauge : UUserWidgetWorldSpace
local UUserWidgetWorldSpaceGauge = {}

---@param Actor AActor
function UUserWidgetWorldSpaceGauge:SetTargetActor(Actor) end
---@param CurrentRatio float
function UUserWidgetWorldSpaceGauge:SetCurrentRatio(CurrentRatio) end


---@class UUserWidgetWorldSpaceText : UUserWidgetWorldSpace
local UUserWidgetWorldSpaceText = {}

---@param Text FText
function UUserWidgetWorldSpaceText:SetText(Text) end


---@class UUserWidgetWorldSpaceText_Interact : UUserWidgetWorldSpaceText
local UUserWidgetWorldSpaceText_Interact = {}

---@param bAvailable boolean
function UUserWidgetWorldSpaceText_Interact:SetAvailable(bAvailable) end


---@class UUserWidgetWorldSpaceText_Talk : UUserWidgetWorldSpaceText
local UUserWidgetWorldSpaceText_Talk = {}

---@param SpeakerName FText
function UUserWidgetWorldSpaceText_Talk:SetSpeakerName(SpeakerName) end
---@param TalkParameters FTalkParameters
function UUserWidgetWorldSpaceText_Talk:OnTalk(TalkParameters) end
function UUserWidgetWorldSpaceText_Talk:OnPressConfirm() end
function UUserWidgetWorldSpaceText_Talk:FinishTalk() end
function UUserWidgetWorldSpaceText_Talk:CompleteTalk() end


---@class UUserWidgetWorldSpace_InputEvent : UUserWidgetWorldSpace
local UUserWidgetWorldSpace_InputEvent = {}

function UUserWidgetWorldSpace_InputEvent:OnPressConfirm() end


---@class UUserWidgetWrapBox : UUserWidgetZion
---@field WrapBox UWrapBox
---@field InnerSlotPadding FVector2D
---@field WrapSize float
---@field bExplicitWrapSize boolean
---@field HorizontalAlignment EHorizontalAlignment
---@field Orientation EOrientation
local UUserWidgetWrapBox = {}

---@param Index int32
---@return boolean
function UUserWidgetWrapBox:RemoveChildAt(Index) end
---@param Content UWidget
---@return boolean
function UUserWidgetWrapBox:RemoveChild(Content) end
---@param Content UWidget
---@return boolean
function UUserWidgetWrapBox:HasChild(Content) end
---@return boolean
function UUserWidgetWrapBox:HasAnyChildren() end
---@param bWrapToTop boolean
---@return UWidget
function UUserWidgetWrapBox:GetWrapNavigationWidget(bWrapToTop) end
---@return int32
function UUserWidgetWrapBox:GetChildrenCount() end
---@param Content UWidget
---@return int32
function UUserWidgetWrapBox:GetChildIndex(Content) end
---@param Index int32
---@return UWidget
function UUserWidgetWrapBox:GetChildAt(Index) end
---@return TArray<UWidget>
function UUserWidgetWrapBox:GetAllChildren() end
function UUserWidgetWrapBox:ClearChildren() end
---@param Content UWidget
function UUserWidgetWrapBox:AddChild(Content) end


---@class UUserWidgetZion : UUserWidgetZionBase
---@field OnDestruct FUserWidgetZionOnDestruct
---@field bMouseHoverFocus boolean
---@field bTriggerOnChildFocus boolean
---@field bAcceptRepeatKeys boolean
---@field WidgetHost UNativeWidgetHost
---@field OnConfirmFMODEvent UFMODEvent
---@field OnCancelFMODEvent UFMODEvent
---@field OnNavigationFMODEvent UFMODEvent
---@field FooterEntries TArray<FFooterData>
---@field ExplanationText FText
---@field ExplanationTextPerPlatforms TMap<EBuildPlatformType, FText>
---@field ExplanationInputElements TArray<FRichTextInputElement>
---@field ExplanationStringElements TArray<FString>
local UUserWidgetZion = {}

---@param FallbackWidget UWidget
function UUserWidgetZion:SetFocusToLastFocusedChild(FallbackWidget) end
function UUserWidgetZion:ResetLastFocusedChild() end
---@param SoundEffect UFMODEvent
function UUserWidgetZion:PlaySoundEvent(SoundEffect) end
---@param bInIsEnabled boolean
function UUserWidgetZion:OnSetIsEnabled(bInIsEnabled) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressUp(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressRight(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressPreviousAlt(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressPrevious(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressNextAlt(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressNext(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressLeft(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressDown(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressContextAlt(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressContext(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressConfirm(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnPressCancel(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnDownRight(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnDownPreviousAlt(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnDownPrevious(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnDownNextAlt(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnDownNext(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UUserWidgetZion:OnDownLeft(KeyEvent) end
---@param FocusedWidgetHost UNativeWidgetHost
---@param FocusEvent FFocusEvent
function UUserWidgetZion:OnChildFocused(FocusedWidgetHost, FocusEvent) end
---@return boolean
function UUserWidgetZion:IsOnFocusPath() end
---@return boolean
function UUserWidgetZion:IsFocusedFromMouse() end
---@param InExplanationText FText
function UUserWidgetZion:ChangeExplanationText(InExplanationText) end


---@class UUserWidgetZionBase : UUserWidget
---@field bTickWhenPaused boolean
local UUserWidgetZionBase = {}



---@class UUserWidgetZionShowHide : UUserWidgetZion
local UUserWidgetZionShowHide = {}

---@param bInstant boolean
function UUserWidgetZionShowHide:Show(bInstant) end
---@param bInstant boolean
function UUserWidgetZionShowHide:HideAndRemoveFromParent(bInstant) end
---@param bInstant boolean
function UUserWidgetZionShowHide:Hide(bInstant) end


---@class UVisualPivotModifierComponent : UActorComponent
local UVisualPivotModifierComponent = {}


---@class UWaitGameReadyAsyncAction : UBlueprintAsyncActionBase
---@field OnFinish FWaitGameReadyAsyncActionOnFinish
local UWaitGameReadyAsyncAction = {}

---@param WorldContextObject UObject
---@param bAlsoWaitWorldLoading boolean
---@return UWaitGameReadyAsyncAction
function UWaitGameReadyAsyncAction:WaitGameReady(WorldContextObject, bAlsoWaitWorldLoading) end


---@class UWaitGameUnpaused : UBlueprintAsyncActionBase
---@field OnFinish FWaitGameUnpausedOnFinish
local UWaitGameUnpaused = {}

---@param WorldContextObject UObject
---@return UWaitGameUnpaused
function UWaitGameUnpaused:WaitGameUnpaused(WorldContextObject) end


---@class UWallAttachComponent : UActorComponent
---@field bUpdateUpVector boolean
---@field bCheckLateral boolean
---@field bCheckAbove boolean
---@field WallLinecastRange float
local UWallAttachComponent = {}

---@param InCharacter ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UWallAttachComponent:OnMovementModeChanged(InCharacter, PrevMovementMode, PreviousCustomMode) end


---@class UWallGrabComponent : UActorComponent
---@field MinVerticalityForWallGrab float
---@field DistanceToWallGrabOffset float
---@field TopOffsetForLineCast float
---@field BottomOffsetForLineCast float
---@field MaxZVelocityForGrab float
---@field LocalSpaceWallGrabLocationOffset FVector
---@field IgnoreWallGrabStates TArray<TSubclassOf<UState>>
---@field WallGrabStates TArray<TSubclassOf<UState>>
---@field TransitionToWallDashBumpingStates TArray<TSubclassOf<UState>>
---@field SpiritClass TSubclassOf<ACharacterZionSpirit>
---@field SummonParameters FSpiritSummonParameters
---@field WallGrabStartAnimations TArray<FSpineAnimationDefinition>
---@field WallDashBumpingAnimations TArray<FSpineAnimationDefinition>
---@field AnimationDataForNames TMap<FString, FSpineAnimationDefinition>
local UWallGrabComponent = {}

function UWallGrabComponent:RefreshWallGrab() end
function UWallGrabComponent:OnWallGrab() end
---@param TrackEntry UTrackEntry
function UWallGrabComponent:OnStartAnimation(TrackEntry) end
---@param InCharacter ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode uint8
function UWallGrabComponent:OnMovementModeChanged(InCharacter, PrevMovementMode, PreviousCustomMode) end
---@param Impact FHitResult
function UWallGrabComponent:OnMoveBlocked(Impact) end
---@return boolean
function UWallGrabComponent:IsWallOnRight() end
---@return boolean
function UWallGrabComponent:IsGrabbingWall() end


---@class UWorldLoaderSubsystem : UGameInstanceSubsystem
local UWorldLoaderSubsystem = {}

function UWorldLoaderSubsystem:SwitchGameMap_PostFadeOut() end
function UWorldLoaderSubsystem:SwitchGameMap_PostFadeIn() end
---@param WorldToLoad TSoftObjectPtr<UWorld>
---@param PlayerStartTag FName
---@param FadeOutDescription FFadeDescriptionData
---@param FadeInDescription FFadeDescriptionData
function UWorldLoaderSubsystem:OpenWorld(WorldToLoad, PlayerStartTag, FadeOutDescription, FadeInDescription) end
---@param GameMapHandle FDataTableRowHandle
---@param PlayerStartTag FName
---@param bForceReload boolean
---@param FadeOutDescription FFadeDescriptionData
---@param FadeInDescription FFadeDescriptionData
function UWorldLoaderSubsystem:OpenGameMap(GameMapHandle, PlayerStartTag, bForceReload, FadeOutDescription, FadeInDescription) end
function UWorldLoaderSubsystem:OnPostLoad() end
function UWorldLoaderSubsystem:OnLevelStreamingDynamicLoaded() end
function UWorldLoaderSubsystem:OnFadeOutFinished() end
function UWorldLoaderSubsystem:OnFadeInFinished() end
---@param bConsiderFadeAsLoading boolean
---@return boolean
function UWorldLoaderSubsystem:IsLoading(bConsiderFadeAsLoading) end
---@return boolean
function UWorldLoaderSubsystem:IsAvailable() end
---@return FName
function UWorldLoaderSubsystem:GetCurrentPlayerStartTag() end
---@return FName
function UWorldLoaderSubsystem:GetCurrentGameMapID() end
---@return FGameMapData
function UWorldLoaderSubsystem:GetCurrentGameMapData() end


---@class UZionCharacterMovementComponent : UCharacterMovementComponent
---@field OnMoveBlockedDelegate FZionCharacterMovementComponentOnMoveBlockedDelegate
---@field bOverrideDefaultMovementMode boolean
---@field DefaultMovementModeData FMovementModeData
---@field bDisableUpdateBasedMovementWhenAttached boolean
---@field bCheckForCollidersWhenNotMoving boolean
---@field bEnsureCapsuleFullyGrounded boolean
---@field SpeedFactor_Slow float
---@field SpeedFactor_Default float
---@field SpeedFactor_Fast float
---@field SpeedFactor_Fastest float
---@field FastSpeedModePreservingStates TArray<TSubclassOf<UState>>
---@field bIgnoreInputVector boolean
---@field bUpdatePhysicsWhenInactive boolean
---@field bUseMaxFallVelocity boolean
---@field MaxFallVelocity float
---@field bReleaseWallOnLateralInput boolean
---@field bReleaseWallOnDownInput boolean
---@field bReleaseWallOnAnyDownwardInput boolean
---@field WallGrabPostCollisionStates TArray<TSubclassOf<UState>>
---@field WallGrabPostCollisionStatesDuration float
---@field BrakingDecelerationWallScaling float
---@field SwimmingMaxAcceleration float
---@field DefaultBuoyancy float
---@field DiveBuoyancy float
---@field bIgnoreDiveAptitude boolean
---@field FloatingImmersionDepth float
---@field SnapToFloatingDepthSpeed float
---@field ToFloatingDepthAcceleration float
---@field MaxSlideFloorAngle float
---@field SlidingAcceleration float
---@field MaxSlidingSpeed float
---@field JumpHigherZVelocity float
local UZionCharacterMovementComponent = {}

---@param NewMovementSpeedMode EMovementSpeedMode
function UZionCharacterMovementComponent:SetMovementSpeedMode(NewMovementSpeedMode) end
---@param NewMovementModeCustom EMovementModeCustom
function UZionCharacterMovementComponent:SetMovementModeCustom(NewMovementModeCustom) end
---@return boolean
function UZionCharacterMovementComponent:IsWallScaling() end
---@return boolean
function UZionCharacterMovementComponent:IsWallGrabbing() end
---@return boolean
function UZionCharacterMovementComponent:IsSliding() end
---@return boolean
function UZionCharacterMovementComponent:IsHookAttached() end
---@return boolean
function UZionCharacterMovementComponent:IsAirborne() end
---@return float
function UZionCharacterMovementComponent:GetTimeSinceLastWallGrab() end
---@return float
function UZionCharacterMovementComponent:GetTimeSinceLastHookAttach() end
---@return float
function UZionCharacterMovementComponent:GetTimeSinceLastGrounded() end
---@return EMovementSpeedMode
function UZionCharacterMovementComponent:GetMovementSpeedMode() end
---@return FVector
function UZionCharacterMovementComponent:GetLastNonFallingLocation() end
---@param DestinationLocation FVector
---@param Duration float
---@return FVector
function UZionCharacterMovementComponent:ComputeLaunchVelocityToDestination(DestinationLocation, Duration) end


---@class UZionInputComponent : UActorComponent
---@field InputContexts TMap<UInputMappingContext, EInputMappingPriority>
---@field InputAction_Movement UInputAction
---@field InputAction_SpecialModifier UInputAction
---@field InputActions_Attack TSet<UInputAction>
---@field OwnerPawn APawn
---@field CachedEnhancedInput UEnhancedInputComponent
---@field SPComponent UStatSPComponent
local UZionInputComponent = {}

---@param InputMappingContext UInputMappingContext
function UZionInputComponent:RemoveInputMappingContext(InputMappingContext) end
---@param InputMappingContext UInputMappingContext
---@param Priority EInputMappingPriority
function UZionInputComponent:AddInputMappingContext(InputMappingContext, Priority) end


---@class UZionInputDeviceSubsystem : UGameInstanceSubsystem
---@field OnGamepadConnectionChangedDelegate FZionInputDeviceSubsystemOnGamepadConnectionChangedDelegate
local UZionInputDeviceSubsystem = {}

---@param bResetLockCount boolean
function UZionInputDeviceSubsystem:UnlockActiveController(bResetLockCount) end
---@param NewInputStyleGamepadOverride EInputStyle
function UZionInputDeviceSubsystem:SetInputStyleGamepadOverride(NewInputStyleGamepadOverride) end
function UZionInputDeviceSubsystem:LockActiveController() end
---@return boolean
function UZionInputDeviceSubsystem:IsUsingGamepad() end
---@return boolean
function UZionInputDeviceSubsystem:IsCursorVisible() end
---@return boolean
function UZionInputDeviceSubsystem:IsAnyGamepadConnected() end
---@return boolean
function UZionInputDeviceSubsystem:IsActiveControllerLocked() end
---@return EInputStyle
function UZionInputDeviceSubsystem:GetInputStyleGamepadOverride() end
---@return EInputStyle
function UZionInputDeviceSubsystem:GetInputStyle() end
---@return int32
function UZionInputDeviceSubsystem:GetActiveControllerID() end


---@class UZionPathFollowingComponent : UPathFollowingComponent
---@field PathFollowingMode EPathFollowingMode
---@field bOverridePathAcceptanceRadius boolean
---@field PathPointAcceptanceRadius float
local UZionPathFollowingComponent = {}



---@class UZionProjectileMovementComponent : UProjectileMovementComponent
---@field InitialLocalSpaceVelocity FVector
---@field bHasInitialLocalSpaceAcceleration boolean
---@field InitialLocalSpaceAcceleration FVector
---@field bHasInitialVelocitySpaceAcceleration boolean
---@field InitialVelocitySpaceAcceleration FVector
---@field bHasInitialMaxSpeed boolean
---@field InitialMaxSpeed float
---@field bInitialRotationFollowsVelocity boolean
---@field InitialGravityFactor float
local UZionProjectileMovementComponent = {}



---@class UZoneSystemComponent : UActorComponent
---@field FadeDescription FFadeDescriptionData
---@field ActiveZoneLevelStreaming ULevelStreamingDynamic
local UZoneSystemComponent = {}

function UZoneSystemComponent:OnFadeOutFinished() end
---@return boolean
function UZoneSystemComponent:IsInAnyZone() end
---@return FString
function UZoneSystemComponent:GetActiveZoneName() end
---@return FString
function UZoneSystemComponent:GetActiveZoneLevelName() end
---@param WorldContextObject UObject
---@return UZoneSystemComponent
function UZoneSystemComponent:Get(WorldContextObject) end
---@param Actor AActor
function UZoneSystemComponent:BindActorToZone(Actor) end


---@class UniagaraBPFLibrary : UBlueprintFunctionLibrary
local UniagaraBPFLibrary = {}

---@param NiagaraComponent UNiagaraComponent
function UniagaraBPFLibrary:TryReleaseToPool(NiagaraComponent) end
---@param FXData FSpineFXData
---@return boolean
function UniagaraBPFLibrary:IsValid(FXData) end


