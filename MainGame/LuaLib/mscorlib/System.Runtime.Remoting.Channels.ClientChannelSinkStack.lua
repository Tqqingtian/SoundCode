---@class System.Runtime.Remoting.Channels.ClientChannelSinkStack : System.Object
local m = {}

---@virtual
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessResponse(headers, stream) end

---@virtual
---@param e System.Exception
function m:DispatchException(e) end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
function m:DispatchReplyMessage(msg) end

---@virtual
---@param sink System.Runtime.Remoting.Channels.IClientChannelSink
---@return any
function m:Pop(sink) end

---@virtual
---@param sink System.Runtime.Remoting.Channels.IClientChannelSink
---@param state any
function m:Push(sink, state) end

System.Runtime.Remoting.Channels.ClientChannelSinkStack = m
return m
