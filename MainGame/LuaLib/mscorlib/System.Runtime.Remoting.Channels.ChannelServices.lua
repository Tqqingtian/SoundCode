---@class System.Runtime.Remoting.Channels.ChannelServices : System.Object
---@field public RegisteredChannels System.Runtime.Remoting.Channels.IChannel[] @static
local m = {}

---@static
---@param provider System.Runtime.Remoting.Channels.IServerChannelSinkProvider
---@param channel System.Runtime.Remoting.Channels.IChannelReceiver
---@return System.Runtime.Remoting.Channels.IServerChannelSink
function m.CreateServerChannelSinkChain(provider, channel) end

---@static
---@param sinkStack System.Runtime.Remoting.Channels.IServerChannelSinkStack
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Channels.ServerProcessing, System.Runtime.Remoting.Messaging.IMessage
function m.DispatchMessage(sinkStack, msg) end

---@static
---@param name string
---@return System.Runtime.Remoting.Channels.IChannel
function m.GetChannel(name) end

---@static
---@param obj any
---@return System.Collections.IDictionary
function m.GetChannelSinkProperties(obj) end

---@static
---@param obj System.MarshalByRefObject
---@return string[]
function m.GetUrlsForObject(obj) end

---@overload fun(chnl:System.Runtime.Remoting.Channels.IChannel, ensureSecurity:boolean) @static
---@static
---@param chnl System.Runtime.Remoting.Channels.IChannel
function m.RegisterChannel(chnl) end

---@static
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m.SyncDispatchMessage(msg) end

---@static
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m.AsyncDispatchMessage(msg, replySink) end

---@static
---@param chnl System.Runtime.Remoting.Channels.IChannel
function m.UnregisterChannel(chnl) end

System.Runtime.Remoting.Channels.ChannelServices = m
return m
