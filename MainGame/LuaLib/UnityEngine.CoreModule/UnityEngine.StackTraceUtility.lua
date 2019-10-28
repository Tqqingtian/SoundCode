---@class UnityEngine.StackTraceUtility : System.Object
local m = {}

---@static
---@return string
function m.ExtractStackTrace() end

---@static
---@param exception any
---@return string
function m.ExtractStringFromException(exception) end

UnityEngine.StackTraceUtility = m
return m
