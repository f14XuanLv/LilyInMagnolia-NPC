---@meta

---@class UStructUtilsFunctionLibrary : UBlueprintFunctionLibrary
local UStructUtilsFunctionLibrary = {}

---@param InstancedStruct FInstancedStruct
---@param Value int32
function UStructUtilsFunctionLibrary:SetInstancedStructValue(InstancedStruct, Value) end
---@param InstancedStruct FInstancedStruct
---@param StructType UScriptStruct
function UStructUtilsFunctionLibrary:Reset(InstancedStruct, StructType) end
---@param A FInstancedStruct
---@param B FInstancedStruct
---@return boolean
function UStructUtilsFunctionLibrary:NotEqual_InstancedStruct(A, B) end
---@param Value int32
---@return FInstancedStruct
function UStructUtilsFunctionLibrary:MakeInstancedStruct(Value) end
---@param InstancedStruct FInstancedStruct
---@return boolean
function UStructUtilsFunctionLibrary:IsValid_InstancedStruct(InstancedStruct) end
---@param InstancedStruct FInstancedStruct
---@return EStructUtilsResult
function UStructUtilsFunctionLibrary:IsInstancedStructValid(InstancedStruct) end
---@param ExecResult EStructUtilsResult
---@param InstancedStruct FInstancedStruct
---@param Value int32
function UStructUtilsFunctionLibrary:GetInstancedStructValue(ExecResult, InstancedStruct, Value) end
---@param A FInstancedStruct
---@param B FInstancedStruct
---@return boolean
function UStructUtilsFunctionLibrary:EqualEqual_InstancedStruct(A, B) end


