---@class Mono.Interop.ComInteropProxy : System.Runtime.Remoting.Proxies.RealProxy
---@field public TypeName string
local m = {}

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:Invoke(msg) end

---@virtual
---@param fromType System.Type
---@param o any
---@return boolean
function m:CanCastTo(fromType, o) end

Mono.Interop.ComInteropProxy = m
return m
