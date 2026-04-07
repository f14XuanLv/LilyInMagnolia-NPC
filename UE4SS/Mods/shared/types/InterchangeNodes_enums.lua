---@enum EInterchangeAnimatedProperty
local EInterchangeAnimatedProperty = {
    None = 0,
    Visibility = 1,
    MAX = 2,
}

---@enum EInterchangeAnimationPayLoadType
local EInterchangeAnimationPayLoadType = {
    NONE = 0,
    CURVE = 1,
    MORPHTARGETCURVE = 2,
    STEPCURVE = 3,
    BAKED = 4,
    MORPHTARGETCURVEWEIGHTINSTANCE = 5,
    EInterchangeAnimationPayLoadType_MAX = 6,
}

---@enum EInterchangeCameraProjectionType
local EInterchangeCameraProjectionType = {
    Perspective = 0,
    Orthographic = 1,
    EInterchangeCameraProjectionType_MAX = 2,
}

---@enum EInterchangeLightUnits
local EInterchangeLightUnits = {
    Unitless = 0,
    Candelas = 1,
    Lumens = 2,
    EV = 3,
    EInterchangeLightUnits_MAX = 4,
}

---@enum EInterchangeMeshPayLoadType
local EInterchangeMeshPayLoadType = {
    NONE = 0,
    STATIC = 1,
    SKELETAL = 2,
    MORPHTARGET = 3,
    EInterchangeMeshPayLoadType_MAX = 4,
}

---@enum EInterchangeTextureFilterMode
local EInterchangeTextureFilterMode = {
    Nearest = 0,
    Bilinear = 1,
    Trilinear = 2,
    Default = 3,
    EInterchangeTextureFilterMode_MAX = 4,
}

---@enum EInterchangeTextureWrapMode
local EInterchangeTextureWrapMode = {
    Wrap = 0,
    Clamp = 1,
    Mirror = 2,
    EInterchangeTextureWrapMode_MAX = 3,
}

