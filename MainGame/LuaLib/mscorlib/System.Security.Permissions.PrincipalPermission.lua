---@class System.Security.Permissions.PrincipalPermission : System.Object
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
function m:Demand() end

---@virtual
---@param elem System.Security.SecurityElement
function m:FromXml(elem) end

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
---@return string
function m:ToString() end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param other System.Security.IPermission
---@return System.Security.IPermission
function m:Union(other) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Security.Permissions.PrincipalPermission = m
return m
