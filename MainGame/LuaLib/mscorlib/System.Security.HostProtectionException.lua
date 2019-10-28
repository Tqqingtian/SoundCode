---@class System.Security.HostProtectionException : System.SystemException
---@field public DemandedResources System.Security.Permissions.HostProtectionResource
---@field public ProtectedResources System.Security.Permissions.HostProtectionResource
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return string
function m:ToString() end

System.Security.HostProtectionException = m
return m
