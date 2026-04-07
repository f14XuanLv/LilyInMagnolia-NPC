---@meta

---@class UWBP_WorldSpace_Talk_C : UUserWidgetWorldSpaceText_Talk
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ButtonBlink UWidgetAnimation
---@field HideLine UWidgetAnimation
---@field ShowLine UWidgetAnimation
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field BG UImage
---@field Default UOverlay
---@field Icon_NextCaption UImage
---@field Icon_NextCaption_1 UImage
---@field Img_TalkLine UImage
---@field Img_TalkLine_1 UImage
---@field Img_TalkLine_2 UImage
---@field Img_TalkLine_3 UImage
---@field Img_TalkLine_4 UImage
---@field RichLineText URichTextBlock
---@field Unique UOverlay
---@field WidgetSwitcher_Line UWidgetSwitcher
---@field RandomRange double
---@field LineShown boolean
---@field AutoCompleteTimerHandle FTimerHandle
---@field CurrentTalkParameters FTalkParameters
local UWBP_WorldSpace_Talk_C = {}

function UWBP_WorldSpace_Talk_C:GoToNextLine() end
---@param TalkParameters FTalkParameters
function UWBP_WorldSpace_Talk_C:SetTalk(TalkParameters) end
function UWBP_WorldSpace_Talk_C:OnFinish_97D8E58E4EAFAA92F4AFE8B4BB7C0496() end
function UWBP_WorldSpace_Talk_C:OnFinish_23BA22D7452CDFBA3EC2078431FD4234() end
---@param Text FText
function UWBP_WorldSpace_Talk_C:SetText(Text) end
function UWBP_WorldSpace_Talk_C:OnShow() end
function UWBP_WorldSpace_Talk_C:OnHide() end
---@param SpeakerName FText
function UWBP_WorldSpace_Talk_C:SetSpeakerName(SpeakerName) end
function UWBP_WorldSpace_Talk_C:WidgetAnimationEvt_HideAnim_K2Node_WidgetAnimationEvent_0() end
---@param TalkParameters FTalkParameters
function UWBP_WorldSpace_Talk_C:OnTalk(TalkParameters) end
function UWBP_WorldSpace_Talk_C:OnGoToNextLine() end
function UWBP_WorldSpace_Talk_C:Construct() end
function UWBP_WorldSpace_Talk_C:OnPressConfirm() end
function UWBP_WorldSpace_Talk_C:FinishTalk() end
function UWBP_WorldSpace_Talk_C:Destruct() end
---@param EntryPoint int32
function UWBP_WorldSpace_Talk_C:ExecuteUbergraph_WBP_WorldSpace_Talk(EntryPoint) end


