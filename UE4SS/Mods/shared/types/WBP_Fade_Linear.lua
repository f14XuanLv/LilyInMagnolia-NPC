---@meta

---@class UWBP_Fade_Linear_C : UUserWidgetFade
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimFadeOut UWidgetAnimation
---@field AnimFadeIn UWidgetAnimation
---@field FadeImage UImage
local UWBP_Fade_Linear_C = {}

---@param Animation UWidgetAnimation
---@param FadeParameters FFadeParameters
function UWBP_Fade_Linear_C:PlayFadeAnimation(Animation, FadeParameters) end
---@param FadeParameters FFadeParameters
function UWBP_Fade_Linear_C:SetupFade(FadeParameters) end
---@param FadeParameters FFadeParameters
function UWBP_Fade_Linear_C:LaunchFadeIn(FadeParameters) end
function UWBP_Fade_Linear_C:WidgetAnimationEvt_AnimFadeIn_K2Node_WidgetAnimationEvent_0() end
---@param FadeParameters FFadeParameters
function UWBP_Fade_Linear_C:LaunchFadeOut(FadeParameters) end
function UWBP_Fade_Linear_C:WidgetAnimationEvt_AnimFadeOut_K2Node_WidgetAnimationEvent_1() end
---@param FadeParameters FFadeParameters
function UWBP_Fade_Linear_C:SetupFadeIn(FadeParameters) end
---@param EntryPoint int32
function UWBP_Fade_Linear_C:ExecuteUbergraph_WBP_Fade_Linear(EntryPoint) end


