-- cpp definition
-- EnderMagnolia/Source/Zion/Public/SpineAnimatorComponent.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "UObject/NoExportTypes.h"
#include "Components/ActorComponent.h"
#include "EDamageAdditiveType.h"
#include "EFallbackMovementModeUse.h"
#include "ELocomotionMoveSource.h"
#include "ESpineAnimatorLayer.h"
#include "MovementModeData.h"
#include "SpineAnimationDefinition.h"
#include "SpineAnimationDelegateDelegate.h"
#include "SpineAnimationStaggerDefinitions.h"
#include "SpineAnimationTransitionDefinition.h"
#include "SpineAnimatorHistoryData.h"
#include "Templates/SubclassOf.h"
#include "SpineAnimatorComponent.generated.h"

class ACharacter;
class UDashChargeComponent;
class UDeathComponent;
class UKnockbackComponent;
class ULocomotionComponent;
class USpineRootMotionComponent;
class USpineSkeletonAnimationComponent;
class UState;
class UStateComponent;
class UStunComponent;
class UTrackEntry;
class UZionCharacterMovementComponent;

UCLASS(Blueprintable, ClassGroup=Custom, Within=Character, meta=(BlueprintSpawnableComponent))
class USpineAnimatorComponent : public UActorComponent {
    GENERATED_BODY()
public:
private:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bUpdateLocomotion;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MinVerticalVelocityForFallingUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MinVerticalVelocityForFallingDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MinVerticalVelocityForDashFallingUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MinVerticalVelocityForDashFallingDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MinVerticalVelocityForRideFallingUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MinVerticalVelocityForRideFallingDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    ELocomotionMoveSource LocomotionVectorSource;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float VelocityZForUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float VelocityZForDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float VelocityYForForward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FMovementModeData FallbackMovementModeData;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    EFallbackMovementModeUse FallbackMovementModeUse;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bSyncLocomotionTrackTime;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bAutoManageTurnAnimations;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    EDamageAdditiveType DamageAdditiveType;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FString DamageAdditiveAnimation;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<TSubclassOf<UState>> DamageAdditiveForbiddenStates;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bFlushOnStagger;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> EventIdle;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> EventTurn;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionIdle;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionWalk;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionRun;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionDash;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionRide;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingNeutral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionDashFallingUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionDashFallingNeutral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionDashFallingDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionRideFallingUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionRideFallingNeutral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionRideFallingDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingKnockbackUp_Forward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingKnockbackUp_Backward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingKnockbackNeutral_Forward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingKnockbackNeutral_Backward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingKnockbackDown_Forward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFallingKnockbackDown_Backward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionWallGrab;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionSlide;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionHookAttach;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionSwimIdle;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionSwimLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterIdle;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterUpLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDownLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDashUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDashUpLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDashDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDashDownLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterDashLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterRideUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterRideUpLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterRideDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterRideDownLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionUnderwaterRideLateral;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFlyIdle;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFly;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFlyUp;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionFlyDown;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionWallScalingIdle;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionWallScalingForward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> LocomotionWallScalingBackward;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationStaggerDefinitions> KnockbackStaggers;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationStaggerDefinitions> KnockbackStaggersSwimming;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> KnockbackLaunchLand;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> KnockbackLaunchLandBack;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> KnockbackLaunchStagger;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> KnockbackLaunchRecovery;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> Stun;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> StunRecovery;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnGrounded_Slow;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnGrounded_Default;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnGrounded_Fast;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnSwim_Slow;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnSwim_Default;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnUnderwater_Default;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnUnderwater_Dash_Up;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnUnderwater_Dash_Down;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnUnderwater_Ride_Up;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnUnderwater_Ride_Down;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> TurnFlying_Default;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationTransitionDefinition> TransitionDefinitions;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    USpineSkeletonAnimationComponent* SpineAnimation;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    USpineRootMotionComponent* RootMotionComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Transient, meta=(AllowPrivateAccess=true))
    ACharacter* Character;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    UZionCharacterMovementComponent* ZionMovementComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    UKnockbackComponent* KnockbackComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    UStunComponent* StunComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    ULocomotionComponent* LocomotionComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    UStateComponent* StateComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    UDeathComponent* DeathComponent;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, Transient, meta=(AllowPrivateAccess=true))
    UDashChargeComponent* DashChargeComponent;
    
