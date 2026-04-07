---@meta

---@class FAnimToTextureAnimInfo
---@field StartFrame int32
---@field EndFrame int32
local FAnimToTextureAnimInfo = {}



---@class FAnimToTextureAnimSequenceInfo
---@field bEnabled boolean
---@field AnimSequence UAnimSequence
---@field bUseCustomRange boolean
---@field StartFrame int32
---@field EndFrame int32
local FAnimToTextureAnimSequenceInfo = {}



---@class FAnimToTextureAutoPlayData
---@field TimeOffset float
---@field PlayRate float
---@field StartFrame float
---@field EndFrame float
local FAnimToTextureAutoPlayData = {}



---@class FAnimToTextureFrameData
---@field Frame float
---@field PrevFrame float
local FAnimToTextureFrameData = {}



---@class UAnimToTextureDataAsset : UPrimaryDataAsset
---@field SkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field SkeletalLODIndex int32
---@field StaticMesh TSoftObjectPtr<UStaticMesh>
---@field StaticLODIndex int32
---@field UVChannel int32
---@field NumDriverTriangles int32
---@field Sigma float
---@field MaxHeight int32
---@field MaxWidth int32
---@field bEnforcePowerOfTwo boolean
---@field Precision EAnimToTexturePrecision
---@field Mode EAnimToTextureMode
---@field VertexPositionTexture TSoftObjectPtr<UTexture2D>
---@field VertexNormalTexture TSoftObjectPtr<UTexture2D>
---@field BonePositionTexture TSoftObjectPtr<UTexture2D>
---@field BoneRotationTexture TSoftObjectPtr<UTexture2D>
---@field BoneWeightTexture TSoftObjectPtr<UTexture2D>
---@field RootTransform FTransform
---@field AttachToSocket FName
---@field SampleRate float
---@field AnimSequences TArray<FAnimToTextureAnimSequenceInfo>
---@field bAutoPlay boolean
---@field AnimationIndex int32
---@field Frame int32
---@field NumBoneInfluences EAnimToTextureNumBoneInfluences
---@field NumFrames int32
---@field NumBones int32
---@field VertexRowsPerFrame int32
---@field VertexMinBBox FVector3f
---@field VertexSizeBBox FVector3f
---@field BoneWeightRowsPerFrame int32
---@field BoneRowsPerFrame int32
---@field BoneMinBBox FVector3f
---@field BoneSizeBBox FVector3f
---@field Animations TArray<FAnimToTextureAnimInfo>
local UAnimToTextureDataAsset = {}

function UAnimToTextureDataAsset:ResetInfo() end
---@param Sequence UAnimSequence
---@return int32
function UAnimToTextureDataAsset:GetIndexFromAnimSequence(Sequence) end
---@return UStaticMesh
function UAnimToTextureDataAsset:BP_GetStaticMesh() end
---@return USkeletalMesh
function UAnimToTextureDataAsset:BP_GetSkeletalMesh() end
---@return UTexture2D
function UAnimToTextureDataAsset:BP_GetBoneWeightTexture() end
---@return UTexture2D
function UAnimToTextureDataAsset:BP_GetBoneRotationTexture() end
---@return UTexture2D
function UAnimToTextureDataAsset:BP_GetBonePositionTexture() end


---@class UAnimToTextureInstancePlaybackLibrary : UBlueprintFunctionLibrary
local UAnimToTextureInstancePlaybackLibrary = {}

---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param InstanceIndex int32
---@param FrameData FAnimToTextureFrameData
---@param bMarkRenderStateDirty boolean
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:UpdateInstanceFrameData(InstancedMeshComponent, InstanceIndex, FrameData, bMarkRenderStateDirty) end
---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param InstanceIndex int32
---@param AutoPlayData FAnimToTextureAutoPlayData
---@param bMarkRenderStateDirty boolean
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:UpdateInstanceAutoPlayData(InstancedMeshComponent, InstanceIndex, AutoPlayData, bMarkRenderStateDirty) end
---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param NumInstances int32
---@param bAutoPlay boolean
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:SetupInstancedMeshComponent(InstancedMeshComponent, NumInstances, bAutoPlay) end
---@param DataAsset UAnimToTextureDataAsset
---@param AnimationIndex int32
---@param Time float
---@param AutoPlayData FAnimToTextureFrameData
---@param TimeOffset float
---@param PlayRate float
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:GetFrameDataFromDataAsset(DataAsset, AnimationIndex, Time, AutoPlayData, TimeOffset, PlayRate) end
---@param Time float
---@param StartFrame float
---@param EndFrame float
---@param TimeOffset float
---@param PlayRate float
---@param SampleRate float
---@return float
function UAnimToTextureInstancePlaybackLibrary:GetFrame(Time, StartFrame, EndFrame, TimeOffset, PlayRate, SampleRate) end
---@param DataAsset UAnimToTextureDataAsset
---@param AnimationIndex int32
---@param AutoPlayData FAnimToTextureAutoPlayData
---@param TimeOffset float
---@param PlayRate float
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:GetAutoPlayDataFromDataAsset(DataAsset, AnimationIndex, AutoPlayData, TimeOffset, PlayRate) end
---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param FrameData TArray<FAnimToTextureFrameData>
---@param Transforms TArray<FMatrix>
---@param bMarkRenderStateDirty boolean
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:BatchUpdateInstancesFrameData(InstancedMeshComponent, FrameData, Transforms, bMarkRenderStateDirty) end
---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param AutoPlayData TArray<FAnimToTextureAutoPlayData>
---@param Transforms TArray<FMatrix>
---@param bMarkRenderStateDirty boolean
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:BatchUpdateInstancesAutoPlayData(InstancedMeshComponent, AutoPlayData, Transforms, bMarkRenderStateDirty) end


