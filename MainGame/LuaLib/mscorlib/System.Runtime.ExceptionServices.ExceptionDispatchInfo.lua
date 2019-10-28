---@class System.Runtime.ExceptionServices.ExceptionDispatchInfo : System.Object
---@field public SourceException System.Exception
local m = {}

---@static
---@param source System.Exception
---@return System.Runtime.ExceptionServices.ExceptionDispatchInfo
function m.Capture(source) end

---@overload fun(source:System.Exception) @static
function m:Throw() end

System.Runtime.ExceptionServices.ExceptionDispatchInfo = m
return m
