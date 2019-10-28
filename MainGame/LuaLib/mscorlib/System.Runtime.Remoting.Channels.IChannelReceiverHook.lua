---@class System.Runtime.Remoting.Channels.IChannelReceiverHook : table
---@field public ChannelScheme string
---@field public ChannelSinkChain System.Runtime.Remoting.Channels.IServerChannelSink
---@field public WantsToListen boolean
local m = {}

---@abstract
---@param channelUri string
function m:AddHookChannelUri(channelUri) end

System.Runtime.Remoting.Channels.IChannelReceiverHook = m
return m
