---@meta

---@class UWBP_DemoStart_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Show UWidgetAnimation
local UWBP_DemoStart_C = {}

---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_DemoStart_C:OnPressConfirm(KeyEvent) end
function UWBP_DemoStart_C:OnConfirm() end
function UWBP_DemoStart_C:Construct() end
---@param EntryPoint int32
function UWBP_DemoStart_C:ExecuteUbergraph_WBP_DemoStart(EntryPoint) end


