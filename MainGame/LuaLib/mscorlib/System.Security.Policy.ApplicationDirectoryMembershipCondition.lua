---@class System.Security.Policy.ApplicationDirectoryMembershipCondition : System.Object
local m = {}

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return boolean
function m:Check(evidence) end

---@virtual
---@return System.Security.Policy.IMembershipCondition
function m:Copy() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel) @virtual
---@virtual
---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

---@overload fun(level:System.Security.Policy.PolicyLevel): @virtual
---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Policy.ApplicationDirectoryMembershipCondition = m
return m
