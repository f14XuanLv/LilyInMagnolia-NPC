---@meta

---@class UWBP_WorldSpace_FieldMessage_C : UUserWidgetWorldSpaceText
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideLine UWidgetAnimation
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field LineText UTextBlock
---@field IsLineVisible boolean
local UWBP_WorldSpace_FieldMessage_C = {}

function UWBP_WorldSpace_FieldMessage_C:Finished_D75721384C7EE3D24F7D959A98BDA4EC() end
---@param Text FText
function UWBP_WorldSpace_FieldMessage_C:SetText(Text) end
function UWBP_WorldSpace_FieldMessage_C:OnHide() end
function UWBP_WorldSpace_FieldMessage_C:OnShow() end
function UWBP_WorldSpace_FieldMessage_C:WidgetAnimationEvt_HideAnim_K2Node_WidgetAnimationEvent_1() end
function UWBP_WorldSpace_FieldMessage_C:WidgetAnimationEvt_ShowAnim_K2Node_WidgetAnimationEvent_0() end
---@param EntryPoint int32
function UWBP_WorldSpace_FieldMessage_C:ExecuteUbergraph_WBP_WorldSpace_FieldMessage(EntryPoint) end


