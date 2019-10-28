---@class System.Security.AccessControl.AuthorizationRuleCollection : System.Collections.ReadOnlyCollectionBase
---@field public Item System.Security.AccessControl.AuthorizationRule
local m = {}

---@param rule System.Security.AccessControl.AuthorizationRule
function m:AddRule(rule) end

---@param rules System.Security.AccessControl.AuthorizationRule[]
---@param index number
function m:CopyTo(rules, index) end

System.Security.AccessControl.AuthorizationRuleCollection = m
return m
