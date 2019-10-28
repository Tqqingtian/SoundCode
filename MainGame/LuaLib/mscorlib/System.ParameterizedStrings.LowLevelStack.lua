---@class System.ParameterizedStrings.LowLevelStack : System.Object
local m = {}

---@return System.ParameterizedStrings.FormatParam
function m:Pop() end

---@param item System.ParameterizedStrings.FormatParam
function m:Push(item) end

function m:Clear() end

System.ParameterizedStrings.LowLevelStack = m
return m
