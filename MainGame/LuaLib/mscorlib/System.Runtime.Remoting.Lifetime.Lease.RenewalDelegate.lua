---@class System.Runtime.Remoting.Lifetime.Lease.RenewalDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param lease System.Runtime.Remoting.Lifetime.ILease
---@return System.TimeSpan
function m:Invoke(lease) end

---@virtual
---@param lease System.Runtime.Remoting.Lifetime.ILease
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(lease, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.TimeSpan
function m:EndInvoke(result) end

System.Runtime.Remoting.Lifetime.Lease.RenewalDelegate = m
return m
