---@meta

---@class UWBP_Slider_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ProgressBar UProgressBar
---@field Slider USlider
---@field OnValueChanged FWBP_Slider_COnValueChanged
---@field bMouseUseStep boolean
local UWBP_Slider_C = {}

---@param bMouseUseStep boolean
function UWBP_Slider_C:SetMouseUseStep(bMouseUseStep) end
---@param Step_Size float
function UWBP_Slider_C:GetStepSize(Step_Size) end
---@return float
function UWBP_Slider_C:GetValue() end
---@param Max_Value float
function UWBP_Slider_C:GetMaxValue(Max_Value) end
---@param Min_Value float
function UWBP_Slider_C:GetMinValue(Min_Value) end
---@param Step_Size float
function UWBP_Slider_C:SetStepSize(Step_Size) end
---@param Min float
---@param Max float
function UWBP_Slider_C:SetMinMaxValue(Min, Max) end
---@param InValue float
function UWBP_Slider_C:SetValue(InValue) end
---@param Value float
function UWBP_Slider_C:BndEvt__WBP_Slider_Slider_K2Node_ComponentBoundEvent_0_OnFloatValueChangedEvent__DelegateSignature(Value) end
---@param EntryPoint int32
function UWBP_Slider_C:ExecuteUbergraph_WBP_Slider(EntryPoint) end
---@param Value double
function UWBP_Slider_C:OnValueChanged__DelegateSignature(Value) end


