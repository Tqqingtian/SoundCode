---@class System.Security.Permissions.KeyContainerPermission : System.Security.CodeAccessPermission
---@field public AccessEntries System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
---@field public Flags System.Security.Permissions.KeyContainerPermissionFlags
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param securityElement System.Security.SecurityElement
function m:FromXml(securityElement) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@virtual
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@return boolean
function m:IsUnrestricted() end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

System.Security.Permissions.KeyContainerPermission = m
return m
