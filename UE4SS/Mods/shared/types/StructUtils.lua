---@meta

---@class FConstSharedStruct
local FConstSharedStruct = {}


---@class FDefault__PropertyBag
local FDefault__PropertyBag = {}


---@class FInstancedPropertyBag
---@field Value FInstancedStruct
local FInstancedPropertyBag = {}



---@class FInstancedStruct
local FInstancedStruct = {}


---@class FInstancedStructContainer
local FInstancedStructContainer = {}


---@class FPropertyBagContainerTypes
local FPropertyBagContainerTypes = {}


---@class FPropertyBagMissingStruct
local FPropertyBagMissingStruct = {}


---@class FPropertyBagPropertyDesc
---@field ValueTypeObject UObject
---@field ID FGuid
---@field Name FName
---@field ValueType EPropertyBagPropertyType
---@field ContainerTypes FPropertyBagContainerTypes
local FPropertyBagPropertyDesc = {}



---@class FPropertyBagPropertyDescMetaData
---@field Key FName
---@field Value FString
local FPropertyBagPropertyDescMetaData = {}



---@class FSharedStruct
local FSharedStruct = {}


---@class UPropertyBag : UScriptStruct
---@field PropertyDescs TArray<FPropertyBagPropertyDesc>
local UPropertyBag = {}



---@class UPropertyBagMissingObject : UObject
local UPropertyBagMissingObject = {}


