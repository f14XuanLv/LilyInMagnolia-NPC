---@meta

---@class UWBP_Dialog_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG UImage
---@field ButtonsContainerSlot UNamedSlot
---@field ImageSlot UNamedSlot
---@field TextBlock_153 UTextBlock
---@field TopContainerSlot UNamedSlot
---@field WBP_Footer UWBP_Footer_C
---@field Message FText
---@field ['Footer Data List'] TArray<FFooterData>
local UWBP_Dialog_C = {}

---@param InText FText
function UWBP_Dialog_C:SetMessageText(InText) end
---@param IsDesignTime boolean
function UWBP_Dialog_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Dialog_C:ExecuteUbergraph_WBP_Dialog(EntryPoint) end


