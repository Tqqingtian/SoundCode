---@class System.Runtime.Remoting.Channels.IChannel : table
---@field public ChannelName string
---@field public ChannelPriority number
local m = {}

---@abstract
---@param url string
---@return string, System.String
function m:Parse(url) end

System.Runtime.Remoting.Channels.IChannel = m
return m
