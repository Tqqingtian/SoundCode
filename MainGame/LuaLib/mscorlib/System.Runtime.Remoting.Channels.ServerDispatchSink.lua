---@class System.Runtime.Remoting.Channels.ServerDispatchSink : System.Object
---@field public NextChannelSink System.Runtime.Remoting.Channels.IServerChannelSink
---@field public Properties System.Collections.IDictionary
local m = {}

---@virtual
---@param sinkStack System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack
---@param state any
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessResponse(sinkStack, state, msg, headers, stream) end

---@virtual
---@param sinkStack System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack
---@param state any
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@return System.IO.Stream
function m:GetResponseStream(sinkStack, state, msg, headers) end

---@virtual
---@param sinkStack System.Runtime.Remoting.Channels.IServerChannelSinkStack
---@param requestMsg System.Runtime.Remoting.Messaging.IMessage
---@param requestHeaders System.Runtime.Remoting.Channels.ITransportHeaders
---@param requestStream System.IO.Stream
---@return System.Runtime.Remoting.Channels.ServerProcessing, System.Runtime.Remoting.Messaging.IMessage, System.Runtime.Remoting.Channels.ITransportHeaders, System.IO.Stream
function m:ProcessMessage(sinkStack, requestMsg, requestHeaders, requestStream) end

System.Runtime.Remoting.Channels.ServerDispatchSink = m
return m
