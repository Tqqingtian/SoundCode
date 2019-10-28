---@class UnityEngine.Handheld : System.Object
---@field public use32BitDisplayBuffer boolean @static
local m = {}

---@overload fun(path:string, bgColor:UnityEngine.Color, controlMode:UnityEngine.FullScreenMovieControlMode): @static
---@overload fun(path:string, bgColor:UnityEngine.Color): @static
---@overload fun(path:string): @static
---@static
---@param path string
---@param bgColor UnityEngine.Color
---@param controlMode UnityEngine.FullScreenMovieControlMode
---@param scalingMode UnityEngine.FullScreenMovieScalingMode
---@return boolean
function m.PlayFullScreenMovie(path, bgColor, controlMode, scalingMode) end

---@static
function m.Vibrate() end

---@overload fun(style:UnityEngine.AndroidActivityIndicatorStyle) @static
---@static
---@param style UnityEngine.iOS.ActivityIndicatorStyle
function m.SetActivityIndicatorStyle(style) end

---@static
---@return number
function m.GetActivityIndicatorStyle() end

---@static
function m.StartActivityIndicator() end

---@static
function m.StopActivityIndicator() end

---@static
function m.ClearShaderCache() end

UnityEngine.Handheld = m
return m
