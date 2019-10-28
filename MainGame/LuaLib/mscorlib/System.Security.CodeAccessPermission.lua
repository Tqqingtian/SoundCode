---@class System.Security.CodeAccessPermission : System.Object
local m = {}

---@virtual
function m:Assert() end

---@abstract
---@return System.Security.IPermission
function m:Copy() end

---@virtual
function m:Demand() end

---@virtual
function m:Deny() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@abstract
---@param elem System.Security.SecurityElement
function m:FromXml(elem) end

---@virtual
---@return number
function m:GetHashCode() end

---@abstract
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@abstract
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@return string
function m:ToString() end

---@abstract
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param other System.Security.IPermission
---@return System.Security.IPermission
function m:Union(other) end

---@virtual
function m:PermitOnly() end

---@static
function m.RevertAll() end

---@static
function m.RevertAssert() end

---@static
function m.RevertDeny() end

---@static
function m.RevertPermitOnly() end

System.Security.CodeAccessPermission = m
return m
