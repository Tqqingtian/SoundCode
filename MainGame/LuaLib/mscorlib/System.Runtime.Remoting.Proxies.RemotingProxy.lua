---@class System.Runtime.Remoting.Proxies.RemotingProxy : System.Runtime.Remoting.Proxies.RealProxy
---@field public TypeName string
local m = {}

---@virtual
---@param request System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:Invoke(request) end

---@virtual
---@param fromType System.Type
---@param o any
---@return boolean
function m:CanCastTo(fromType, o) end

System.Runtime.Remoting.Proxies.RemotingProxy = m
return m
