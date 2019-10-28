---@class System.Runtime.Remoting.Lifetime.ISponsor : table
local m = {}

---@abstract
---@param lease System.Runtime.Remoting.Lifetime.ILease
---@return System.TimeSpan
function m:Renewal(lease) end

System.Runtime.Remoting.Lifetime.ISponsor = m
return m
