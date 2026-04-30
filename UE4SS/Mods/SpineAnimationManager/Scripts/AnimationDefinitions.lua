-- cpp definition
--[[
    UPROPERTY(BlueprintReadWrite, EditAnywhere, meta=(AllowPrivateAccess=true))
    TArray<FSpineAnimationDefinition> AnimationDefinitions;
]]

local AnimationDefinitions = {}

local AnimationDefinition = require("AnimationDefinition")

function AnimationDefinitions.GetAnimationNames(TArrayRef)
    if not (TArrayRef and TArrayRef:IsValid()) then return nil end
    local names = {}
    TArrayRef:ForEach(function(index, elem)
        local structRef = elem:get()
        names[index] = AnimationDefinition.GetAnimationName(structRef)
    end)
    return names
end

function AnimationDefinitions.SetAnimationNames(TArrayRef, newNames)
    if not (TArrayRef and TArrayRef:IsValid() and newNames) then return false end

    -- Check if array sizes match
    if TArrayRef:GetArrayNum() ~= #newNames then
        print("Array size mismatch")
        return false
    end

    TArrayRef:ForEach(function(index, elem)
        local structRef = elem:get()
        AnimationDefinition.SetAnimationName(structRef, newNames[index])
    end)

    return true
end

-- For Mapping Mode
function AnimationDefinitions.ApplyAnimationMapping(TArrayRef, animationMap)
    if not (TArrayRef and TArrayRef:IsValid() and animationMap) then return false end

    -- print("====== Processing An AnimationDefinitions Start ======")
    TArrayRef:ForEach(function(index, elem)
        local structRef = elem:get()
        if structRef then
            local currentName = structRef.AnimationName:ToString()
            local newName = animationMap[currentName]
            
            -- If mapping not found, print warning and set to idle
            if newName then
                structRef.AnimationName = newName
                print(string.format("[Info] Mapped animation: '%s' -> '%s'\n", currentName, newName))
            else
                print(string.format("[Warning] Animation mapping not found: '%s' -> Using default 'idle'\n", currentName))
                structRef.AnimationName = "idle"
            end
        end
    end)
    -- print("======= Processing An AnimationDefinitions End =======")

    return true
end

return AnimationDefinitions