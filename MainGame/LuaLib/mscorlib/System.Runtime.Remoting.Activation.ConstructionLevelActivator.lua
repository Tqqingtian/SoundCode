---@class System.Runtime.Remoting.Activation.ConstructionLevelActivator : System.Object
---@field public Level System.Runtime.Remoting.Activation.ActivatorLevel
---@field public NextActivator System.Runtime.Remoting.Activation.IActivator
local m = {}

---@virtual
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Runtime.Remoting.Activation.IConstructionReturnMessage
function m:Activate(msg) end

System.Runtime.Remoting.Activation.ConstructionLevelActivator = m
return m
