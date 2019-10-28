---@class System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack : table
local m = {}

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessResponse(msg, headers, stream) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@return System.IO.Stream
function m:GetResponseStream(msg, headers) end

System.Runtime.Remoting.Channels.IServerResponseChannelSinkStack = m
return m
