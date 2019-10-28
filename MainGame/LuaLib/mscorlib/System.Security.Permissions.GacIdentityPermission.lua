---@class System.Security.Permissions.GacIdentityPermission : System.Security.CodeAccessPermission
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
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

---@virtual
---@param securityElement System.Security.SecurityElement
function m:FromXml(securityElement) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Permissions.GacIdentityPermission = m
return m
