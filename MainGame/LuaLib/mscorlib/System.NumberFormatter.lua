---@class System.NumberFormatter : System.Object
local m = {}

---@overload fun(format:string, value:number, fp:System.IFormatProvider): @static
---@overload fun(format:string, value:number, fp:System.IFormatProvider): @static
---@overload fun(format:string, value:number, fp:System.IFormatProvider): @static
---@overload fun(format:string, value:number, fp:System.IFormatProvider): @static
---@overload fun(format:string, value:number, fp:System.IFormatProvider): @static
---@overload fun(format:string, value:System.Decimal, fp:System.IFormatProvider): @static
---@static
---@param format string
---@param value number
---@param fp System.IFormatProvider
---@return string
function m.NumberToString(format, value, fp) end

System.NumberFormatter = m
return m
