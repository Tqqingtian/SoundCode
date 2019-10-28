---@class System.Runtime.Remoting.Channels.ServerDispatchSinkProvider : System.Object
---@field public Next System.Runtime.Remoting.Channels.IServerChannelSinkProvider
local m = {}

---@virtual
---@param channel System.Runtime.Remoting.Channels.IChannelReceiver
---@return System.Runtime.Remoting.Channels.IServerChannelSink
function m:CreateSink(channel) end

---@virtual
---@param channelData System.Runtime.Remoting.Channels.IChannelDataStore
function m:GetChannelData(channelData) end

System.Runtime.Remoting.Channels.ServerDispatchSinkProvider = m
return m