public:
    USpineAnimatorComponent(const FObjectInitializer& ObjectInitializer);

    UFUNCTION(BlueprintCallable)
    void StopAnimationAtLayer(ESpineAnimatorLayer Layer);
    
    UFUNCTION(BlueprintCallable)
    void StopActionAnimations();
    
    UFUNCTION(BlueprintCallable)
    void ResetLocomotionCycle();
    
    UFUNCTION(BlueprintCallable)
    void ResetAnimations();
    
    UFUNCTION(BlueprintCallable)
    void PlayTurnAnimations(const TArray<FSpineAnimationDefinition>& AnimationDefinitions);
    
    UFUNCTION(BlueprintCallable)
    void PlayAnimationsWithDelegate(ESpineAnimatorLayer AnimatorLayer, const TArray<FSpineAnimationDefinition>& AnimationDefinitions, const FSpineAnimationDelegate& OnLayerEnd);
    
    UFUNCTION(BlueprintCallable)
    void PlayAnimations(ESpineAnimatorLayer AnimatorLayer, const TArray<FSpineAnimationDefinition>& AnimationDefinitions);
    
    UFUNCTION(BlueprintCallable)
    void PlayActionAnimationWithDelegate(const FSpineAnimationDefinition& AnimationDefinition, const FSpineAnimationDelegate& OnLayerEnd);
    
    UFUNCTION(BlueprintCallable)
    void PlayActionAnimationsWithDelegate(const TArray<FSpineAnimationDefinition>& AnimationDefinitions, const FSpineAnimationDelegate& OnLayerEnd);
    
    UFUNCTION(BlueprintCallable)
    void PlayActionAnimations(const TArray<FSpineAnimationDefinition>& AnimationDefinitions);
    
    UFUNCTION(BlueprintCallable)
    void PlayActionAnimation(const FSpineAnimationDefinition& AnimationDefinition);
    
private:
    UFUNCTION(BlueprintCallable)
    void OnLayerInterrupt(UTrackEntry* TrackEntry);
    
    UFUNCTION(BlueprintCallable)
    void OnLayerComplete(UTrackEntry* TrackEntry);
    
    UFUNCTION(BlueprintCallable)
    void OnFacingChanged();
    
    UFUNCTION(BlueprintCallable)
    void OnAnyAnimationInterrupt(UTrackEntry* TrackEntry);
    
    UFUNCTION(BlueprintCallable)
    void OnAnyAnimationComplete(UTrackEntry* TrackEntry);
    
    UFUNCTION(BlueprintCallable)
    void OnAnimationInterrupt(UTrackEntry* TrackEntry);
    
    UFUNCTION(BlueprintCallable)
    void OnAnimationComplete(UTrackEntry* TrackEntry);
    
public:
    UFUNCTION(BlueprintCallable, BlueprintPure)
    bool IsPlayingAnimationOnLayer(ESpineAnimatorLayer Layer) const;
    
    UFUNCTION(BlueprintCallable, BlueprintPure)
    FVector GetLastVelocity() const;
    
    UFUNCTION(BlueprintCallable, BlueprintPure)
    bool GetHistoryDataAtIndex(int32 Index, FSpineAnimatorHistoryData& out_Result) const;
    
    UFUNCTION(BlueprintCallable, BlueprintPure)
    UTrackEntry* GetCurrentTrackEntry() const;
    
    UFUNCTION(BlueprintCallable, BlueprintPure)
    ESpineAnimatorLayer GetCurrentLayer() const;
    
    UFUNCTION(BlueprintCallable, BlueprintPure)
    float GetCurrentAnimationPlayTime() const;
    
    UFUNCTION(BlueprintCallable, BlueprintPure)
    FString GetCurrentAnimationName() const;
    
};
]]

-- EnderMagnolia/Source/Zion/Public/SpineAnimationStaggerDefinitions.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "SpineAnimationDefinition.h"
#include "SpineAnimationStaggerDefinitions.generated.h"

