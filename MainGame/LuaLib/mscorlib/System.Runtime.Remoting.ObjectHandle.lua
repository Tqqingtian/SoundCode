---@class System.Runtime.Remoting.ObjectHandle : System.MarshalByRefObject
local m = {}

---@virtual
---@return any
function m:InitializeLifetimeService() end

---@virtual
---@return any
function m:Unwrap() end

System.Runtime.Remoting.ObjectHandle = m
return m
