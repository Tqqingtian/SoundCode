---@class System.ParameterizedStrings.FormatParam : System.ValueType
---@field public Int32 number
---@field public String string
---@field public Object any
local m = {}

---@overload fun(value:string): @static
---@static
---@param value number
---@return System.ParameterizedStrings.FormatParam
function m.op_Implicit(value) end

System.ParameterizedStrings.FormatParam = m
return m
