---@meta

---@class UWBP_Settings_Gamma_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field BG UImage
---@field Bright UImage
---@field Dark UImage
---@field WBP_Button_Generic UWBP_Button_Generic_C
---@field WBP_Footer UWBP_Footer_C
---@field WBP_Settings_Entry_Slider UWBP_Settings_Entry_Slider_C
---@field OnClosed FWBP_Settings_Gamma_COnClosed
---@field ResetSoundEvent UFMODEvent
---@field PrevGammaSettings float
local UWBP_Settings_Gamma_C = {}

---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Gamma_C:OnPressCancel(KeyEvent) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@return FEventReply
function UWBP_Settings_Gamma_C:OnMouseButtonDown(MyGeometry, MouseEvent) end
function UWBP_Settings_Gamma_C:RefreshSliderValue() end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Gamma_C:OnPressConfirm(KeyEvent) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Gamma_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_Gamma_C:OnPressContext(KeyEvent) end
function UWBP_Settings_Gamma_C:OnFinish_72C7DC1544F90D6FD9C218841E1FDCC6() end
function UWBP_Settings_Gamma_C:OnFinish_72C7DC1544F90D6FD9C21884264FE8F4() end
function UWBP_Settings_Gamma_C:OnResetToDefault() end
---@param Value double
function UWBP_Settings_Gamma_C:BndEvt__WBP_Settings_Gamma_WBP_Settings_Entry_Slider_K2Node_ComponentBoundEvent_0_OnSliderValueChanged__DelegateSignature(Value) end
---@param bConfirmed boolean
function UWBP_Settings_Gamma_C:Close(bConfirmed) end
function UWBP_Settings_Gamma_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_Settings_Gamma_C:BndEvt__WBP_Settings_Gamma_WBP_Button_Generic_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Settings_Gamma_C:OnPressedCancel() end
---@param EntryPoint int32
function UWBP_Settings_Gamma_C:ExecuteUbergraph_WBP_Settings_Gamma(EntryPoint) end
---@param bConfirmed boolean
function UWBP_Settings_Gamma_C:OnClosed__DelegateSignature(bConfirmed) end