USTRUCT(BlueprintType)
struct FSpineAnimationStaggerDefinitions {
    GENERATED_BODY()
public:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> Stagger;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> Recovery;
    
    ZION_API FSpineAnimationStaggerDefinitions();
};
]]

-- EnderMagnolia/Source/Zion/Public/SpineAnimationTransitionDefinition.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "SpineAnimationDefinition.h"
#include "SpineAnimationTransitionDefinition.generated.h"

class USpineAnimationTransitionCondition;

USTRUCT(BlueprintType)
struct FSpineAnimationTransitionDefinition {
    GENERATED_BODY()
public:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FString From;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FString To;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, Instanced, meta=(AllowPrivateAccess=true))
    TArray<USpineAnimationTransitionCondition*> Conditions;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> AnimationDefinitions;
    
    ZION_API FSpineAnimationTransitionDefinition();
};
]]

-- local SpineAnimatorComponent_Config = {
--     EventIdle = {},
--     EventTurn = {},
--     LocomotionIdle = {},
--     LocomotionWalk = {},
--     LocomotionRun = {},
--     LocomotionDash = {},
--     LocomotionRide = {},
--     LocomotionFallingUp = {},
--     LocomotionFallingNeutral = {},
--     LocomotionFallingDown = {},
--     LocomotionDashFallingUp = {},
--     LocomotionDashFallingNeutral = {},
--     LocomotionDashFallingDown = {},
--     LocomotionRideFallingUp = {},
--     LocomotionRideFallingNeutral = {},
--     LocomotionRideFallingDown = {},
--     LocomotionFallingKnockbackUp_Forward = {},
--     LocomotionFallingKnockbackUp_Backward = {},
--     LocomotionFallingKnockbackNeutral_Forward = {},
--     LocomotionFallingKnockbackNeutral_Backward = {},
--     LocomotionFallingKnockbackDown_Forward = {},
--     LocomotionFallingKnockbackDown_Backward = {},
--     LocomotionWallGrab = {},
--     LocomotionSlide = {},
--     LocomotionHookAttach = {},
--     LocomotionSwimIdle = {},
--     LocomotionSwimLateral = {},
--     LocomotionUnderwaterIdle = {},
--     LocomotionUnderwaterUp = {},
--     LocomotionUnderwaterUpLateral = {},
--     LocomotionUnderwaterDown = {},
--     LocomotionUnderwaterDownLateral = {},
--     LocomotionUnderwaterLateral = {},
--     LocomotionUnderwaterDashUp = {},
--     LocomotionUnderwaterDashUpLateral = {},
--     LocomotionUnderwaterDashDown = {},
--     LocomotionUnderwaterDashDownLateral = {},
--     LocomotionUnderwaterDashLateral = {},
--     LocomotionUnderwaterRideUp = {},
--     LocomotionUnderwaterRideUpLateral = {},
--     LocomotionUnderwaterRideDown = {},
--     LocomotionUnderwaterRideDownLateral = {},
--     LocomotionUnderwaterRideLateral = {},
--     LocomotionFlyIdle = {},
--     LocomotionFly = {},
--     LocomotionFlyUp = {},
--     LocomotionFlyDown = {},
--     LocomotionWallScalingIdle = {},
--     LocomotionWallScalingForward = {},
--     LocomotionWallScalingBackward = {},
--     KnockbackLaunchLand = {},
--     KnockbackLaunchLandBack = {},
--     KnockbackLaunchStagger = {},
--     KnockbackLaunchRecovery = {},
--     Stun = {},
--     StunRecovery = {},
--     TurnGrounded_Slow = {},
--     TurnGrounded_Default = {},
--     TurnGrounded_Fast = {},
--     TurnSwim_Slow = {},
--     TurnSwim_Default = {},
--     TurnUnderwater_Default = {},
--     TurnUnderwater_Dash_Up = {},
--     TurnUnderwater_Dash_Down = {},
--     TurnUnderwater_Ride_Up = {},
--     TurnUnderwater_Ride_Down = {},
--     TurnFlying_Default = {},
--     KnockbackStaggers = {
--         StaggerDefinitions1 = {
--             Stagger = {},
--             Recovery = {}
--         },
--         StaggerDefinitions2 = {
--             Stagger = {},
--             Recovery = {}
--         }
--     },
--     KnockbackStaggersSwimming = {
--         StaggerDefinitions1 = {
--             Stagger = {},
--             Recovery = {}
--         },
--         StaggerDefinitions2 = {
--             Stagger = {},
--             Recovery = {}
--         }
--     },
--     TransitionDefinitions = {
--         TransitionDefinition1 = {
--             AnimationDefinitions = {}
--         },
--         TransitionDefinition2 = {
--             AnimationDefinitions = {}
--         }
--     }
-- }

