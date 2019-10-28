---@class UnityEngine.iPhone : System.Object
---@field public generation UnityEngine.iPhoneGeneration @static
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

UnityEngine.iPhone = m
return m
