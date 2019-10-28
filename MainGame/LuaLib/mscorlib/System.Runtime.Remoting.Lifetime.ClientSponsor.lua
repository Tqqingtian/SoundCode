---@class System.Runtime.Remoting.Lifetime.ClientSponsor : System.MarshalByRefObject
---@field public RenewalTime System.TimeSpan
local m = {}

function m:Close() end

---@virtual
---@return any
function m:InitializeLifetimeService() end

---@param obj System.MarshalByRefObject
---@return boolean
function m:Register(obj) end

---@virtual
---@param lease System.Runtime.Remoting.Lifetime.ILease
---@return System.TimeSpan
function m:Renewal(lease) end

---@param obj System.MarshalByRefObject
function m:Unregister(obj) end

System.Runtime.Remoting.Lifetime.ClientSponsor = m
return m
