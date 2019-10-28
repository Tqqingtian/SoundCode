---@class System.Security.Permissions.UrlIdentityPermission : System.Security.CodeAccessPermission
---@field public Url string
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

System.Security.Permissions.UrlIdentityPermission = m
return m
