---@class System.Number.NumberBuffer : System.ValueType
---@field public NumberBufferBytes number @static
---@field public digits System.Char*
---@field public precision number
---@field public scale number
---@field public sign boolean
local m = {}

---@return System.Byte*
function m:PackForNative() end

System.Number.NumberBuffer = m
return m
