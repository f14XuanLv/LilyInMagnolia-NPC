---@meta

---@class UWBP_Settings_Entry_Choice_InputStyle_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field TextAuto UTextBlock
---@field TextStyle URefreshableRichTextBlock
---@field WBP_Settings_Entry_Choice UWBP_Settings_Entry_Choice_C
---@field WidgetSwitches UWidgetSwitcher
---@field InputStyles TArray<EInputStyle>
---@field CurrentIndex int32
local UWBP_Settings_Entry_Choice_InputStyle_C = {}

function UWBP_Settings_Entry_Choice_InputStyle_C:RefreshChoiceIndex() end
function UWBP_Settings_Entry_Choice_InputStyle_C:InitializeForCurrentSettings() end
function UWBP_Settings_Entry_Choice_InputStyle_C:ResetToDefault() end
---@param NewIndex int32
function UWBP_Settings_Entry_Choice_InputStyle_C:SetInputStyleOverrideFromIndex(NewIndex) end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_InputStyle_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_Entry_Choice_InputStyle_C:Construct() end
function UWBP_Settings_Entry_Choice_InputStyle_C:BndEvt__WBP_Settings_Entry_Choice_InputStyle_WBP_Settings_Entry_Choice_K2Node_ComponentBoundEvent_2_OnLeft__DelegateSignature() end
function UWBP_Settings_Entry_Choice_InputStyle_C:BndEvt__WBP_Settings_Entry_Choice_InputStyle_WBP_Settings_Entry_Choice_K2Node_ComponentBoundEvent_3_OnRight__DelegateSignature() end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Choice_InputStyle_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_InputStyle_C:ExecuteUbergraph_WBP_Settings_Entry_Choice_InputStyle(EntryPoint) end


