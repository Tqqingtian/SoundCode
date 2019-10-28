---@class System.Runtime.Remoting.Activation.RemoteActivationAttribute : System.Attribute
local m = {}

---@virtual
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param ctor System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsContextOK(ctx, ctor) end

---@virtual
---@param ctor System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:GetPropertiesForNewContext(ctor) end

System.Runtime.Remoting.Activation.RemoteActivationAttribute = m
return m
