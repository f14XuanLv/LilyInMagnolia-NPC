---@meta

---@class UWBP_SlotSelection_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Hide UWidgetAnimation
---@field Show UWidgetAnimation
---@field WBP_Footer UWBP_Footer_C
---@field WBP_SlotSelection_Entry UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_1 UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_2 UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_3 UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_4 UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_5 UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_6 UWBP_SlotSelection_Entry_C
---@field WBP_SlotSelection_Entry_7 UWBP_SlotSelection_Entry_C
---@field Entries TArray<UWBP_SlotSelection_Entry_C>
---@field StackToLoad TArray<UWBP_SlotSelection_Entry_C>
---@field LoadingEntry UWBP_SlotSelection_Entry_C
---@field IsLoadingSlotAsync boolean
---@field testset TArray<boolean>
---@field FocusedSlot UWBP_SlotSelection_Entry_C
---@field ['TargetSlot Index'] int32
---@field SelectedSlotEntry UWBP_SlotSelection_Entry_C
---@field LastCopyResult ESaveCopyResult
---@field ['bConvertingToNG+'] boolean
---@field SaveSlotContext UWBP_SaveSlotContext_C
local UWBP_SlotSelection_C = {}

---@param LaunchIntent ELaunchGameIntent
---@param SlotEntry UWBP_SlotSelection_Entry_C
function UWBP_SlotSelection_C:LaunchGameWithIntent(LaunchIntent, SlotEntry) end
function UWBP_SlotSelection_C:SetupSlotEntries() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_SlotSelection_C:OnFocusReceived(MyGeometry, InFocusEvent) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_SlotSelection_C:OnPressCancel(KeyEvent) end
function UWBP_SlotSelection_C:OnFinish_785D998843108C6A912AFE979306EA9C() end
function UWBP_SlotSelection_C:OnFinish_34FC66E54DC729E3A646C7B706CB2626() end
function UWBP_SlotSelection_C:CloseMenu() end
---@param NewItem UWBP_SlotSelection_Entry_C
function UWBP_SlotSelection_C:AddToSlotDataStack(NewItem) end
function UWBP_SlotSelection_C:LaunchLoadSlotDataAsyncProcess() end
function UWBP_SlotSelection_C:LoadSlotDataAsync() end
---@param Entry UWBP_SlotSelection_Entry_C
function UWBP_SlotSelection_C:OnSlotFocused(Entry) end
---@param Entry UWBP_SlotSelection_Entry_C
function UWBP_SlotSelection_C:OnSlotConfirmed(Entry) end
---@param Result ESaveExistsType
---@param LoadedData USaveGameZion
function UWBP_SlotSelection_C:OnLoadFinished(Result, LoadedData) end
function UWBP_SlotSelection_C:OnRequestDelete() end
function UWBP_SlotSelection_C:OnRequestCopy() end
function UWBP_SlotSelection_C:OnRequestedNewGameOrLoad() end
UWBP_SlotSelection_C['OnRequestNG+'] = function(self, ) end
UWBP_SlotSelection_C['OnBackUpAndConvertToNG+'] = function(self, ) end
UWBP_SlotSelection_C['OnConvertToNG+'] = function(self, ) end
UWBP_SlotSelection_C['OnBackUpForNG+Created'] = function(self, ) end
function UWBP_SlotSelection_C:OnCopyConfirmed() end
function UWBP_SlotSelection_C:Construct() end
---@param EntryPoint int32
function UWBP_SlotSelection_C:ExecuteUbergraph_WBP_SlotSelection(EntryPoint) end


