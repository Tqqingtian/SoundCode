---@class System.Security.Permissions.ZoneIdentityPermission : System.Security.CodeAccessPermission
---@field public SecurityZone System.Security.SecurityZone
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@virtual
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Permissions.ZoneIdentityPermission = m
return m
