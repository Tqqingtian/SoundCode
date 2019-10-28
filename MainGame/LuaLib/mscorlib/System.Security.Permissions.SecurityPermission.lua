---@class System.Security.Permissions.SecurityPermission : System.Security.CodeAccessPermission
---@field public Flags System.Security.Permissions.SecurityPermissionFlag
local m = {}

---@virtual
---@return boolean
function m:IsUnrestricted() end

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
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Permissions.SecurityPermission = m
return m
