---@class Locale : System.Object
local m = {}

---@overload fun(fmt:string, ...:any|any[]): @static
---@overload fun(fmt:string): @static
---@static
---@param msg string
---@return string
function m.GetText(msg) end

Locale = m
return m
