---@class System.Runtime.Remoting.Contexts.ContextCallbackObject : System.ContextBoundObject
local m = {}

---@param deleg fun()
function m:DoCallBack(deleg) end

System.Runtime.Remoting.Contexts.ContextCallbackObject = m
return m
