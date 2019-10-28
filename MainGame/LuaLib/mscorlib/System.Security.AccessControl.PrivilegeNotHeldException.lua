---@class System.Security.AccessControl.PrivilegeNotHeldException : System.UnauthorizedAccessException
---@field public PrivilegeName string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Security.AccessControl.PrivilegeNotHeldException = m
return m
