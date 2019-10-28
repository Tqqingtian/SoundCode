---@class System.Runtime.Remoting.Channels.IChannelSender : table
local m = {}

---@abstract
---@param url string
---@param remoteChannelData any
---@return System.Runtime.Remoting.Messaging.IMessageSink, System.String
function m:CreateMessageSink(url, remoteChannelData) end

System.Runtime.Remoting.Channels.IChannelSender = m
return m
