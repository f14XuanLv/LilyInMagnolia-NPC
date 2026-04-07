---@enum ESpriteShapeCollisionGenerationType
local ESpriteShapeCollisionGenerationType = {
    PolygonBatching = 0,
    Box = 1,
    Custom = 2,
    Polygon = 3,
    ESpriteShapeCollisionGenerationType_MAX = 4,
}

---@enum ESpriteShapeCollisionTraceFlag
local ESpriteShapeCollisionTraceFlag = {
    Default = 0,
    SimpleAsComplex = 1,
    ComplexAsSimple = 2,
    ESpriteShapeCollisionTraceFlag_MAX = 3,
}

---@enum ESpriteShapeCornerMode
local ESpriteShapeCornerMode = {
    Off = 0,
    On = 1,
    ReplaceCap = 2,
    ESpriteShapeCornerMode_MAX = 3,
}

---@enum ESpriteShapeCornerType
local ESpriteShapeCornerType = {
    None = 0,
    OuterTopLeft = 1,
    OuterTopRight = 2,
    OuterBottomLeft = 3,
    OuterBottomRight = 4,
    InnerTopLeft = 5,
    InnerTopRight = 6,
    InnerBottomLeft = 7,
    InnerBottomRight = 8,
    ESpriteShapeCornerType_MAX = 9,
}

