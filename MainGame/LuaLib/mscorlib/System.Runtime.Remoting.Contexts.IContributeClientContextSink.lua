---@class System.Runtime.Remoting.Contexts.IContributeClientContextSink : table
local m = {}

---@abstract
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m:GetClientContextSink(nextSink) end

System.Runtime.Remoting.Contexts.IContributeClientContextSink = m
return m
