---@class System.Runtime.Remoting.Lifetime.Lease : System.MarshalByRefObject
---@field public CurrentLeaseTime System.TimeSpan
---@field public CurrentState System.Runtime.Remoting.Lifetime.LeaseState
---@field public InitialLeaseTime System.TimeSpan
---@field public RenewOnCallTime System.TimeSpan
---@field public SponsorshipTimeout System.TimeSpan
local m = {}

function m:Activate() end

---@overload fun(obj:System.Runtime.Remoting.Lifetime.ISponsor, renewalTime:System.TimeSpan) @virtual
---@virtual
---@param obj System.Runtime.Remoting.Lifetime.ISponsor
function m:Register(obj) end

---@virtual
---@param renewalTime System.TimeSpan
---@return System.TimeSpan
function m:Renew(renewalTime) end

---@virtual
---@param obj System.Runtime.Remoting.Lifetime.ISponsor
function m:Unregister(obj) end

System.Runtime.Remoting.Lifetime.Lease = m
return m
