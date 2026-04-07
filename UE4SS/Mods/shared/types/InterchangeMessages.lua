---@meta

---@class UInterchangeResultMeshError : UInterchangeResultError
---@field MeshName FString
local UInterchangeResultMeshError = {}



---@class UInterchangeResultMeshError_Generic : UInterchangeResultMeshError
---@field Text FText
local UInterchangeResultMeshError_Generic = {}



---@class UInterchangeResultMeshWarning : UInterchangeResultWarning
---@field MeshName FString
local UInterchangeResultMeshWarning = {}



---@class UInterchangeResultMeshWarning_Generic : UInterchangeResultMeshWarning
---@field Text FText
local UInterchangeResultMeshWarning_Generic = {}



---@class UInterchangeResultMeshWarning_TooManyUVs : UInterchangeResultMeshWarning
---@field ExcessUVs int32
local UInterchangeResultMeshWarning_TooManyUVs = {}



---@class UInterchangeResultTextureWarning : UInterchangeResultWarning
---@field TextureName FString
local UInterchangeResultTextureWarning = {}



---@class UInterchangeResultTextureWarning_TextureFileDoNotExist : UInterchangeResultTextureWarning
---@field Text FText
---@field MaterialName FString
local UInterchangeResultTextureWarning_TextureFileDoNotExist = {}



