---@meta

---@class UWBP_Footer_Entry_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field InputRichText URefreshableRichTextBlock
---@field LabelText UTextBlock
---@field FooterData FFooterData
local UWBP_Footer_Entry_C = {}

---@param IsDesignTime boolean
function UWBP_Footer_Entry_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Footer_Entry_C:ExecuteUbergraph_WBP_Footer_Entry(EntryPoint) end


