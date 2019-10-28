---@class System.Runtime.Remoting.Messaging.LogicalCallContext : System.Object
---@field public HasInfo boolean
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return any
function m:Clone() end

---@param name string
function m:FreeNamedDataSlot(name) end

---@param name string
---@return any
function m:GetData(name) end

---@param name string
---@param data any
function m:SetData(name, data) end

System.Runtime.Remoting.Messaging.LogicalCallContext = m
return m
