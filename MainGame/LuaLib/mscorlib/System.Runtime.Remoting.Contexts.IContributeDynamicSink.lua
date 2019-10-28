---@class System.Runtime.Remoting.Contexts.IContributeDynamicSink : table
local m = {}

---@abstract
---@return System.Runtime.Remoting.Contexts.IDynamicMessageSink
function m:GetDynamicSink() end

System.Runtime.Remoting.Contexts.IContributeDynamicSink = m
return m
