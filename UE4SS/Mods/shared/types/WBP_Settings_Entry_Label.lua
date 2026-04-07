---@meta

---@class UWBP_Settings_Entry_Label_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field LabelBlock UTextBlock
---@field LabelIcon UImage
---@field LabelScaleBox UScaleBox
---@field OptionSlot UNamedSlot
---@field WBP_Settings_Entry_FocusDisplay UWBP_Settings_Entry_FocusDisplay_C
---@field Label FText
---@field LabelImage UPaperSprite
---@field LabelScaleBoxStretch EStretch::Type
local UWBP_Settings_Entry_Label_C = {}

---@param InStretch EStretch::Type
function UWBP_Settings_Entry_Label_C:SetLabelScaleBoxStretch(InStretch) end
---@param InputPin UPaperSprite
function UWBP_Settings_Entry_Label_C:SetLabelImage(InputPin) end
---@param Focused boolean
function UWBP_Settings_Entry_Label_C:SetFocusDisplay(Focused) end
---@param InText FText
function UWBP_Settings_Entry_Label_C:SetLabel(InText) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Label_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Label_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_Label_C:OnRemovedFromFocusPath(InFocusEvent) end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_Label_C:OnSetIsEnabled(bInIsEnabled) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Label_C:ExecuteUbergraph_WBP_Settings_Entry_Label(EntryPoint) end


