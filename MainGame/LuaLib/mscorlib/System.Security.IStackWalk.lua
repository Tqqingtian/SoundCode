---@class System.Security.IStackWalk : table
local m = {}

---@abstract
function m:Assert() end

---@abstract
function m:Demand() end

---@abstract
function m:Deny() end

---@abstract
function m:PermitOnly() end

System.Security.IStackWalk = m
return m
