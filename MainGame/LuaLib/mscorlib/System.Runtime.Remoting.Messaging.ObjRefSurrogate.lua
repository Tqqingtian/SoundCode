---@class System.Runtime.Remoting.Messaging.ObjRefSurrogate : System.Object
local m = {}

---@virtual
---@param obj any
---@param si System.Runtime.Serialization.SerializationInfo
---@param sc System.Runtime.Serialization.StreamingContext
function m:GetObjectData(obj, si, sc) end

---@virtual
---@param obj any
---@param si System.Runtime.Serialization.SerializationInfo
---@param sc System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return any
function m:SetObjectData(obj, si, sc, selector) end

System.Runtime.Remoting.Messaging.ObjRefSurrogate = m
return m
