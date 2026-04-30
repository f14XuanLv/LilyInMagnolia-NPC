-- cpp definition
-- EnderMagnolia/Source/Zion/Public/SpineAnimationDefinition.h
--[[
#pragma once
#include "CoreMinimal.h"
#include "RootMotionSettings.h"
#include "ESpineAnimationPlayType.h"
#include "SpineAnimationDelegateDelegate.h"
#include "SpineAnimationDefinition.generated.h"

USTRUCT(BlueprintType)
struct FSpineAnimationDefinition {
    GENERATED_BODY()
public:
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FString AnimationName;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    ESpineAnimationPlayType PlayType;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bOverrideMixDuration;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float MixDurationOverride;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bOverrideStartTime;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float StartTimeOverride;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bOverrideEndTime;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    float EndTimeOverride;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    bool bUseRootMotion;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FRootMotionSettings RootMotionSettings;
    
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    FSpineAnimationDelegate OnAnimationEnd;
    
    ZION_API FSpineAnimationDefinition();
};
]]

local AnimationDefinition = {}

function AnimationDefinition.GetAnimationName(structRef)
    if not structRef then return nil end
    local animName = structRef.AnimationName
    if animName then
        return animName:ToString()
    end
    return nil
end

function AnimationDefinition.SetAnimationName(structRef, newName)
    if not structRef then return false end
    -- print(string.format("Original Animation Name %s Will Be Changed To %s\n", structRef.AnimationName:ToString(), newName))
    structRef.AnimationName = newName
    return true
end

return AnimationDefinition