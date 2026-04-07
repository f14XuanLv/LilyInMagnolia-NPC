---@meta

---@class UWBP_WorldSpace_Interact_C : UUserWidgetWorldSpaceText_Interact
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field BG UImage
---@field BloomBox_0 UBloomBox
---@field InteractText UTextBlock
---@field Overlay_TextContainer UOverlay
---@field Color_InteractAvailable FLinearColor
---@field Color_InteractUnavailable FLinearColor
local UWBP_WorldSpace_Interact_C = {}

---@param Text FText
function UWBP_WorldSpace_Interact_C:SetText(Text) end
function UWBP_WorldSpace_Interact_C:WidgetAnimationEvt_HideAnim_K2Node_WidgetAnimationEvent_0() end
function UWBP_WorldSpace_Interact_C:OnHide() end
function UWBP_WorldSpace_Interact_C:OnShow() end
---@param bAvailable boolean
function UWBP_WorldSpace_Interact_C:SetAvailable(bAvailable) end
---@param EntryPoint int32
function UWBP_WorldSpace_Interact_C:ExecuteUbergraph_WBP_WorldSpace_Interact(EntryPoint) end


