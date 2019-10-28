---@class System.Runtime.Hosting.ApplicationActivator : System.Object
local m = {}

---@overload fun(activationContext:System.ActivationContext, activationCustomData:string[]): @virtual
---@virtual
---@param activationContext System.ActivationContext
---@return System.Runtime.Remoting.ObjectHandle
function m:CreateInstance(activationContext) end

System.Runtime.Hosting.ApplicationActivator = m
return m
