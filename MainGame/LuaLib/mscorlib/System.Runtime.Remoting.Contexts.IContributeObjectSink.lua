---@class System.Runtime.Remoting.Contexts.IContributeObjectSink : table
local m = {}

---@abstract
---@param obj System.MarshalByRefObject
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m:GetObjectSink(obj, nextSink) end

System.Runtime.Remoting.Contexts.IContributeObjectSink = m
return m
