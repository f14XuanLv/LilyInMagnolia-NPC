---@meta

---@class UWBP_Button_Tab_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hovered UWidgetAnimation
---@field ButtonText UTextBlock
---@field Icon UImage
---@field Overlay_HoveredContainer UOverlay
---@field Overlay_SelectedContainer UOverlay
---@field SelectedImage UImage
---@field SizeBox_0 USizeBox
---@field OnPressed FWBP_Button_Tab_COnPressed
---@field WidthOverride float
---@field Text FText
---@field Sprite UPaperSprite
---@field Payload int32
local UWBP_Button_Tab_C = {}

---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Button_Tab_C:OnPressConfirm(KeyEvent) end
function UWBP_Button_Tab_C:SetIcon() end
---@param InText FText
function UWBP_Button_Tab_C:SetText(InText) end
---@param bHovered boolean
function UWBP_Button_Tab_C:SetHoveredState(bHovered) end
---@param Selected boolean
function UWBP_Button_Tab_C:SetSelected(Selected) end
function UWBP_Button_Tab_C:Construct() end
---@param IsDesignTime boolean
function UWBP_Button_Tab_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UWBP_Button_Tab_C:OnMouseEnter(MyGeometry, MouseEvent) end
---@param MouseEvent FPointerEvent
function UWBP_Button_Tab_C:OnMouseLeave(MouseEvent) end
---@param EntryPoint int32
function UWBP_Button_Tab_C:ExecuteUbergraph_WBP_Button_Tab(EntryPoint) end
---@param KeyEvent FKeyEvent
---@param PressedButtonTab UWBP_Button_Tab_C
function UWBP_Button_Tab_C:OnPressed__DelegateSignature(KeyEvent, PressedButtonTab) end


