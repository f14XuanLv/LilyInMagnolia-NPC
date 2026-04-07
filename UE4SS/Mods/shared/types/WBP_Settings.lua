---@meta

---@class UWBP_Settings_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field BG UImage
---@field TabHolder UWrapBox
---@field TabLine UImage
---@field WBP_Explanation UWBP_Explanation_C
---@field WBP_Footer UWBP_Footer_C
---@field WBP_Scrollbox UWBP_Scrollbox_C
---@field WBP_Settings_Page_Game UWBP_Settings_Page_Game_C
---@field WBP_Settings_Page_Gamepad UWBP_Settings_Page_Gamepad_C
---@field WBP_Settings_Page_Keyboard UWBP_Settings_Page_Keyboard_C
---@field WBP_Settings_Page_Language UWBP_Settings_Page_Language_C
---@field WBP_Settings_Page_Sound UWBP_Settings_Page_Sound_C
---@field WBP_Settings_Page_Video UWBP_Settings_Page_Video_C
---@field WBP_Settings_Tab_Audio UWBP_GameMenu_Tab_C
---@field WBP_Settings_Tab_Game UWBP_GameMenu_Tab_C
---@field WBP_Settings_Tab_Gamepad UWBP_GameMenu_Tab_C
---@field WBP_Settings_Tab_Keyboard UWBP_GameMenu_Tab_C
---@field WBP_Settings_Tab_Language UWBP_GameMenu_Tab_C
---@field WBP_Settings_Tab_Video UWBP_GameMenu_Tab_C
---@field WidgetSwitcher UWidgetSwitcher
---@field SE_Tab UFMODEvent
---@field Tabs TArray<UWBP_GameMenu_Tab_C>
local UWBP_Settings_C = {}

function UWBP_Settings_C:RefreshTabSelection() end
function UWBP_Settings_C:SetupTabs() end
---@param PageOffset int32
---@param NewPageIndex int32
function UWBP_Settings_C:GetNewPageIndex(PageOffset, NewPageIndex) end
---@param PageIndex int32
function UWBP_Settings_C:GoToPage(PageIndex) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_C:OnPressNext(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_C:OnPressPrevious(KeyEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Settings_C:OnPressCancel(KeyEvent) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_C:OnFinish_35A5AFFB4565480F90DB9B89C2F29C9F() end
function UWBP_Settings_C:OnFinish_6702339C46412111223AB2824E7C73B9() end
function UWBP_Settings_C:Close() end
function UWBP_Settings_C:Construct() end
---@param KeyEvent FKeyEvent
---@param PressedButtonTab UWBP_Button_Tab_C
function UWBP_Settings_C:OnPressedTab(KeyEvent, PressedButtonTab) end
---@param InFocusEvent FFocusEvent
function UWBP_Settings_C:OnAddedToFocusPath(InFocusEvent) end
---@param KeyEvent FKeyEvent
---@param PressedButtonTab UWBP_GameMenu_Tab_C
function UWBP_Settings_C:OnPressedNewTab(KeyEvent, PressedButtonTab) end
---@param FocusedWidgetHost UNativeWidgetHost
---@param FocusEvent FFocusEvent
function UWBP_Settings_C:OnChildFocused(FocusedWidgetHost, FocusEvent) end
---@param IsDesignTime boolean
function UWBP_Settings_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Settings_C:ExecuteUbergraph_WBP_Settings(EntryPoint) end


