---@class System.IFormattable : table
local m = {}

---@abstract
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function m:ToString(format, formatProvider) end

System.IFormattable = m
return m
