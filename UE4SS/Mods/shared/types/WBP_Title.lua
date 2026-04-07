---@meta

---@class UWBP_Title_C : UUserWidgetZion
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Show UWidgetAnimation
---@field BGHolder UNamedSlot
---@field BuildNumberText UTextBlock
---@field DemoLabel UTextBlock
---@field EarlyAccessLabel UTextBlock
---@field InvalidVersionText UTextBlock
---@field ProfileName UTextBlock
---@field VersionText UTextBlock
---@field WBP_Button_Generic_Exit UWBP_Button_Generic_C
---@field WBP_Button_Generic_Settings UWBP_Button_Generic_C
---@field WBP_Button_Generic_Start UWBP_Button_Generic_C
---@field WBP_Footer UWBP_Footer_C
---@field Titles TMap<EGameEndingType, TSoftClassPtr<UUserWidget>>
---@field TitleLevels TMap<EGameEndingType, TSoftObjectPtr<UWorld>>
---@field Footer_TitleChange FFooterData
---@field LoadedLevel ULevelStreamingDynamic
---@field LoadedTitleType EGameEndingType
---@field SE_TitleScreenSelection UFMODEvent
local UWBP_Title_C = {}

---@param KeyEvent FKeyEvent
---@return FEventReply
function UWBP_Title_C:OnPressContext(KeyEvent) end
---@return boolean
function UWBP_Title_C:CanChangeTitleScreen() end
function UWBP_Title_C:SetupFooter() end
---@param bForce boolean
function UWBP_Title_C:SetupBG(bForce) end
function UWBP_Title_C:RefreshUserProfile() end
function UWBP_Title_C:SetupMenuButtons() end
function UWBP_Title_C:SetupVersion() end
---@param MyGeometry FGeometry
---@param InFocusEvent FFocusEvent
---@return FEventReply
function UWBP_Title_C:OnFocusReceived(MyGeometry, InFocusEvent) end
function UWBP_Title_C:OnFinish_556333D643709F6C35D0529662EAA011() end
function UWBP_Title_C:OnFinish_F0089B36441A327D70DEC9A83EAD86A7() end
---@param KeyEvent FKeyEvent
function UWBP_Title_C:BndEvt__WBP_Title_WBP_Button_Generic_Exit_K2Node_ComponentBoundEvent_0_OnPressed__DelegateSignature(KeyEvent) end
---@param KeyEvent FKeyEvent
function UWBP_Title_C:BndEvt__WBP_Title_WBP_Button_Generic_Start_K2Node_ComponentBoundEvent_1_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Title_C:Construct() end
---@param KeyEvent FKeyEvent
function UWBP_Title_C:BndEvt__WBP_Title_WBP_Button_Generic_Settings_K2Node_ComponentBoundEvent_2_OnPressed__DelegateSignature(KeyEvent) end
function UWBP_Title_C:OnRequestTitleChange() end
function UWBP_Title_C:OnTitleSelected() end
---@param EntryPoint int32
function UWBP_Title_C:ExecuteUbergraph_WBP_Title(EntryPoint) end


