---@meta

---@class FDataflowCollectionAddScalarVertexPropertyNode : FDataflowNode
---@field Collection FManagedArrayCollection
---@field Name FString
---@field VertexWeights TArray<float>
local FDataflowCollectionAddScalarVertexPropertyNode = {}



---@class FFloatOverrideDataflowNode : FDataflowNode
---@field PropertyName FName
---@field KeyName FName
---@field ValueOut float
local FFloatOverrideDataflowNode = {}



---@class FGetSkeletalMeshDataflowNode : FDataflowNode
---@field SkeletalMesh USkeletalMesh
---@field PropertyName FName
local FGetSkeletalMeshDataflowNode = {}



---@class FGetSkeletonDataflowNode : FDataflowNode
---@field Skeleton USkeleton
---@field PropertyName FName
local FGetSkeletonDataflowNode = {}



---@class FGetStaticMeshDataflowNode : FDataflowNode
---@field StaticMesh UStaticMesh
---@field PropertyName FName
local FGetStaticMeshDataflowNode = {}



---@class FSelectionSetDataflowNode : FDataflowNode
---@field Indices FString
---@field IndicesOut TArray<int32>
local FSelectionSetDataflowNode = {}



---@class FSkeletalMeshBoneDataflowNode : FDataflowNode
---@field BoneName FName
---@field SkeletalMesh USkeletalMesh
---@field BoneIndexOut int32
---@field PropertyName FName
local FSkeletalMeshBoneDataflowNode = {}



---@class FSkeletalMeshReferenceTransformDataflowNode : FDataflowNode
---@field SkeletalMeshIn USkeletalMesh
---@field BoneIndexIn int32
---@field TransformOut FTransform
local FSkeletalMeshReferenceTransformDataflowNode = {}



