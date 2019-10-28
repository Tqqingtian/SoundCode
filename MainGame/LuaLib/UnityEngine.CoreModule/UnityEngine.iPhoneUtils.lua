---@class UnityEngine.iPhoneUtils : System.Object
---@field public isApplicationGenuine boolean @static
---@field public isApplicationGenuineAvailable boolean @static
local m = {}

---@overload fun(path:string, bgColor:UnityEngine.Color, controlMode:UnityEngine.iPhoneMovieControlMode) @static
---@overload fun(path:string, bgColor:UnityEngine.Color) @static
---@static
---@param path string
---@param bgColor UnityEngine.Color
---@param controlMode UnityEngine.iPhoneMovieControlMode
---@param scalingMode UnityEngine.iPhoneMovieScalingMode
function m.PlayMovie(path, bgColor, controlMode, scalingMode) end

---@overload fun(url:string, bgColor:UnityEngine.Color, controlMode:UnityEngine.iPhoneMovieControlMode) @static
---@overload fun(url:string, bgColor:UnityEngine.Color) @static
---@static
---@param url string
---@param bgColor UnityEngine.Color
---@param controlMode UnityEngine.iPhoneMovieControlMode
---@param scalingMode UnityEngine.iPhoneMovieScalingMode
function m.PlayMovieURL(url, bgColor, controlMode, scalingMode) end

---@static
function m.Vibrate() end

UnityEngine.iPhoneUtils = m
return m
