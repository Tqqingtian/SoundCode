---@class System.Runtime.Remoting.Channels.IClientChannelSinkStack : table
local m = {}

---@abstract
---@param sink System.Runtime.Remoting.Channels.IClientChannelSink
---@return any
function m:Pop(sink) end

---@abstract
---@param sink System.Runtime.Remoting.Channels.IClientChannelSink
---@param state any
function m:Push(sink, state) end

System.Runtime.Remoting.Channels.IClientChannelSinkStack = m
return m
