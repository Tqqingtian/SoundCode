---@class System.Runtime.Remoting.Contexts.IContextPropertyActivator : table
local m = {}

---@abstract
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:CollectFromClientContext(msg) end

---@abstract
---@param msg System.Runtime.Remoting.Activation.IConstructionReturnMessage
function m:CollectFromServerContext(msg) end

---@abstract
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:DeliverClientContextToServerContext(msg) end

---@abstract
---@param msg System.Runtime.Remoting.Activation.IConstructionReturnMessage
---@return boolean
function m:DeliverServerContextToClientContext(msg) end

---@abstract
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsOKToActivate(msg) end

System.Runtime.Remoting.Contexts.IContextPropertyActivator = m
return m
