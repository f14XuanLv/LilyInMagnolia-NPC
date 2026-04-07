---@meta

---@class UWBP_SlotSelection_Entry_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Focused UWidgetAnimation
---@field Blue_Bottom UImage
---@field Blue_Top UImage
---@field ChapterValue UTextBlock
---@field CircularThrobber_119 UCircularThrobber
---@field GenerationCount UOverlay
---@field ['HorizontalBox_NG+'] UHorizontalBox
---@field Image UImage
---@field Image_119 UImage
---@field Img_Motif UImage
---@field LevelValue UTextBlock
---@field ['NG+AvailableTag'] UImage
---@field ['NG+Tag'] UImage
---@field ['NG+Value'] UTextBlock
---@field Overlay_Corrupt UOverlay
---@field Overlay_Empty UOverlay
---@field Overlay_Focused UOverlay
---@field Overlay_IncompatibleVersion UOverlay
---@field Overlay_Loading UOverlay
---@field Overlay_ValidData UOverlay
---@field PlayTimeValue UTextBlock
---@field RestPointImg UImage
---@field RestPointName UTextBlock
---@field SaveDataVersionTextBlock UTextBlock
---@field SilhouetteImg UImage
---@field SlotIndexTextBlock UTextBlock
---@field WidgetSwitcher_Slot UWidgetSwitcher
---@field SlotIndex int32
---@field OnFocused FWBP_SlotSelection_Entry_COnFocused
---@field SaveExistsType ESaveExistsType
---@field OnConfirmed FWBP_SlotSelection_Entry_COnConfirmed
---@field OnContextRequested FWBP_SlotSelection_Entry_COnContextRequested
---@field LoadedData USaveGameZion
---@field bInitialized boolean
---@field ['bCanConvertToNG+'] boolean
local UWBP_SlotSelection_Entry_C = {}

---@param bCanConvertToNG_ boolean
UWBP_SlotSelection_Entry_C['CanConvertToNG+'] = function(self, bCanConvertToNG_) end
---@param bInitialized boolean
function UWBP_SlotSelection_Entry_C:IsInitialized(bInitialized) end
---@param NewSlotIndex int32
function UWBP_SlotSelection_Entry_C:SetSlotIndex(NewSlotIndex) end
---@param SaveExists boolean
function UWBP_SlotSelection_Entry_C:DoesSaveExists(SaveExists) end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_SlotSelection_Entry_C:OnPressContext(KeyEvent) end
---@param InputPin TMap<EGameEndingType, int32>
function UWBP_SlotSelection_Entry_C:SetupSilhouette(InputPin) end
---@param NewGamePlusGeneration int32
UWBP_SlotSelection_Entry_C['SetupNG+'] = function(self, NewGamePlusGeneration) end
---@param RowName FName
function UWBP_SlotSelection_Entry_C:SetupRestPointData(RowName) end
---@param InputPin USaveGameZion
function UWBP_SlotSelection_Entry_C:SetupFromSaveData(InputPin) end
function UWBP_SlotSelection_Entry_C:SetAsLoading() end
---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_SlotSelection_Entry_C:OnPressConfirm(KeyEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_SlotSelection_Entry_C:OnAddedToFocusPath(InFocusEvent) end
---@param InFocusEvent FFocusEvent
function UWBP_SlotSelection_Entry_C:OnRemovedFromFocusPath(InFocusEvent) end
---@param SaveExistsType ESaveExistsType
---@param LoadedData USaveGameZion
function UWBP_SlotSelection_Entry_C:Initialize(SaveExistsType, LoadedData) end
---@param IsDesignTime boolean
function UWBP_SlotSelection_Entry_C:PreConstruct(IsDesignTime) end
function UWBP_SlotSelection_Entry_C:RequestContext() end
---@param EntryPoint int32
function UWBP_SlotSelection_Entry_C:ExecuteUbergraph_WBP_SlotSelection_Entry(EntryPoint) end
---@param SlotIndex int32
function UWBP_SlotSelection_Entry_C:OnContextRequested__DelegateSignature(SlotIndex) end
---@param Entry UWBP_SlotSelection_Entry_C
function UWBP_SlotSelection_Entry_C:OnConfirmed__DelegateSignature(Entry) end
---@param Entry UWBP_SlotSelection_Entry_C
function UWBP_SlotSelection_Entry_C:OnFocused__DelegateSignature(Entry) end


