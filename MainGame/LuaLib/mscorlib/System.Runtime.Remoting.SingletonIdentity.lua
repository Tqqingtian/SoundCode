---@class System.Runtime.Remoting.SingletonIdentity : System.Runtime.Remoting.ServerIdentity
local m = {}

---@return System.MarshalByRefObject
function m:GetServerObject() end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:SyncObjectProcessMessage(msg) end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m:AsyncObjectProcessMessage(msg, replySink) end

System.Runtime.Remoting.SingletonIdentity = m
return m
