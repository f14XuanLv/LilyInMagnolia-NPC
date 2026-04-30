-- cpp definition
-- EnderMagnolia/Source/Zion/Public/EventAction_PlayAnimations.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "EventAction_SubjectBinding.h"
#include "SpineAnimationDefinition.h"
#include "EventAction_PlayAnimations.generated.h"

UCLASS(Blueprintable, EditInlineNew)
class UEventAction_PlayAnimations : public UEventAction_SubjectBinding {
    GENERATED_BODY()
public:
private:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> AnimationDefinitions;
    
public:
    UEventAction_PlayAnimations();

};
]]

-- local EventAction_PlayAnimations_Config = {
--     AnimationDefinitions = {}
-- }

local EventAction_PlayAnimations = {}

local AnimationDefinitions = require("AnimationDefinitions")

function EventAction_PlayAnimations.Set_AnimationDefinitions(TArrayRef, newNames)
    return AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
end

function EventAction_PlayAnimations.UpdateAllAnimations(moduleRef, newConfig)
    if not (moduleRef and moduleRef:IsValid() and newConfig) then return false end

    -- update AnimationDefinitions
    EventAction_PlayAnimations.Set_AnimationDefinitions(moduleRef.AnimationDefinitions, newConfig.AnimationDefinitions)

    return true
end

-- For Mapping Mode
function EventAction_PlayAnimations.ApplyAnimationMapping(moduleRef, animationMap)
    if not (moduleRef and moduleRef:IsValid() and animationMap) then return false end

    -- update AnimationDefinitions
    AnimationDefinitions.ApplyAnimationMapping(moduleRef.AnimationDefinitions, animationMap)

    return true
end

return EventAction_PlayAnimations