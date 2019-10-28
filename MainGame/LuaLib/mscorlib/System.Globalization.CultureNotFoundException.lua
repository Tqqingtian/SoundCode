---@class System.Globalization.CultureNotFoundException : System.ArgumentException
---@field public InvalidCultureId System.Nullable_1_System_Int32_
---@field public InvalidCultureName string
---@field public Message string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Globalization.CultureNotFoundException = m
return m
