---@class System.Security.Permissions.HostProtectionPermission : System.Security.CodeAccessPermission
---@field public Resources System.Security.Permissions.HostProtectionResource
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

---@virtual
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@return boolean
function m:IsUnrestricted() end

System.Security.Permissions.HostProtectionPermission = m
return m
