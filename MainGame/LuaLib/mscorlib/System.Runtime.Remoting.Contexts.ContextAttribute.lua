---@class System.Runtime.Remoting.Contexts.ContextAttribute : System.Attribute
---@field public Name string
local m = {}

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@param newContext System.Runtime.Remoting.Contexts.Context
function m:Freeze(newContext) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:GetPropertiesForNewContext(ctorMsg) end

---@virtual
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsContextOK(ctx, ctorMsg) end

---@virtual
---@param newCtx System.Runtime.Remoting.Contexts.Context
---@return boolean
function m:IsNewContextOK(newCtx) end

System.Runtime.Remoting.Contexts.ContextAttribute = m
return m
