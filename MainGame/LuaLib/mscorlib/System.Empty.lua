---@class System.Empty : System.Object
---@field public Value System.Empty @static
local m = {}

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Empty = m
return m
