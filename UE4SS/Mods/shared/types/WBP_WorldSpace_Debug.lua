---@meta

---@class UWBP_WorldSpace_Debug_C : UUserWidgetWorldSpaceDebug
---@field UberGraphFrame FPointerToUberGraphFrame
---@field VerticalBox_74 UVerticalBox
---@field TextBlockForTags TMap<FName, UWBP_DebugElement_Text_C>
---@field NewVar UTextBlock
local UWBP_WorldSpace_Debug_C = {}

---@param Tag FName
---@param Value UWBP_DebugElement_Text_C
UWBP_WorldSpace_Debug_C['Get Text Block from Tag'] = function(self, Tag, Value) end
---@param Tag FName
---@param Text FString
function UWBP_WorldSpace_Debug_C:SetTextForTag(Tag, Text) end
---@param Tag FName
function UWBP_WorldSpace_Debug_C:ClearTextForTag(Tag) end
---@param EntryPoint int32
function UWBP_WorldSpace_Debug_C:ExecuteUbergraph_WBP_WorldSpace_Debug(EntryPoint) end


