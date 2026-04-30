-- cpp definition
-- EnderMagnolia/Source/Zion/Public/CommandModule_PlayAnimation.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "AnimationDefinitionList.h"
#include "CommandModule.h"
#include "EMovementSpeedMode.h"
#include "MovementModeData.h"
#include "SpineAnimationDefinition.h"
#include "CommandModule_PlayAnimation.generated.h"

UCLASS(Blueprintable, EditInlineNew)
class ZION_API UCommandModule_PlayAnimation : public UCommandModule {
    GENERATED_BODY()
public:
private:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> AnimationDefinitions;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TMap<FMovementModeData, FAnimationDefinitionList> OverrideForMovementModes;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TMap<EMovementSpeedMode, FAnimationDefinitionList> OverrideForMovementSpeedModes;
    
public:
    UCommandModule_PlayAnimation();

};
]]

-- local CommandModule_PlayAnimation_Config = {
--     AnimationDefinitions = {}
-- }

local CommandModule_PlayAnimation = {}

local AnimationDefinitions = require("AnimationDefinitions")

function CommandModule_PlayAnimation.Set_AnimationDefinitions(TArrayRef, newNames)
    return AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
end

function CommandModule_PlayAnimation.UpdateAllAnimations(moduleRef, newConfig)
    if not (moduleRef and moduleRef:IsValid() and newConfig) then return false end

    -- update AnimationDefinitions
    CommandModule_PlayAnimation.Set_AnimationDefinitions(moduleRef.AnimationDefinitions, newConfig.AnimationDefinitions)

    return true
end

-- For Mapping Mode
function CommandModule_PlayAnimation.ApplyAnimationMapping(moduleRef, animationMap)
    if not (moduleRef and moduleRef:IsValid() and animationMap) then return false end

    -- update AnimationDefinitions
    AnimationDefinitions.ApplyAnimationMapping(moduleRef.AnimationDefinitions, animationMap)

    return true
end

return CommandModule_PlayAnimation