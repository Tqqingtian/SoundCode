---@class System.Diagnostics.AssertFilter : System.Object
local m = {}

---@abstract
---@param condition string
---@param message string
---@param location System.Diagnostics.StackTrace
---@param stackTraceFormat System.Diagnostics.StackTrace.TraceFormat
---@param windowTitle string
---@return System.Diagnostics.AssertFilters
function m:AssertFailure(condition, message, location, stackTraceFormat, windowTitle) end

System.Diagnostics.AssertFilter = m
return m
