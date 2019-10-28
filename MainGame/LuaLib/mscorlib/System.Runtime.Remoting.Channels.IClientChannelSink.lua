---@class System.Runtime.Remoting.Channels.IClientChannelSink : table
---@field public NextChannelSink System.Runtime.Remoting.Channels.IClientChannelSink
local m = {}

---@abstract
---@param sinkStack System.Runtime.Remoting.Channels.IClientChannelSinkStack
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessRequest(sinkStack, msg, headers, stream) end

---@abstract
---@param sinkStack System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack
---@param state any
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessResponse(sinkStack, state, headers, stream) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@return System.IO.Stream
function m:GetRequestStream(msg, headers) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param requestHeaders System.Runtime.Remoting.Channels.ITransportHeaders
---@param requestStream System.IO.Stream
---@return System.Runtime.Remoting.Channels.ITransportHeaders, System.IO.Stream
function m:ProcessMessage(msg, requestHeaders, requestStream) end

System.Runtime.Remoting.Channels.IClientChannelSink = m
return m
