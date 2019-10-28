---@class System.Runtime.Remoting.Contexts.DynamicPropertyCollection : System.Object
---@field public HasProperties boolean
local m = {}

---@param prop System.Runtime.Remoting.Contexts.IDynamicProperty
---@return boolean
function m:RegisterDynamicProperty(prop) end

---@param name string
---@return boolean
function m:UnregisterDynamicProperty(name) end

---@param start boolean
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param client_site boolean
---@param async boolean
function m:NotifyMessage(start, msg, client_site, async) end

System.Runtime.Remoting.Contexts.DynamicPropertyCollection = m
return m
