---@class System.Runtime.Remoting.Services.EnterpriseServicesHelper : System.Object
local m = {}

---@static
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@param retObj System.MarshalByRefObject
---@return System.Runtime.Remoting.Activation.IConstructionReturnMessage
function m.CreateConstructionReturnMessage(ctorMsg, retObj) end

---@static
---@param oldcp System.Runtime.Remoting.Proxies.RealProxy
---@param newcp System.Runtime.Remoting.Proxies.RealProxy
function m.SwitchWrappers(oldcp, newcp) end

---@static
---@param punk System.IntPtr
---@return any
function m.WrapIUnknownWithComObject(punk) end

System.Runtime.Remoting.Services.EnterpriseServicesHelper = m
return m
