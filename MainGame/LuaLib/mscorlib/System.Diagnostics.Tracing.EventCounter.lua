---@class System.Diagnostics.Tracing.EventCounter : System.Object
local m = {}

---@param value number
function m:WriteMetric(value) end

System.Diagnostics.Tracing.EventCounter = m
return m
