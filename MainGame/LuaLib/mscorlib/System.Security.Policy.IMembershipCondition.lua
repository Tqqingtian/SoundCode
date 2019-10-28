---@class System.Security.Policy.IMembershipCondition : table
local m = {}

---@abstract
---@param evidence System.Security.Policy.Evidence
---@return boolean
function m:Check(evidence) end

---@abstract
---@return System.Security.Policy.IMembershipCondition
function m:Copy() end

---@abstract
---@param obj any
---@return boolean
function m:Equals(obj) end

---@abstract
---@return string
function m:ToString() end

System.Security.Policy.IMembershipCondition = m
return m
