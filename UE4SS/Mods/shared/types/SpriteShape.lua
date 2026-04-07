---@meta

---@class ASpriteShapeActor : AActor
---@field RootSceneComponent USceneComponent
---@field RenderComponent USpriteShapeRendererComponent
---@field SplineComponent USpriteShapeSplineComponent
local ASpriteShapeActor = {}

function ASpriteShapeActor:RegenerateSpriteShape() end


---@class FSpriteShapeCondition
---@field MinimumAngle float
---@field MaximumAngle float
local FSpriteShapeCondition = {}



---@class FSpriteShapeRule
---@field StartCap UPaperSprite
---@field Body TArray<UPaperSprite>
---@field EndCap UPaperSprite
---@field Conditions TArray<FSpriteShapeCondition>
---@field DrawOrder int32
local FSpriteShapeRule = {}



---@class USpriteShapeProfile : UDataAsset
---@field Rules TArray<FSpriteShapeRule>
---@field InteriorFill UPaperSprite
---@field CornerMode ESpriteShapeCornerMode
---@field MinSlopeDiffForCorner float
---@field Corner_OuterTopRight UPaperSprite
---@field Corner_OuterTopLeft UPaperSprite
---@field Corner_OuterBottomRight UPaperSprite
---@field Corner_OuterBottomLeft UPaperSprite
---@field Corner_InnerTopRight UPaperSprite
---@field Corner_InnerTopLeft UPaperSprite
---@field Corner_InnerBottomRight UPaperSprite
---@field Corner_InnerBottomLeft UPaperSprite
---@field CornerDrawOrder int32
local USpriteShapeProfile = {}



---@class USpriteShapeRendererComponent : UPrimitiveComponent
---@field SpriteShapeProfile USpriteShapeProfile
---@field TerrainColor FLinearColor
---@field bFilledSpline boolean
---@field FillPolygonFlatEdgeDistance int32
---@field SegmentOverlapAmount float
---@field SpriteSubdivisionX int32
---@field SpriteSubdivisionY int32
---@field RandomSeed int32
---@field bAllowBodyStretch boolean
---@field bCreateCollisions boolean
---@field CollisionDepth float
---@field CollisionHeight float
---@field CollisionHeightLocationOffset float
---@field CollisionTrace ESpriteShapeCollisionTraceFlag
---@field CollisionGenerationType ESpriteShapeCollisionGenerationType
---@field CollisionMergeDistanceThreshold float
---@field FillCollisionSimplificationThreshold float
---@field AssociatedSpline USpriteShapeSplineComponent
---@field CachedBodySetup UBodySetup
local USpriteShapeRendererComponent = {}



---@class USpriteShapeSplineComponent : USplineComponent
local USpriteShapeSplineComponent = {}


