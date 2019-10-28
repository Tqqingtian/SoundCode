---@class System.Security.Policy.PolicyStatement : System.Object
---@field public PermissionSet System.Security.PermissionSet
---@field public Attributes System.Security.Policy.PolicyStatementAttribute
---@field public AttributeString string
local m = {}

---@return System.Security.Policy.PolicyStatement
function m:Copy() end

---@overload fun(et:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel) @virtual
---@virtual
---@param et System.Security.SecurityElement
function m:FromXml(et) end

---@overload fun(level:System.Security.Policy.PolicyLevel): @virtual
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

System.Security.Policy.PolicyStatement = m
return m
