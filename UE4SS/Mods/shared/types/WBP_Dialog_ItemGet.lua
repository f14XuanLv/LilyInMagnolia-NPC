---@meta

---@class UWBP_Dialog_ItemGet_C : UUserWidgetItemGet
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAnim UWidgetAnimation
---@field ShowAnim UWidgetAnimation
---@field Base_Black UImage
---@field BG UImage
---@field CanvasPanel_Generic UCanvasPanel
---@field CanvasPanel_Tips UCanvasPanel
---@field Img_Crest UImage
---@field Img_Crest_Spirit UImage
---@field Img_Item UImage
---@field Img_Spirit UImage
---@field ItemCategory UTextBlock
---@field ItemName UTextBlock
---@field Overlay_IconContainer UOverlay
---@field Overlay_SpiritconContainer UOverlay
---@field RefreshableRichTextBlock_Description URefreshableRichTextBlock
---@field RefreshableRichTextBlock_Flavor URefreshableRichTextBlock
---@field RefreshableRichTextBlock_TipDescription URefreshableRichTextBlock
---@field SubLine UImage
---@field SubLine_1 UImage
---@field TipCategory UTextBlock
---@field TipName UTextBlock
---@field WBP_Button_Generic_OK UWBP_Button_Generic_C
---@field WBP_Button_Generic_OK_Tip UWBP_Button_Generic_C
---@field WBP_Footer UWBP_Footer_C
---@field WBP_SeparateLine_1 UWBP_SeparateLine_C
---@field WidgetSwitcher_Icon UWidgetSwitcher
---@field WidgetSwitcher_Type UWidgetSwitcher
---@field ItemData FInventoryItemData
local UWBP_Dialog_ItemGet_C = {}

function UWBP_Dialog_ItemGet_C:PlaySE() end
---@param Index EInventoryItemType
function UWBP_Dialog_ItemGet_C:SetupElementVisibility(Index) end
---@param InputPin FText
function UWBP_Dialog_ItemGet_C:SetName(InputPin) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Dialog_ItemGet_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Dialog_ItemGet_C:Initialize() end
function UWBP_Dialog_ItemGet_C:OnFinish_72C7DC1544F90D6FD9C21884942544CE() end
function UWBP_Dialog_ItemGet_C:OnFinish_72C7DC1544F90D6FD9C218848AF59B62() end
function UWBP_Dialog_ItemGet_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_ItemGet_C:BndEvt__WBP_Dialog_ItemGet_WBP_Button_Generic_OK_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Dialog_ItemGet_C:BndEvt__WBP_Dialog_ItemGet_WBP_Button_Generic_OK_1_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
---@param EntryPoint int32
function UWBP_Dialog_ItemGet_C:ExecuteUbergraph_WBP_Dialog_ItemGet(EntryPoint) end


