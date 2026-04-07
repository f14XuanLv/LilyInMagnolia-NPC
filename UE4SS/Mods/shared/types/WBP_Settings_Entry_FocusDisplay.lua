---@meta

---@class UWBP_Settings_Entry_FocusDisplay_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Focused UWidgetAnimation
---@field ContentSlot UNamedSlot
---@field FocusedBG UImage
---@field FocusedBG_1 UImage
---@field Overlay_FocusContainerLeft UOverlay
---@field Overlay_FocusContainerRight UOverlay
local UWBP_Settings_Entry_FocusDisplay_C = {}

---@param Focused boolean
function UWBP_Settings_Entry_FocusDisplay_C:SetFocusDisplay(Focused) end
function UWBP_Settings_Entry_FocusDisplay_C:Construct() end
---@param EntryPoint int32
function UWBP_Settings_Entry_FocusDisplay_C:ExecuteUbergraph_WBP_Settings_Entry_FocusDisplay(EntryPoint) end


