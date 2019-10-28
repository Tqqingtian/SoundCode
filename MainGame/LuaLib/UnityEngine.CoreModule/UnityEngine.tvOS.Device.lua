---@class UnityEngine.tvOS.Device : System.Object
---@field public systemVersion string @static
---@field public generation UnityEngine.tvOS.DeviceGeneration @static
---@field public vendorIdentifier string @static
---@field public advertisingIdentifier string @static
---@field public advertisingTrackingEnabled boolean @static
local m = {}

---@static
---@param path string
function m.SetNoBackupFlag(path) end

---@static
---@param path string
function m.ResetNoBackupFlag(path) end

UnityEngine.tvOS.Device = m
return m
