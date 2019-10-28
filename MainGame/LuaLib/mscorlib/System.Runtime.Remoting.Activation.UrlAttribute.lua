---@class System.Runtime.Remoting.Activation.UrlAttribute : System.Runtime.Remoting.Contexts.ContextAttribute
---@field public UrlValue string
local m = {}

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:GetPropertiesForNewContext(ctorMsg) end

---@virtual
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsContextOK(ctx, msg) end

System.Runtime.Remoting.Activation.UrlAttribute = m
return m
