---@class System.Security.Policy.HashMembershipCondition : System.Object
---@field public HashAlgorithm System.Security.Cryptography.HashAlgorithm
---@field public HashValue string
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

---@overload fun(level:System.Security.Policy.PolicyLevel): @virtual
---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

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

System.Security.Policy.HashMembershipCondition = m
return m
