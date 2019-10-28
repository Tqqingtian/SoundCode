---@class System.Runtime.Remoting.Contexts.IContributeEnvoySink : table
local m = {}

---@abstract
---@param obj System.MarshalByRefObject
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m:GetEnvoySink(obj, nextSink) end

System.Runtime.Remoting.Contexts.IContributeEnvoySink = m
return m