local SpineAnimatorComponent = {}

local AnimationDefinitions = require("AnimationDefinitions")

local AnimationDefinitionsTypeComponentList = {
    "EventIdle",
    "EventTurn",
    "LocomotionIdle",
    "LocomotionWalk",
    "LocomotionRun",
    "LocomotionDash",
    "LocomotionRide",
    "LocomotionFallingUp",
    "LocomotionFallingNeutral",
    "LocomotionFallingDown",
    "LocomotionDashFallingUp",
    "LocomotionDashFallingNeutral",
    "LocomotionDashFallingDown",
    "LocomotionRideFallingUp",
    "LocomotionRideFallingNeutral",
    "LocomotionRideFallingDown",
    "LocomotionFallingKnockbackUp_Forward",
    "LocomotionFallingKnockbackUp_Backward",
    "LocomotionFallingKnockbackNeutral_Forward",
    "LocomotionFallingKnockbackNeutral_Backward",
    "LocomotionFallingKnockbackDown_Forward",
    "LocomotionFallingKnockbackDown_Backward",
    "LocomotionWallGrab",
    "LocomotionSlide",
    "LocomotionHookAttach",
    "LocomotionSwimIdle",
    "LocomotionSwimLateral",
    "LocomotionUnderwaterIdle",
    "LocomotionUnderwaterUp",
    "LocomotionUnderwaterUpLateral",
    "LocomotionUnderwaterDown",
    "LocomotionUnderwaterDownLateral",
    "LocomotionUnderwaterLateral",
    "LocomotionUnderwaterDashUp",
    "LocomotionUnderwaterDashUpLateral",
    "LocomotionUnderwaterDashDown",
    "LocomotionUnderwaterDashDownLateral",
    "LocomotionUnderwaterDashLateral",
    "LocomotionUnderwaterRideUp",
    "LocomotionUnderwaterRideUpLateral",
    "LocomotionUnderwaterRideDown",
    "LocomotionUnderwaterRideDownLateral",
    "LocomotionUnderwaterRideLateral",
    "LocomotionFlyIdle",
    "LocomotionFly",
    "LocomotionFlyUp",
    "LocomotionFlyDown",
    "LocomotionWallScalingIdle",
    "LocomotionWallScalingForward",
    "LocomotionWallScalingBackward",
    "KnockbackLaunchLand",
    "KnockbackLaunchLandBack",
    "KnockbackLaunchStagger",
    "KnockbackLaunchRecovery",
    "Stun",
    "StunRecovery",
    "TurnGrounded_Slow",
    "TurnGrounded_Default",
    "TurnGrounded_Fast",
    "TurnSwim_Slow",
    "TurnSwim_Default",
    "TurnUnderwater_Default",
    "TurnUnderwater_Dash_Up",
    "TurnUnderwater_Dash_Down",
    "TurnUnderwater_Ride_Up",
    "TurnUnderwater_Ride_Down",
    "TurnFlying_Default"
}

function SpineAnimatorComponent.Set_AnimationDefinitions(TArrayRef, newNameList)
    return AnimationDefinitions.SetAnimationNames(TArrayRef, newNameList)
end

function SpineAnimatorComponent.Set_KnockbackStaggers(T4ArrayRef, newName4)
    if not (T4ArrayRef and T4ArrayRef:IsValid() and newName4) then return false end

    if T4ArrayRef:GetArrayNum() ~= #newName4 then return false end

    T4ArrayRef:ForEach(function(index, elem)
        local structRef = elem:get()

        local staggerDefs = structRef.Stagger
        AnimationDefinitions.SetAnimationNames(staggerDefs, newName4[index].Stagger)

        local recoveryDefs = structRef.Recovery
        AnimationDefinitions.SetAnimationNames(recoveryDefs, newName4[index].Recovery)
    end)

    return true
