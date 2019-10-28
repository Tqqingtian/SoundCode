---@class System.Globalization.CharUnicodeInfo : System.Object
local m = {}

---@overload fun(s:string, index:number): @static
---@static
---@param ch number
---@return number
function m.GetNumericValue(ch) end

---@overload fun(s:string, index:number): @static
---@static
---@param ch number
---@return number
function m.GetDecimalDigitValue(ch) end

---@overload fun(s:string, index:number): @static
---@static
---@param ch number
---@return number
function m.GetDigitValue(ch) end

---@overload fun(s:string, index:number): @static
---@static
---@param ch number
---@return System.Globalization.UnicodeCategory
function m.GetUnicodeCategory(ch) end

System.Globalization.CharUnicodeInfo = m
return m
