---@class System.Runtime.Remoting.Channels.CrossAppDomainChannel : System.Object
---@field public ChannelName string
---@field public ChannelPriority number
---@field public ChannelData any
local m = {}

---@virtual
---@param url string
---@return string, System.String
function m:Parse(url) end

---@virtual
---@param objectURI string
---@return string[]
function m:GetUrlsForUri(objectURI) end

---@virtual
---@param data any
function m:StartListening(data) end

---@virtual
---@param data any
function m:StopListening(data) end

---@virtual
---@param url string
---@param data any
---@return System.Runtime.Remoting.Messaging.IMessageSink, System.String
function m:CreateMessageSink(url, data) end

System.Runtime.Remoting.Channels.CrossAppDomainChannel = m
return m
