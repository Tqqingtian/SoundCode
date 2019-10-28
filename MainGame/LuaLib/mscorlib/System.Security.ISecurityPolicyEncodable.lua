---@class System.Security.ISecurityPolicyEncodable : table
local m = {}

---@abstract
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function m:FromXml(e, level) end

---@abstract
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function m:ToXml(level) end

System.Security.ISecurityPolicyEncodable = m
return m
