---@class UnityEngine.iPhoneSettings : System.Object
---@field public screenOrientation UnityEngine.iPhoneScreenOrientation @static
---@field public uniqueIdentifier string @static
---@field public name string @static
---@field public model string @static
---@field public systemName string @static
---@field public internetReachability UnityEngine.iPhoneNetworkReachability @static
---@field public systemVersion string @static
---@field public generation UnityEngine.iPhoneGeneration @static
---@field public verticalOrientation boolean @static
---@field public screenCanDarken boolean @static
---@field public locationServiceEnabledByUser boolean @static
---@field public locationServiceStatus UnityEngine.LocationServiceStatus @static
local m = {}

---@overload fun(desiredAccuracyInMeters:number) @static
---@overload fun() @static
---@static
---@param desiredAccuracyInMeters number
---@param updateDistanceInMeters number
function m.StartLocationServiceUpdates(desiredAccuracyInMeters, updateDistanceInMeters) end

---@static
function m.StopLocationServiceUpdates() end

UnityEngine.iPhoneSettings = m
return m
