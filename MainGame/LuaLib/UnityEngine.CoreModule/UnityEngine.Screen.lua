---@class UnityEngine.Screen : System.Object
---@field public width number @static
---@field public height number @static
---@field public dpi number @static
---@field public orientation UnityEngine.ScreenOrientation @static
---@field public sleepTimeout number @static
---@field public autorotateToPortrait boolean @static
---@field public autorotateToPortraitUpsideDown boolean @static
---@field public autorotateToLandscapeLeft boolean @static
---@field public autorotateToLandscapeRight boolean @static
---@field public currentResolution UnityEngine.Resolution @static
---@field public fullScreen boolean @static
---@field public fullScreenMode UnityEngine.FullScreenMode @static
---@field public safeArea UnityEngine.Rect @static
---@field public resolutions UnityEngine.Resolution[] @static
---@field public GetResolution UnityEngine.Resolution[] @static
---@field public showCursor boolean @static
---@field public lockCursor boolean @static
local m = {}

---@overload fun(width:number, height:number, fullscreenMode:UnityEngine.FullScreenMode) @static
---@overload fun(width:number, height:number, fullscreen:boolean, preferredRefreshRate:number) @static
---@overload fun(width:number, height:number, fullscreen:boolean) @static
---@static
---@param width number
---@param height number
---@param fullscreenMode UnityEngine.FullScreenMode
---@param preferredRefreshRate number
function m.SetResolution(width, height, fullscreenMode, preferredRefreshRate) end

UnityEngine.Screen = m
return m
