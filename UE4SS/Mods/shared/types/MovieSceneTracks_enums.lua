---@enum EComponentMaterialType
local EComponentMaterialType = {
    Empty = 0,
    IndexedMaterial = 1,
    OverlayMaterial = 2,
    DecalMaterial = 3,
    VolumetricCloudMaterial = 4,
    EComponentMaterialType_MAX = 5,
}

---@enum EFireEventsAtPosition
local EFireEventsAtPosition = {
    AtStartOfEvaluation = 0,
    AtEndOfEvaluation = 1,
    AfterSpawn = 2,
    EFireEventsAtPosition_MAX = 3,
}

---@enum ELevelVisibility
local ELevelVisibility = {
    Visible = 0,
    Hidden = 1,
    ELevelVisibility_MAX = 2,
}

---@enum EParticleKey
local EParticleKey = {
    Activate = 0,
    Deactivate = 1,
    Trigger = 2,
    EParticleKey_MAX = 3,
}

---@enum MovieScene3DPathSection_Axis
local MovieScene3DPathSection_Axis = {
    X = 0,
    Y = 1,
    Z = 2,
    NEG_X = 3,
    NEG_Y = 4,
    NEG_Z = 5,
    MovieScene3DPathSection_MAX = 6,
}

