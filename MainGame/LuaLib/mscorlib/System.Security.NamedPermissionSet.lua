---@class System.Security.NamedPermissionSet : System.Security.PermissionSet
---@field public Description string
---@field public Name string
local m = {}

---@overload fun(name:string):
---@virtual
---@return System.Security.PermissionSet
function m:Copy() end

---@virtual
---@param et System.Security.SecurityElement
function m:FromXml(et) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Security.NamedPermissionSet = m
return m
