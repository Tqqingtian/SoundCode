---@class System.Security.Permissions.IsolatedStoragePermission : System.Security.CodeAccessPermission
---@field public UserQuota number
---@field public UsageAllowed System.Security.Permissions.IsolatedStorageContainment
local m = {}

---@virtual
---@return boolean
function m:IsUnrestricted() end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

System.Security.Permissions.IsolatedStoragePermission = m
return m
