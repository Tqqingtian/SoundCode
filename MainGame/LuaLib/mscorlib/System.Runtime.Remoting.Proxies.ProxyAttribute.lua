---@class System.Runtime.Remoting.Proxies.ProxyAttribute : System.Attribute
local m = {}

---@virtual
---@param serverType System.Type
---@return System.MarshalByRefObject
function m:CreateInstance(serverType) end

---@virtual
---@param objRef System.Runtime.Remoting.ObjRef
---@param serverType System.Type
---@param serverObject any
---@param serverContext System.Runtime.Remoting.Contexts.Context
---@return System.Runtime.Remoting.Proxies.RealProxy
function m:CreateProxy(objRef, serverType, serverObject, serverContext) end

---@virtual
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:GetPropertiesForNewContext(msg) end

---@virtual
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsContextOK(ctx, msg) end

System.Runtime.Remoting.Proxies.ProxyAttribute = m
return m
