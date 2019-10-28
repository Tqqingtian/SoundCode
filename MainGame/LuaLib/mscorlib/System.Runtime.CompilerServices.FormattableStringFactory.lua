---@class System.Runtime.CompilerServices.FormattableStringFactory : System.Object
local m = {}

---@overload fun(format:string): @static
---@static
---@param format string
---@param ... any|any[]
---@return System.FormattableString
function m.Create(format, ...) end

System.Runtime.CompilerServices.FormattableStringFactory = m
return m
