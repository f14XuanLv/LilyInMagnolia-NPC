---@meta

---@class UWBP_Settings_Page_Gamepad_C : UWBP_Settings_Page_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field NoGamepadText UTextBlock
---@field Overlay_GamepadContainer UOverlay
---@field Overlay_NoGamepadContainer UOverlay
---@field WBP_Button_Generic_RevertToDefault UWBP_Button_Generic_C
---@field WBP_SeparateLine2 UWBP_SeparateLine2_C
---@field WBP_SeparateLine2_1 UWBP_SeparateLine2_C
---@field WBP_Settings_Entry_Choice_InputStyle UWBP_Settings_Entry_Choice_InputStyle_C
---@field WBP_Settings_Entry_InputSelector_Attack_A UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Attack_B UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Attack_C UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Attack_D UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Dodge UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Heal UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Interact UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Jump UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Minimap UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_Special_Modifier UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_Cancel UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_Confirm UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_Context UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_ContextAlt UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_Next UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_NextAlt UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_Prev UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_InputSelector_UI_PrevAlt UWBP_Settings_Entry_InputSelector_C
---@field WBP_Settings_Entry_Slider_DeadZone_LeftStick UWBP_Settings_Entry_Slider_DeadZone_C
---@field WBP_Settings_Entry_Slider_DeadZone_RightStick UWBP_Settings_Entry_Slider_DeadZone_C
---@field WBP_Settings_Entry_Slider_Vibration UWBP_Settings_Entry_Slider_C
---@field WidgetSwitcher UWidgetSwitcher
---@field WrapBox_GameInputs UWrapBox
---@field WrapBox_UIInputs UWrapBox
local UWBP_Settings_Page_Gamepad_C = {}

---@param Target UPanelWidget
---@param ElementPerLine int32
function UWBP_Settings_Page_Gamepad_C:SetupCustomNavigation(Target, ElementPerLine) end
function UWBP_Settings_Page_Gamepad_C:SetNoGamepadExplanation() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Page_Gamepad_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_Page_Gamepad_C:ResetToDefault() end
function UWBP_Settings_Page_Gamepad_C:SetupPage() end
---@param ForceFocus boolean
function UWBP_Settings_Page_Gamepad_C:RefreshWidgetSwitcher(ForceFocus) end
function UWBP_Settings_Page_Gamepad_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_Settings_Page_Gamepad_C:BndEvt__WBP_Settings_Page_Keyboard_WBP_Button_Generic_RevertToDefault_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Settings_Page_Gamepad_C:OnGamepadConnectionChanged() end
function UWBP_Settings_Page_Gamepad_C:Destruct() end
---@param Value double
function UWBP_Settings_Page_Gamepad_C:BndEvt__WBP_Settings_Page_Gamepad_WBP_Settings_Entry_Slider_K2Node_ComponentBoundEvent_1_OnSliderValueChanged__DelegateSignature(Value) end
function UWBP_Settings_Page_Gamepad_C:OnConfirmResetToDefault() end
---@param IsDesignTime boolean
function UWBP_Settings_Page_Gamepad_C:PreConstruct(IsDesignTime) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_Page_Gamepad_C:OnAddedToFocusPath(InFocusEvent) end
---@param EntryPoint int32
function UWBP_Settings_Page_Gamepad_C:ExecuteUbergraph_WBP_Settings_Page_Gamepad(EntryPoint) end


