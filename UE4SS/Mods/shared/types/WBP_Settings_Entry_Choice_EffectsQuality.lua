---@meta

---@class UWBP_Settings_Entry_Choice_EffectsQuality_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Choice_Text UWBP_Settings_Entry_Choice_Text_C
---@field CurrIndex int32
---@field EffectsQualities TArray<FTextIntStruct>
local UWBP_Settings_Entry_Choice_EffectsQuality_C = {}

function UWBP_Settings_Entry_Choice_EffectsQuality_C:SortArray() end
function UWBP_Settings_Entry_Choice_EffectsQuality_C:Refresh() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_EffectsQuality_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Settings_Entry_Choice_EffectsQuality_C:RefreshText() end
---@param Index int32
UWBP_Settings_Entry_Choice_EffectsQuality_C['Set Effects Quality from Index'] = function(self, Index) end
function UWBP_Settings_Entry_Choice_EffectsQuality_C:ComputeCurrIndex() end
function UWBP_Settings_Entry_Choice_EffectsQuality_C:Construct() end
function UWBP_Settings_Entry_Choice_EffectsQuality_C:BndEvt__WBP_Settings_Entry_Choice_FPSLimit_WBP_Settings_Entry_Choice_Text_K2Node_ComponentBoundEvent_0_OnLeft__DelegateSignature() end
function UWBP_Settings_Entry_Choice_EffectsQuality_C:BndEvt__WBP_Settings_Entry_Choice_FPSLimit_WBP_Settings_Entry_Choice_Text_K2Node_ComponentBoundEvent_1_OnRight__DelegateSignature() end
---@param bInIsEnabled boolean
function UWBP_Settings_Entry_Choice_EffectsQuality_C:OnSetIsEnabled(bInIsEnabled) end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Choice_EffectsQuality_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_EffectsQuality_C:ExecuteUbergraph_WBP_Settings_Entry_Choice_EffectsQuality(EntryPoint) end


