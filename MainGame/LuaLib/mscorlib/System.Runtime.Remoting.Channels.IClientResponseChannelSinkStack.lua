---@class System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack : table
local m = {}

---@abstract
---@param headers System.Runtime.Remoting.Channels.ITransportHeaders
---@param stream System.IO.Stream
function m:AsyncProcessResponse(headers, stream) end

---@abstract
---@param e System.Exception
function m:DispatchException(e) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
function m:DispatchReplyMessage(msg) end

System.Runtime.Remoting.Channels.IClientResponseChannelSinkStack = m
return m
