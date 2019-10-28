---@class System.Runtime.Remoting.Channels.IClientChannelSinkProvider : table
---@field public Next System.Runtime.Remoting.Channels.IClientChannelSinkProvider
local m = {}

---@abstract
---@param channel System.Runtime.Remoting.Channels.IChannelSender
---@param url string
---@param remoteChannelData any
---@return System.Runtime.Remoting.Channels.IClientChannelSink
function m:CreateSink(channel, url, remoteChannelData) end

System.Runtime.Remoting.Channels.IClientChannelSinkProvider = m
return m
