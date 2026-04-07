---@meta

---@class UWBP_Footer_C : UUserWidgetFooter
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HorizontalBox_Container UHorizontalBox
---@field DefaultFooterEntries TArray<FFooterData>
---@field TemporaryEntries TArray<UWBP_Footer_Entry_C>
local UWBP_Footer_C = {}

function UWBP_Footer_C:ClearAllEntries() end
function UWBP_Footer_C:ClearTemporaryEntries() end
---@param FooterDataArray TArray<FFooterData>
function UWBP_Footer_C:InitializeWithEntries(FooterDataArray) end
---@param FooterDataArray TArray<FFooterData>
---@param Temporary boolean
UWBP_Footer_C['Add EntriesInternal'] = function(self, FooterDataArray, Temporary) end
---@param FooterData FFooterData
---@param Temporary boolean
function UWBP_Footer_C:AddEntryInternal(FooterData, Temporary) end
---@param IsDesignTime boolean
function UWBP_Footer_C:PreConstruct(IsDesignTime) end
---@param bTemporaryOnly boolean
function UWBP_Footer_C:ClearEntries(bTemporaryOnly) end
---@param FooterDataList TArray<FFooterData>
---@param bTemporary boolean
function UWBP_Footer_C:AddEntries(FooterDataList, bTemporary) end
---@param FooterData FFooterData
---@param bTemporary boolean
function UWBP_Footer_C:AddEntry(FooterData, bTemporary) end
---@param FooterDataList TArray<FFooterData>
function UWBP_Footer_C:Setup(FooterDataList) end
---@param bVisible boolean
function UWBP_Footer_C:SetEntriesVisible(bVisible) end
---@param EntryPoint int32
function UWBP_Footer_C:ExecuteUbergraph_WBP_Footer(EntryPoint) end