end

function SpineAnimatorComponent.Set_KnockbackStaggersSwimming(T4ArrayRef, newName4)
    return SpineAnimatorComponent.Set_KnockbackStaggers(T4ArrayRef, newName4)
end

function SpineAnimatorComponent.Set_TransitionDefinitions(T4ArrayRef, newName4)
    if not (T4ArrayRef and T4ArrayRef:IsValid() and newName4) then return false end

    if T4ArrayRef:GetArrayNum() ~= #newName4 then return false end

    T4ArrayRef:ForEach(function(index, elem)
        local structRef = elem:get()
        AnimationDefinitions.SetAnimationNames(structRef.AnimationDefinitions, newName4[index])
    end)

    return true
end

function SpineAnimatorComponent.UpdateAllAnimations(moduleRef, newConfig)
    if not (moduleRef and moduleRef:IsValid() and newConfig) then return false end

    -- update AnimationDefinitionsTypeComponents
    for _, ComponentName in ipairs(AnimationDefinitionsTypeComponentList) do
        if newConfig[ComponentName] then
            print(string.format("Updating animations for %s...", ComponentName))
            SpineAnimatorComponent.Set_AnimationDefinitions(moduleRef[ComponentName], newConfig[ComponentName])
        end
    end

    -- update KnockbackStaggers
    if newConfig.KnockbackStaggers then
        print("Updating animations for KnockbackStaggers...")
        SpineAnimatorComponent.Set_KnockbackStaggers(moduleRef.KnockbackStaggers, newConfig.KnockbackStaggers)
    end

    -- update KnockbackStaggersSwimming
    if newConfig.KnockbackStaggersSwimming then
        print("Updating animations for KnockbackStaggersSwimming...")
        SpineAnimatorComponent.Set_KnockbackStaggersSwimming(moduleRef.KnockbackStaggersSwimming, newConfig.KnockbackStaggersSwimming)
    end

    -- update TransitionDefinitions
    if newConfig.TransitionDefinitions then
        print("Updating animations for TransitionDefinitions...")
        SpineAnimatorComponent.Set_TransitionDefinitions(moduleRef.TransitionDefinitions, newConfig.TransitionDefinitions)
    end

    return true
end

-- For Mapping Mode
function SpineAnimatorComponent.ApplyAnimationMapping(moduleRef, animationMap)
    if not (moduleRef and moduleRef:IsValid() and animationMap) then return false end
    
    -- update AnimationDefinitionsTypeComponents
    for _, ComponentName in ipairs(AnimationDefinitionsTypeComponentList) do
        print(string.format("Applying animation mapping for %s...", ComponentName))
        AnimationDefinitions.ApplyAnimationMapping(moduleRef[ComponentName], animationMap)
    end

    print("Applying animation mapping for KnockbackStaggers...")
    -- update KnockbackStaggers
    local KnockbackStaggersRef = moduleRef.KnockbackStaggers
    KnockbackStaggersRef:ForEach(function(index, elem)
        local structRef = elem:get()
        AnimationDefinitions.ApplyAnimationMapping(structRef.Stagger, animationMap)
        AnimationDefinitions.ApplyAnimationMapping(structRef.Recovery, animationMap)
    end)

    print("Applying animation mapping for KnockbackStaggersSwimming...")
    -- update KnockbackStaggersSwimming
    local KnockbackStaggersSwimmingRef = moduleRef.KnockbackStaggersSwimming
    KnockbackStaggersSwimmingRef:ForEach(function(index, elem)
        local structRef = elem:get()
        AnimationDefinitions.ApplyAnimationMapping(structRef.Stagger, animationMap)
        AnimationDefinitions.ApplyAnimationMapping(structRef.Recovery, animationMap)
    end)

    print("Applying animation mapping for TransitionDefinitions...")
    -- update TransitionDefinitions
    local TransitionDefinitionsRef = moduleRef.TransitionDefinitions
    TransitionDefinitionsRef:ForEach(function(index, elem)
        local structRef = elem:get()
        AnimationDefinitions.ApplyAnimationMapping(structRef.AnimationDefinitions, animationMap)
    end)

    return true
end

return SpineAnimatorComponent