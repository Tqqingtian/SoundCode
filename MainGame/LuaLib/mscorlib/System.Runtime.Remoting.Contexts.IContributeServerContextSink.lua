---@class System.Runtime.Remoting.Contexts.IContributeServerContextSink : table
local m = {}

---@abstract
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m:GetServerContextSink(nextSink) end

System.Runtime.Remoting.Contexts.IContributeServerContextSink = m
return m
