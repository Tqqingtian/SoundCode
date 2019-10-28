---@class System.Runtime.Remoting.Contexts.IContextAttribute : table
local m = {}

---@abstract
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:GetPropertiesForNewContext(msg) end

---@abstract
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsContextOK(ctx, msg) end

System.Runtime.Remoting.Contexts.IContextAttribute = m
return m
