---@class System.Runtime.Remoting.Lifetime.ILease : table
---@field public CurrentLeaseTime System.TimeSpan
---@field public CurrentState System.Runtime.Remoting.Lifetime.LeaseState
---@field public InitialLeaseTime System.TimeSpan
---@field public RenewOnCallTime System.TimeSpan
---@field public SponsorshipTimeout System.TimeSpan
local m = {}

---@overload fun(obj:System.Runtime.Remoting.Lifetime.ISponsor, renewalTime:System.TimeSpan) @abstract
---@abstract
---@param obj System.Runtime.Remoting.Lifetime.ISponsor
function m:Register(obj) end

---@abstract
---@param renewalTime System.TimeSpan
---@return System.TimeSpan
function m:Renew(renewalTime) end

---@abstract
---@param obj System.Runtime.Remoting.Lifetime.ISponsor
function m:Unregister(obj) end

System.Runtime.Remoting.Lifetime.ILease = m
return m
