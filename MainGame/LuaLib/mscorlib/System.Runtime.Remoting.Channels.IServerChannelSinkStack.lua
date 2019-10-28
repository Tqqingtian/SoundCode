---@class System.Runtime.Remoting.Channels.IServerChannelSinkStack : table
local m = {}

---@abstract
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@return any
function m:Pop(sink) end

---@abstract
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state any
function m:Push(sink, state) end

---@abstract
---@param ar System.IAsyncResult
function m:ServerCallback(ar) end

---@abstract
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state any
function m:Store(sink, state) end

---@abstract
---@param sink System.Runtime.Remoting.Channels.IServerChannelSink
---@param state any
function m:StoreAndDispatch(sink, state) end

System.Runtime.Remoting.Channels.IServerChannelSinkStack = m
return m
