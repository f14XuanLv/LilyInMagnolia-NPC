---@meta

---@class FBloomBoxGenerationSettings
---@field Spread float
---@field Strength float
---@field SizeOffset FVector2D
---@field MaxMipLevel int32
---@field MipLevelOffset int32
---@field UpSampleTargetMipLevel int32
---@field RenderScale float
---@field MeshSubDivision int32
---@field EffectMaterial UMaterialInterface
---@field EffectScalarParameters TMap<FName, float>
---@field EffectVectorParameters TMap<FName, FVector>
---@field EffectTextureParameters TMap<FName, UTexture>
---@field DownSampleMaterial UMaterialInterface
---@field RenderMaterial UMaterialInterface
---@field UpSampleMaterial UMaterialInterface
---@field bUsePremultipliedAlpha boolean
---@field bNoGamma boolean
---@field GammaOverride float
---@field bLinearSpace boolean
---@field bIsPrepassNeeded boolean
local FBloomBoxGenerationSettings = {}



---@class FBloomBoxResources
---@field WidgetRender UTextureRenderTarget2D
---@field DownSampleChain UTextureRenderTarget2D
---@field UpSamples TArray<UTextureRenderTarget2D>
---@field BloomTexture UTextureRenderTarget2D
---@field DownSampleMID UMaterialInstanceDynamic
---@field RenderMipMID UMaterialInstanceDynamic
---@field UpSampleMID UMaterialInstanceDynamic
---@field EffectBloomMID UMaterialInstanceDynamic
---@field EffectWidgetMID UMaterialInstanceDynamic
local FBloomBoxResources = {}



---@class FBloomBoxRuntimeSettings
---@field BloomColor FLinearColor
---@field EffectValue float
---@field bWriteBloomTexture boolean
---@field bWriteWidgetTexture boolean
local FBloomBoxRuntimeSettings = {}



---@class UBloomBox : UContentWidget
---@field GenerationTiming EBloomBoxGenerationTiming
---@field BloomColor FLinearColor
---@field RuntimeEffectValue float
---@field RuntimeSettings FBloomBoxRuntimeSettings
---@field GenerationSettings FBloomBoxGenerationSettings
---@field BloomBoxResources FBloomBoxResources
---@field ContentHorizontalAlignment EHorizontalAlignment
---@field ContentVerticalAlignment EVerticalAlignment
local UBloomBox = {}

---@param InValue float
function UBloomBox:SetRuntimeEffectValue(InValue) end
---@param InColor FLinearColor
function UBloomBox:SetBloomColor(InColor) end
function UBloomBox:RequestRender() end
---@return float
function UBloomBox:GetRuntimeEffectValue() end
---@return FLinearColor
function UBloomBox:GetBloomColor() end


