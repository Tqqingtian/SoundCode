---@class System.Diagnostics.DefaultFilter : System.Diagnostics.AssertFilter
local m = {}

---@virtual
---@param condition string
---@param message string
---@param location System.Diagnostics.StackTrace
---@param stackTraceFormat System.Diagnostics.StackTrace.TraceFormat
---@param windowTitle string
---@return System.Diagnostics.AssertFilters
function m:AssertFailure(condition, message, location, stackTraceFormat, windowTitle) end

System.Diagnostics.DefaultFilter = m
return m
