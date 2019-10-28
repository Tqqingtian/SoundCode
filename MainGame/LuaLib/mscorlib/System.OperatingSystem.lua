---@class System.OperatingSystem : System.Object
---@field public Platform System.PlatformID
---@field public Version System.Version
---@field public ServicePack string
---@field public VersionString string
local m = {}

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return string
function m:ToString() end

System.OperatingSystem = m
return m
