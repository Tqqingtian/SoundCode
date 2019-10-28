---@class System.Runtime.Remoting.Messaging.ConstructionCall : System.Runtime.Remoting.Messaging.MethodCall
---@field public ActivationType System.Type
---@field public ActivationTypeName string
---@field public Activator System.Runtime.Remoting.Activation.IActivator
---@field public CallSiteActivationAttributes any[]
---@field public ContextProperties System.Collections.IList
---@field public Properties System.Collections.IDictionary
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Runtime.Remoting.Messaging.ConstructionCall = m
return m
