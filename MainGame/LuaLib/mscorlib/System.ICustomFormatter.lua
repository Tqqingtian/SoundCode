---@class System.ICustomFormatter : table
local m = {}

---@abstract
---@param format string
---@param arg any
---@param formatProvider System.IFormatProvider
---@return string
function m:Format(format, arg, formatProvider) end

System.ICustomFormatter = m
return m
