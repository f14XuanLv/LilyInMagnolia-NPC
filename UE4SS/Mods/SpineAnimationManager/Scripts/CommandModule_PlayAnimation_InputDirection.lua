-- cpp definition
-- EnderMagnolia/Source/Zion/Public/CommandModule_PlayAnimation_InputDirection.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "AnimationDefinitionList.h"
#include "CommandModule_PlayAnimation.h"
#include "EInputDirection.h"
#include "CommandModule_PlayAnimation_InputDirection.generated.h"

UCLASS(Blueprintable, EditInlineNew)
class UCommandModule_PlayAnimation_InputDirection : public UCommandModule_PlayAnimation {
    GENERATED_BODY()
public:
private:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TMap<EInputDirection, FAnimationDefinitionList> AnimationsForDirections;
    
public:
    UCommandModule_PlayAnimation_InputDirection();

};
]]

-- EnderMagnolia/Source/Zion/Public/AnimationDefinitionList.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "SpineAnimationDefinition.h"
#include "AnimationDefinitionList.generated.h"

USTRUCT(BlueprintType)
struct FAnimationDefinitionList {
    GENERATED_BODY()
public:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> AnimationDefinitions;
    
    ZION_API FAnimationDefinitionList();
};
]]

-- local CommandModule_PlayAnimation_InputDirection_Config = {
--     AnimationDefinitions = {},
--     AnimationsForDirections = {
--         [0] = {},
--         [1] = {},
--         [2] = {},
--         [3] = {},
--         [4] = {},
--         [5] = {},
--         [6] = {},
--         [7] = {},
--         [8] = {}
--     }
-- }

local CommandModule_PlayAnimation_InputDirection = {}

local AnimationDefinitions = require("AnimationDefinitions")

function CommandModule_PlayAnimation_InputDirection.Set_AnimationDefinitions(TArrayRef, newNames)
    return AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
end

function CommandModule_PlayAnimation_InputDirection.Set_AnimationsForDirections(TMapRef, newMappings)
    if not (TMapRef and TMapRef:IsValid() and newMappings) then return false end

    TMapRef:ForEach(function(key, value)
        TArrayRef = value:get().AnimationDefinitions
        newNames = newMappings[key:get()]
        AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
    end)

    return true
end

function CommandModule_PlayAnimation_InputDirection.UpdateAllAnimations(moduleRef, newConfig)
    if not (moduleRef and moduleRef:IsValid() and newConfig) then return false end

    -- update AnimationDefinitions
    CommandModule_PlayAnimation_InputDirection.Set_AnimationDefinitions(moduleRef.AnimationDefinitions, newConfig.AnimationDefinitions)

    -- update AnimationsForDirections
    CommandModule_PlayAnimation_InputDirection.Set_AnimationsForDirections(moduleRef.AnimationsForDirections, newConfig.AnimationsForDirections)

    return true
end

-- For Mapping Mode
function CommandModule_PlayAnimation_InputDirection.ApplyAnimationMapping(moduleRef, animationMap)
    if not (moduleRef and moduleRef:IsValid() and animationMap) then return false end

    -- update AnimationDefinitions
    AnimationDefinitions.ApplyAnimationMapping(moduleRef.AnimationDefinitions, animationMap)

    -- update AnimationsForDirections
    TMapRef = moduleRef.AnimationsForDirections
    TMapRef:ForEach(function(key, value)
        TArrayRef = value:get().AnimationDefinitions
        AnimationDefinitions.ApplyAnimationMapping(TArrayRef, animationMap)
    end)

    return true
end

return CommandModule_PlayAnimation_InputDirection