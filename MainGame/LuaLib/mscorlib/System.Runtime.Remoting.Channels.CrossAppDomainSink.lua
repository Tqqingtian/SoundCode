---@class System.Runtime.Remoting.Channels.CrossAppDomainSink : System.Object
---@field public NextSink System.Runtime.Remoting.Messaging.IMessageSink
local m = {}

---@virtual
---@param msgRequest System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:SyncProcessMessage(msgRequest) end

---@virtual
---@param reqMsg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m:AsyncProcessMessage(reqMsg, replySink) end

---@param data any
function m:SendAsyncMessage(data) end

System.Runtime.Remoting.Channels.CrossAppDomainSink = m
return m
