---@class System.ParameterizedStrings : System.Object
local m = {}

---@overload fun(format:string): @static
---@static
---@param format string
---@param ... System.ParameterizedStrings.FormatParam|System.ParameterizedStrings.FormatParam[]
---@return string
function m.Evaluate(format, ...) end

System.ParameterizedStrings = m
return m
