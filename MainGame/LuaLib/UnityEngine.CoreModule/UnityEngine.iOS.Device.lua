---@class UnityEngine.iOS.Device : System.Object
---@field public systemVersion string @static
---@field public generation UnityEngine.iOS.DeviceGeneration @static
---@field public vendorIdentifier string @static
---@field public advertisingIdentifier string @static
---@field public advertisingTrackingEnabled boolean @static
---@field public hideHomeButton boolean @static
---@field public deferSystemGesturesMode UnityEngine.iOS.SystemGestureDeferMode @static
local m = {}

---@static
---@param path string
function m.SetNoBackupFlag(path) end

---@static
---@param path string
function m.ResetNoBackupFlag(path) end

---@static
---@return boolean
function m.RequestStoreReview() end

UnityEngine.iOS.Device = m
return m
