---@class System.Runtime.Remoting.Activation.ActivationServices : System.Object
local m = {}

---@static
---@param proxy System.Runtime.Remoting.Proxies.RemotingProxy
---@param ctorCall System.Runtime.Remoting.Messaging.ConstructionCall
---@return System.Runtime.Remoting.Messaging.IMessage
function m.Activate(proxy, ctorCall) end

---@static
---@param ctorCall System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m.RemoteActivate(ctorCall) end

---@static
---@param type System.Type
---@param activationAttributes any[]
---@return any
function m.CreateProxyFromAttributes(type, activationAttributes) end

---@static
---@param type System.Type
---@param activationUrl string
---@param activationAttributes any[]
---@return System.Runtime.Remoting.Messaging.ConstructionCall
function m.CreateConstructionCall(type, activationUrl, activationAttributes) end

---@static
---@param ctorCall System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m.CreateInstanceFromMessage(ctorCall) end

---@static
---@param type System.Type
---@return any
function m.CreateProxyForType(type) end

---@static
---@param type System.Type
---@return any
function m.AllocateUninitializedClassInstance(type) end

---@static
---@param type System.Type
---@param enable boolean
function m.EnableProxyActivation(type, enable) end

System.Runtime.Remoting.Activation.ActivationServices = m
return m
