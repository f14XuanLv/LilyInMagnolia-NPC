---@meta

---@class UWBP_Scrollbox_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Content UNamedSlot
---@field RetainerBox_218 URetainerBox
---@field ScrollBoxZion UScrollBoxZion
---@field ContentPadding FMargin
---@field ContentHorizontalAlignement EHorizontalAlignment
---@field ContentVerticalAlignement EVerticalAlignment
---@field ConsumeMouseWheel EConsumeMouseWheel
---@field ElementCountPerLine int32
---@field NavigationOrientation EOrientation
local UWBP_Scrollbox_C = {}

---@param Direction EUINavigation
---@param InCustomDelegate FSetScrollNavigationCustomBoundaryInCustomDelegate
function UWBP_Scrollbox_C:SetScrollNavigationCustomBoundary(Direction, InCustomDelegate) end
---@param Direction EUINavigation
---@param Rule EUINavigationRule
function UWBP_Scrollbox_C:SetScrollNavigationRuleBase(Direction, Rule) end
function UWBP_Scrollbox_C:SetupNavigation() end
function UWBP_Scrollbox_C:ScrollToStart() end
---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDestination EDescendantScrollDestination
---@param Padding double
function UWBP_Scrollbox_C:ScrollWidgetIntoView(WidgetToFind, AnimateScroll, ScrollDestination, Padding) end
---@param IsDesignTime boolean
function UWBP_Scrollbox_C:PreConstruct(IsDesignTime) end
---@param FocusedWidgetHost UNativeWidgetHost
---@param FocusEvent FFocusEvent
function UWBP_Scrollbox_C:OnChildFocused(FocusedWidgetHost, FocusEvent) end
---@param EntryPoint int32
function UWBP_Scrollbox_C:ExecuteUbergraph_WBP_Scrollbox(EntryPoint) end


