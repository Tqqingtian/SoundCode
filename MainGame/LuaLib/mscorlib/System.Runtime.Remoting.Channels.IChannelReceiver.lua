---@class System.Runtime.Remoting.Channels.IChannelReceiver : table
---@field public ChannelData any
local m = {}

---@abstract
---@param objectURI string
---@return string[]
function m:GetUrlsForUri(objectURI) end

---@abstract
---@param data any
function m:StartListening(data) end

---@abstract
---@param data any
function m:StopListening(data) end

System.Runtime.Remoting.Channels.IChannelReceiver = m
return m
