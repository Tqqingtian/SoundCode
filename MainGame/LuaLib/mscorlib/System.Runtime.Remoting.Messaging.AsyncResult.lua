---@class System.Runtime.Remoting.Messaging.AsyncResult : System.Object
---@field public AsyncState any
---@field public AsyncWaitHandle System.Threading.WaitHandle
---@field public CompletedSynchronously boolean
---@field public IsCompleted boolean
---@field public EndInvokeCalled boolean
---@field public AsyncDelegate any
---@field public NextSink System.Runtime.Remoting.Messaging.IMessageSink
local m = {}

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m:AsyncProcessMessage(msg, replySink) end

---@virtual
---@return System.Runtime.Remoting.Messaging.IMessage
function m:GetReplyMessage() end

---@virtual
---@param mc System.Runtime.Remoting.Messaging.IMessageCtrl
function m:SetMessageCtrl(mc) end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:SyncProcessMessage(msg) end

System.Runtime.Remoting.Messaging.AsyncResult = m
return m
