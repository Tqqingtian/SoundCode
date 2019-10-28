---@class System.Runtime.Remoting.Contexts.SynchronizationAttribute : System.Runtime.Remoting.Contexts.ContextAttribute
---@field public NOT_SUPPORTED number @static
---@field public SUPPORTED number @static
---@field public REQUIRED number @static
---@field public REQUIRES_NEW number @static
---@field public IsReEntrant boolean
---@field public Locked boolean
local m = {}

---@virtual
---@param ctorMsg System.Runtime.Remoting.Activation.IConstructionCallMessage
function m:GetPropertiesForNewContext(ctorMsg) end

---@virtual
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m:GetClientContextSink(nextSink) end

---@virtual
---@param nextSink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m:GetServerContextSink(nextSink) end

---@virtual
---@param ctx System.Runtime.Remoting.Contexts.Context
---@param msg System.Runtime.Remoting.Activation.IConstructionCallMessage
---@return boolean
function m:IsContextOK(ctx, msg) end

System.Runtime.Remoting.Contexts.SynchronizationAttribute = m
return m
