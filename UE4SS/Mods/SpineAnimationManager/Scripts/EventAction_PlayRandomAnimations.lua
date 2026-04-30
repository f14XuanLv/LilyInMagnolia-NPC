-- cpp definition
-- EnderMagnolia/Source/Zion/Public/EventAction_PlayRandomAnimations.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "EventAction_SubjectBinding.h"
#include "SpineAnimationDefinition.h"
#include "EventAction_PlayRandomAnimations.generated.h"

UCLASS(Blueprintable, EditInlineNew)
class UEventAction_PlayRandomAnimations : public UEventAction_SubjectBinding {
    GENERATED_BODY()
public:
private:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> StartAnimationDefinitions;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> RandomAnimationDefinitions;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FName FinishActionKey;
    
public:
    UEventAction_PlayRandomAnimations();

private:
    UFUNCTION(BlueprintCallable)
    void OnAnimationFinished();
    
};
]]

-- local EventAction_PlayRandomAnimations_Config = {
--     StartAnimationDefinitions = {},
--     RandomAnimationDefinitions = {}
-- }

local EventAction_PlayRandomAnimations = {}

local AnimationDefinitions = require("AnimationDefinitions")

function EventAction_PlayRandomAnimations.Set_StartAnimationDefinitions(TArrayRef, newNames)
    return AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
end

function EventAction_PlayRandomAnimations.Set_RandomAnimationDefinitions(TArrayRef, newNames)
    return AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
end

function EventAction_PlayRandomAnimations.UpdateAllAnimations(moduleRef, newConfig)
    if not (moduleRef and moduleRef:IsValid() and newConfig) then return false end

    -- update StartAnimationDefinitions
    EventAction_PlayRandomAnimations.Set_StartAnimationDefinitions(moduleRef.StartAnimationDefinitions, newConfig.StartAnimationDefinitions)

    -- update RandomAnimationDefinitions
    EventAction_PlayRandomAnimations.Set_RandomAnimationDefinitions(moduleRef.RandomAnimationDefinitions, newConfig.RandomAnimationDefinitions)

    return true
end

-- For Mapping Mode
function EventAction_PlayRandomAnimations.ApplyAnimationMapping(moduleRef, animationMap)
    if not (moduleRef and moduleRef:IsValid() and animationMap) then return false end

    -- update StartAnimationDefinitions
    AnimationDefinitions.ApplyAnimationMapping(moduleRef.StartAnimationDefinitions, animationMap)

    -- update RandomAnimationDefinitions
    AnimationDefinitions.ApplyAnimationMapping(moduleRef.RandomAnimationDefinitions, animationMap)

    return true
end

return EventAction_PlayRandomAnimations