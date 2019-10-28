---@class UnityEngine.ILogHandler : table
local m = {}

---@overload fun(logType:UnityEngine.LogType, context:UnityEngine.Object, format:string) @abstract
---@abstract
---@param logType UnityEngine.LogType
---@param context UnityEngine.Object
---@param format string
---@param ... any|any[]
function m:LogFormat(logType, context, format, ...) end

---@abstract
---@param exception System.Exception
---@param context UnityEngine.Object
function m:LogException(exception, context) end

UnityEngine.ILogHandler = m
return m
