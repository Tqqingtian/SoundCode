---@class System.Security.SecurityException : System.SystemException
---@field public Action System.Security.Permissions.SecurityAction
---@field public DenySetInstance any
---@field public FailedAssemblyInfo System.Reflection.AssemblyName
---@field public Method System.Reflection.MethodInfo
---@field public PermitOnlySetInstance any
---@field public Url string
---@field public Zone System.Security.SecurityZone
---@field public Demanded any
---@field public FirstPermissionThatFailed System.Security.IPermission
---@field public PermissionState string
---@field public PermissionType System.Type
---@field public GrantedSet string
---@field public RefusedSet string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return string
function m:ToString() end

System.Security.SecurityException = m
return m
