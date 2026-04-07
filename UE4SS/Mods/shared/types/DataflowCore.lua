---@meta

---@class FDataflowConnection
local FDataflowConnection = {}


---@class FDataflowFaceSelection : FDataflowSelection
local FDataflowFaceSelection = {}


---@class FDataflowInput : FDataflowConnection
local FDataflowInput = {}


---@class FDataflowNode
---@field bActive boolean
local FDataflowNode = {}



---@class FDataflowOutput : FDataflowConnection
local FDataflowOutput = {}


---@class FDataflowOverrideNode : FDataflowNode
---@field Key FName
---@field Default FString
---@field IsOverriden boolean
local FDataflowOverrideNode = {}



---@class FDataflowSelection
local FDataflowSelection = {}


---@class FDataflowTerminalNode : FDataflowNode
local FDataflowTerminalNode = {}


---@class FDataflowTransformSelection : FDataflowSelection
local FDataflowTransformSelection = {}


---@class FDataflowVertexSelection : FDataflowSelection
local FDataflowVertexSelection = {}


---@class FNodeColors
---@field NodeTitleColor FLinearColor
---@field NodeBodyTintColor FLinearColor
local FNodeColors = {}



---@class UDataflowSettings : UDeveloperSettings
---@field ArrayPinTypeColor FLinearColor
---@field ManagedArrayCollectionPinTypeColor FLinearColor
---@field BoxPinTypeColor FLinearColor
---@field SpherePinTypeColor FLinearColor
---@field NodeColorsMap TMap<FName, FNodeColors>
local UDataflowSettings = {}



