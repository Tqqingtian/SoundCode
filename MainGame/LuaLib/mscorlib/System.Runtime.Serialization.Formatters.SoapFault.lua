---@class System.Runtime.Serialization.Formatters.SoapFault : System.Object
---@field public FaultCode string
---@field public FaultString string
---@field public FaultActor string
---@field public Detail any
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Runtime.Serialization.Formatters.SoapFault = m
return m
