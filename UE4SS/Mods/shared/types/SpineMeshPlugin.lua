---@meta

---@class FSpineMeshTangent
---@field TangentX FVector
---@field bFlipTangentY boolean
local FSpineMeshTangent = {}



---@class FSpineMeshUpdateSettings
---@field bUpdatePositionData boolean
---@field bUpdateColorData boolean
---@field bUpdateUVData boolean
local FSpineMeshUpdateSettings = {}



---@class FSpineMeshVertex
---@field Position FVector
---@field Normal FVector
---@field Tangent FSpineMeshTangent
---@field Color FColor
---@field UV0 FVector2D
---@field UV1 FVector2D
---@field UV2 FVector2D
---@field UV3 FVector2D
local FSpineMeshVertex = {}



---@class USpineMeshComponent : UMeshComponent
---@field MeshUVDensity float
local USpineMeshComponent = {}

---@param SectionIndex int32
---@param bNewVisibility boolean
function USpineMeshComponent:SetMeshSectionVisible(SectionIndex, bNewVisibility) end
---@param SectionIndex int32
---@return boolean
function USpineMeshComponent:IsMeshSectionVisible(SectionIndex) end
---@return int32
function USpineMeshComponent:GetNumSections() end
---@param SectionIndex int32
---@param bUpdateBounds boolean
function USpineMeshComponent:ClearMeshSection(SectionIndex, bUpdateBounds) end
function USpineMeshComponent:ClearAllMeshSections() end


---@class USpineMeshCopyComponent : UMeshComponent
---@field MaterialOverride UMaterialInterface
---@field TextureParameterName FName
---@field SectionUpdateSettings FSpineMeshUpdateSettings
---@field bAutoCopy boolean
---@field CachedMaster USpineMeshComponent
local USpineMeshCopyComponent = {}

function USpineMeshCopyComponent:Copy() end


---@class USpineMeshMaskComponent : USpineMeshCopyComponent
---@field ScaleOffsetParameterName FName
---@field ScaleOffset float
---@field UseAlternatePivotComputationParameterName FName
---@field bUseAlternatePivotComputation boolean
local USpineMeshMaskComponent = {}

---@param InScaleOffset float
function USpineMeshMaskComponent:SetScaleOffset(InScaleOffset) end


