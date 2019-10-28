---@class System.Runtime.Remoting.Channels.ServerChannelSinkStack : System.Object
local m = {}

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@return System.IO.Stream
function m:GetResponseStream(msg, headers) end

---@virtual
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@return any
function m:Pop(sink) end

---@virtual
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state any
function m:Push(sink, state) end

---@virtual
---@param ar System.IAsyncResult
function m:ServerCallback(ar) end

---@virtual
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state any
function m:Store(sink, state) end

---@virtual
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state any
function m:StoreAndDispatch(sink, state) end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessResponse(msg, headers, stream) end

System.Runtime.Remoting.Channels.ServerChannelSinkStack = m
return m
