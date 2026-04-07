---@meta

---@class UBinkFunctionLibrary : UBlueprintFunctionLibrary
local UBinkFunctionLibrary = {}

---@return FTimespan
function UBinkFunctionLibrary:BinkLoadingMovie_GetTime() end
---@return FTimespan
function UBinkFunctionLibrary:BinkLoadingMovie_GetDuration() end
function UBinkFunctionLibrary:Bink_DrawOverlays() end


---@class UBinkMediaPlayer : UObject
---@field OnMediaClosed FBinkMediaPlayerOnMediaClosed
---@field OnMediaOpened FBinkMediaPlayerOnMediaOpened
---@field OnMediaReachedEnd FBinkMediaPlayerOnMediaReachedEnd
---@field OnPlaybackSuspended FBinkMediaPlayerOnPlaybackSuspended
---@field Looping boolean
---@field StartImmediately boolean
---@field DelayedOpen boolean
---@field BinkDestinationUpperLeft FVector2D
---@field BinkDestinationLowerRight FVector2D
---@field URL FString
---@field BinkBufferMode EBinkMediaPlayerBinkBufferModes
---@field BinkSoundTrack EBinkMediaPlayerBinkSoundTrack
---@field BinkSoundTrackStart int32
---@field BinkDrawStyle EBinkMediaPlayerBinkDrawStyle
---@field BinkLayerDepth int32
local UBinkMediaPlayer = {}

---@return boolean
function UBinkMediaPlayer:SupportsSeeking() end
---@return boolean
function UBinkMediaPlayer:SupportsScrubbing() end
---@param Rate float
---@param Unthinned boolean
---@return boolean
function UBinkMediaPlayer:SupportsRate(Rate, Unthinned) end
function UBinkMediaPlayer:Stop() end
---@param Rate float
function UBinkMediaPlayer:SetVolume(Rate) end
---@param Rate float
---@return boolean
function UBinkMediaPlayer:SetRate(Rate) end
---@param InLooping boolean
---@return boolean
function UBinkMediaPlayer:SetLooping(InLooping) end
---@param InTime FTimespan
---@return boolean
function UBinkMediaPlayer:Seek(InTime) end
---@return boolean
function UBinkMediaPlayer:Rewind() end
---@return boolean
function UBinkMediaPlayer:Play() end
---@return boolean
function UBinkMediaPlayer:Pause() end
---@param NewUrl FString
---@return boolean
function UBinkMediaPlayer:OpenUrl(NewUrl) end
---@return boolean
function UBinkMediaPlayer:IsStopped() end
---@return boolean
function UBinkMediaPlayer:IsPlaying() end
---@return boolean
function UBinkMediaPlayer:IsPaused() end
---@return boolean
function UBinkMediaPlayer:IsLooping() end
---@return boolean
function UBinkMediaPlayer:IsInitialized() end
---@return FString
function UBinkMediaPlayer:GetUrl() end
---@return FTimespan
function UBinkMediaPlayer:GetTime() end
---@return float
function UBinkMediaPlayer:GetRate() end
---@return FTimespan
function UBinkMediaPlayer:GetDuration() end
---@param Texture UTexture
---@param tonemap boolean
---@param out_nits int32
---@param Alpha float
---@param srgb_decode boolean
---@param hdr boolean
function UBinkMediaPlayer:Draw(Texture, tonemap, out_nits, Alpha, srgb_decode, hdr) end
function UBinkMediaPlayer:CloseUrl() end
---@return boolean
function UBinkMediaPlayer:CanPlay() end
---@return boolean
function UBinkMediaPlayer:CanPause() end


---@class UBinkMediaTexture : UTexture
---@field AddressX TextureAddress
---@field AddressY TextureAddress
---@field MediaPlayer UBinkMediaPlayer
---@field PixelFormat EPixelFormat
---@field tonemap boolean
---@field OutputNits float
---@field Alpha float
---@field DecodeSRGB boolean
local UBinkMediaTexture = {}

---@param InMediaPlayer UBinkMediaPlayer
function UBinkMediaTexture:SetMediaPlayer(InMediaPlayer) end
function UBinkMediaTexture:Clear() end


---@class UBinkMoviePlayerSettings : UObject
---@field BinkBufferMode EBinkMoviePlayerBinkBufferModes
---@field BinkSoundTrack EBinkMoviePlayerBinkSoundTrack
---@field BinkSoundTrackStart int32
---@field BinkDestinationUpperLeft FVector2D
---@field BinkDestinationLowerRight FVector2D
---@field BinkPixelFormat EPixelFormat
local UBinkMoviePlayerSettings = {}



