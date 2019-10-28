---@class System.Security.SecurityState : System.Object
local m = {}

---@abstract
function m:EnsureState() end

---@return boolean
function m:IsStateAvailable() end

System.Security.SecurityState = m
return m
