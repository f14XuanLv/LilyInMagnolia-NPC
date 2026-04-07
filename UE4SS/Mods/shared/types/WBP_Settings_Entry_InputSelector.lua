---@meta

---@class UWBP_Settings_Entry_InputSelector_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Image_182 UImage
---@field KeyText URefreshableRichTextBlock
---@field MouseClickImage UImage
---@field OptionalTextBlock URefreshableRichTextBlock
---@field Overlay_WaitInput UOverlay
---@field WaitKeyText UTextBlock
---@field WBP_Settings_Entry_Label UWBP_Settings_Entry_Label_C
---@field WidgetSwitcher UWidgetSwitcher
---@field Label FText
---@field bIsSelectingKey boolean
---@field IsGamepadKey boolean
---@field bAllowMouseButton boolean
---@field InputDescription FInputDescription
---@field UseOptionalLabel boolean
---@field OptionalLabelFormat FText
---@field OptionalLabelFormatElements TArray<FRichTextInputElement>
---@field InvalidInputTypes TSet<EActionInputType>
---@field Footer_SelectingEntries TArray<FFooterData>
---@field InvalidKeys TArray<FKey>
---@field SE_KeySelection UFMODEvent
---@field SE_KeySelected UFMODEvent
---@field bRightSide boolean
local UWBP_Settings_Entry_InputSelector_C = {}

function UWBP_Settings_Entry_InputSelector_C:RefreshWaitKeyText() end
---@param MyGeometry FGeometry
---@param InAnalogInputEvent FAnalogInputEvent
---@return FEventReply
function UWBP_Settings_Entry_InputSelector_C:OnAnalogValueChanged(MyGeometry, InAnalogInputEvent) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_InputSelector_C:OnKeyDown(MyGeometry, InKeyEvent) end
function UWBP_Settings_Entry_InputSelector_C:SetupOptionalLabel() end
function UWBP_Settings_Entry_InputSelector_C:CancelKeyRemappingProcess() end
---@param NewKey FKey
function UWBP_Settings_Entry_InputSelector_C:RemapKey(NewKey) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_Settings_Entry_InputSelector_C:OnPreviewMouseButtonDown(MyGeometry, MouseEvent) end
---@param NewKey FKey
function UWBP_Settings_Entry_InputSelector_C:RemapUIKey(NewKey) end
---@param NewKey FKey
function UWBP_Settings_Entry_InputSelector_C:RemapActionKey(NewKey) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_InputSelector_C:OnPreviewKeyDown(MyGeometry, InKeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Entry_InputSelector_C:OnPressConfirm(KeyEvent) end
function UWBP_Settings_Entry_InputSelector_C:OnKeySelected() end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_InputSelector_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Entry_InputSelector_C:OnRemovedFromFocusPath(InFocusEvent) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_InputSelector_C:PreConstruct(IsDesignTime) end
function UWBP_Settings_Entry_InputSelector_C:OnSelectKey() end
---@param EntryPoint int32
function UWBP_Settings_Entry_InputSelector_C:ExecuteUbergraph_WBP_Settings_Entry_InputSelector(EntryPoint) end


