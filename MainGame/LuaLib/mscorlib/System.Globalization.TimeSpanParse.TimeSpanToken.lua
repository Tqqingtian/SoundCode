---@class System.Globalization.TimeSpanParse.TimeSpanToken : System.ValueType
local m = {}

---@param maxValue number
---@param maxPrecision number
---@return boolean
function m:IsInvalidNumber(maxValue, maxPrecision) end

System.Globalization.TimeSpanParse.TimeSpanToken = m
return m
