---@class System.NotFiniteNumberException : System.ArithmeticException
---@field public OffendingNumber number
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.NotFiniteNumberException = m
return m
