---@class System.Runtime.Remoting.Channels.IServerChannelSinkProvider : table
---@field public Next System.Runtime.Remoting.Channels.IServerChannelSinkProvider
local m = {}

---@abstract
---@param channel System.Runtime.Remoting.Channels.IChannelReceiver
---@return System.Runtime.Remoting.Channels.IServerChannelSink
function m:CreateSink(channel) end

---@abstract
---@param channelData System.Runtime.Remoting.Channels.IChannelDataStore
function m:GetChannelData(channelData) end

System.Runtime.Remoting.Channels.IServerChannelSinkProvider = m
return m
