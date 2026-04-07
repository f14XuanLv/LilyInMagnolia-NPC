---@meta

---@class UWBP_GameMenu_Tab_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hovered UWidgetAnimation
---@field cursor_out UWidgetAnimation
---@field cursor_in UWidgetAnimation
---@field ButtonText UTextBlock
---@field Icon_New UImage
---@field Image_116 UImage
---@field NiagaraSystemWidget_165 UNiagaraSystemWidget
---@field Overlay_HoveredContainer UCanvasPanel
---@field WidgetSwitcher_Icon UWidgetSwitcher
---@field OnPressed FWBP_GameMenu_Tab_COnPressed
---@field Text FText
---@field bSelected boolean
local UWBP_GameMenu_Tab_C = {}

---@param Text FText
function UWBP_GameMenu_Tab_C:SetText(Text) end
---@param bLocked boolean
function UWBP_GameMenu_Tab_C:SetLocked(bLocked) end
---@param bHovered boolean
function UWBP_GameMenu_Tab_C:SetHoveredState(bHovered) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_GameMenu_Tab_C:OnPressConfirm(KeyEvent) end
---@param Selected boolean
function UWBP_GameMenu_Tab_C:SetSelected(Selected) end
function UWBP_GameMenu_Tab_C:Construct() end
---@param IsDesignTime boolean
function UWBP_GameMenu_Tab_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UWBP_GameMenu_Tab_C:OnMouseEnter(MyGeometry, MouseEvent) end
---@param MouseEvent FPointerEvent
function UWBP_GameMenu_Tab_C:OnMouseLeave(MouseEvent) end
---@param bInIsEnabled boolean
function UWBP_GameMenu_Tab_C:OnSetIsEnabled(bInIsEnabled) end
---@param EntryPoint int32
function UWBP_GameMenu_Tab_C:ExecuteUbergraph_WBP_GameMenu_Tab(EntryPoint) end
---@param KeyEvent FKeyEvent
---@param PressedButtonTab UWBP_GameMenu_Tab_C
function UWBP_GameMenu_Tab_C:OnPressed__DelegateSignature(KeyEvent, PressedButtonTab) end


