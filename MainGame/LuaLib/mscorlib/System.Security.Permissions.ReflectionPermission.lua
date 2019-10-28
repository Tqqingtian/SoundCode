---@class System.Security.Permissions.ReflectionPermission : System.Security.CodeAccessPermission
---@field public Flags System.Security.Permissions.ReflectionPermissionFlag
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

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
---@param other System.Security.IPermission
---@return System.Security.IPermission
function m:Union(other) end

System.Security.Permissions.ReflectionPermission = m
return m
