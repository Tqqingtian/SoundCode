---@class System.Collections.Comparer : System.Object
---@field public Default System.Collections.Comparer @static
---@field public DefaultInvariant System.Collections.Comparer @static
local m = {}

---@virtual
---@param a any
---@param b any
---@return number
function m:Compare(a, b) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Collections.Comparer = m
return m
