---@class UnityEngine.DebugLogHandler : System.Object
local m = {}

---@overload fun(logType:UnityEngine.LogType, context:UnityEngine.Object, format:string) @virtual
---@virtual
---@param logType UnityEngine.LogType
---@param context UnityEngine.Object
---@param format string
---@param ... any|any[]
function m:LogFormat(logType, context, format, ...) end

---@virtual
---@param exception System.Exception
---@param context UnityEngine.Object
function m:LogException(exception, context) end

UnityEngine.DebugLogHandler = m
return m
