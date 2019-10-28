---@class System.Runtime.Remoting.Contexts.SynchronizedServerContextSink : System.Object
---@field public NextSink System.Runtime.Remoting.Messaging.IMessageSink
local m = {}

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m:AsyncProcessMessage(msg, replySink) end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:SyncProcessMessage(msg) end

System.Runtime.Remoting.Contexts.SynchronizedServerContextSink = m
return m
