---@meta

---@class UWBP_Settings_Entry_Choice_AspectRatio_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field WBP_Settings_Entry_Choice_Text UWBP_Settings_Entry_Choice_Text_C
---@field CurrentAspectRatioIndex int32
---@field OnChanged FWBP_Settings_Entry_Choice_AspectRatio_COnChanged
---@field LabelText FText
---@field AspectRatios TArray<EConstraintCameraAspectRatio>
---@field AspectRatioTextMap TMap<EConstraintCameraAspectRatio, FText>
---@field IsForUI boolean
local UWBP_Settings_Entry_Choice_AspectRatio_C = {}

---@param ConstraintAspectRatio EConstraintCameraAspectRatio
function UWBP_Settings_Entry_Choice_AspectRatio_C:GetConstraintAspectRatio(ConstraintAspectRatio) end
function UWBP_Settings_Entry_Choice_AspectRatio_C:RefreshAspectRatioChoices() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Settings_Entry_Choice_AspectRatio_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param ResolutionIndex int32
function UWBP_Settings_Entry_Choice_AspectRatio_C:SetAspectRatio(ResolutionIndex) end
function UWBP_Settings_Entry_Choice_AspectRatio_C:RefreshText() end
function UWBP_Settings_Entry_Choice_AspectRatio_C:ComputeCurrentAspectRatioIndex() end
function UWBP_Settings_Entry_Choice_AspectRatio_C:Construct() end
function UWBP_Settings_Entry_Choice_AspectRatio_C:BndEvt__WBP_Settings_Entry_Choice_Resolution_WBP_Settings_Entry_Choice_Text_K2Node_ComponentBoundEvent_2_OnLeft__DelegateSignature() end
function UWBP_Settings_Entry_Choice_AspectRatio_C:BndEvt__WBP_Settings_Entry_Choice_Resolution_WBP_Settings_Entry_Choice_Text_K2Node_ComponentBoundEvent_3_OnRight__DelegateSignature() end
---@param IsDesignTime boolean
function UWBP_Settings_Entry_Choice_AspectRatio_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UWBP_Settings_Entry_Choice_AspectRatio_C:ExecuteUbergraph_WBP_Settings_Entry_Choice_AspectRatio(EntryPoint) end
function UWBP_Settings_Entry_Choice_AspectRatio_C:OnChanged__DelegateSignature() end


