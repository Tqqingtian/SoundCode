---@class System.Security.Permissions.PublisherIdentityPermission : System.Security.CodeAccessPermission
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate
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
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

System.Security.Permissions.PublisherIdentityPermission = m
return m
