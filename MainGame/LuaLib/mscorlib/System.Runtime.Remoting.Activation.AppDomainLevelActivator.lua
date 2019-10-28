---@class System.Runtime.Remoting.Activation.AppDomainLevelActivator : System.Object
---@field public Level System.Runtime.Remoting.Activation.ActivatorLevel
---@field public NextActivator System.Runtime.Remoting.Activation.IActivator
local m = {}

---@virtual
---@param ctorCall System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Runtime.Remoting.Activation.IConstructionReturnMessage
function m:Activate(ctorCall) end

System.Runtime.Remoting.Activation.AppDomainLevelActivator = m
return m
