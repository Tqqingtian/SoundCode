---@class System.DBNull : System.Object
---@field public Value System.DBNull @static
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

System.DBNull = m
return m
