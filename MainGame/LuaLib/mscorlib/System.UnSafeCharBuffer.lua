---@class System.UnSafeCharBuffer : System.ValueType
---@field public Length number
local m = {}

---@param stringToAppend string
function m:AppendString(stringToAppend) end

System.UnSafeCharBuffer = m
return m
