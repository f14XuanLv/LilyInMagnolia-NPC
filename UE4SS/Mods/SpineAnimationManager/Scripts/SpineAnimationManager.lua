local SpineAnimationManager = {}

local ClassModules = {
    CommandModule_PlayAnimation = require("CommandModule_PlayAnimation"),
    CommandModule_PlayAnimation_InputDirection = require("CommandModule_PlayAnimation_InputDirection"),
    EventAction_PlayAnimations = require("EventAction_PlayAnimations"),
    EventAction_PlayRandomAnimations = require("EventAction_PlayRandomAnimations"),
    SpineAnimatorComponent = require("SpineAnimatorComponent"),
}

-- 从 FullName 中提取类名
-- FullName 格式通常为: "ClassName /Path/To/Object.Object:Property"
local function ExtractClassName(fullName)
    -- 提取第一个空格前的部分作为类名
    local className = fullName:match("^([^%s]+)")
    return className
end

function SpineAnimationManager.UpdateAllAnimations(objRef, newConfig)
    if not (objRef and objRef:IsValid() and newConfig) then return false end
    
    local fullName = objRef:GetFullName()
    if not fullName then return false end
    
    local className = ExtractClassName(fullName)
    local targetModule = ClassModules[className]
    
    if targetModule and targetModule.UpdateAllAnimations then
        return targetModule.UpdateAllAnimations(objRef, newConfig)
    end
    
    print("[SpineAnimationManager] Unsupported object for update: " .. fullName .. " (class: " .. tostring(className) .. ")\n")
    return false
end

function SpineAnimationManager.ApplyAnimationMapping(objRef, animationMap)
    if not (objRef and objRef:IsValid() and animationMap) then return false end
    
    local fullName = objRef:GetFullName()
    if not fullName then return false end
    
    local className = ExtractClassName(fullName)
    local targetModule = ClassModules[className]
    
    if targetModule and targetModule.ApplyAnimationMapping then
        return targetModule.ApplyAnimationMapping(objRef, animationMap)
    end
    
    print("[SpineAnimationManager] Unsupported object: " .. fullName .. " (class: " .. tostring(className) .. ")\n")
    return false
end

return SpineAnimationManager