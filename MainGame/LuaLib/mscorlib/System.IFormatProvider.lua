---@class System.IFormatProvider : table
local m = {}

---@abstract
---@param formatType System.Type
---@return any
function m:GetFormat(formatType) end

System.IFormatProvider = m
return m
