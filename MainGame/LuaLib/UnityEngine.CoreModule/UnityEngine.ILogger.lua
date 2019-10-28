---@class UnityEngine.ILogger : table
---@field public logHandler UnityEngine.ILogHandler
---@field public logEnabled boolean
---@field public filterLogType UnityEngine.LogType
local m = {}

---@abstract
---@param logType UnityEngine.LogType
---@return boolean
function m:IsLogTypeAllowed(logType) end

---@overload fun(logType:UnityEngine.LogType, message:any, context:UnityEngine.Object) @abstract
---@overload fun(logType:UnityEngine.LogType, tag:string, message:any) @abstract
---@overload fun(logType:UnityEngine.LogType, tag:string, message:any, context:UnityEngine.Object) @abstract
---@overload fun(message:any) @abstract
---@overload fun(tag:string, message:any) @abstract
---@overload fun(tag:string, message:any, context:UnityEngine.Object) @abstract
---@abstract
---@param logType UnityEngine.LogType
---@param message any
function m:Log(logType, message) end

---@overload fun(tag:string, message:any, context:UnityEngine.Object) @abstract
---@abstract
---@param tag string
---@param message any
function m:LogWarning(tag, message) end

---@overload fun(tag:string, message:any, context:UnityEngine.Object) @abstract
---@abstract
---@param tag string
---@param message any
function m:LogError(tag, message) end

---@overload fun(logType:UnityEngine.LogType, format:string) @abstract
---@abstract
---@param logType UnityEngine.LogType
---@param format string
---@param ... any|any[]
function m:LogFormat(logType, format, ...) end

---@abstract
---@param exception System.Exception
function m:LogException(exception) end

UnityEngine.ILogger = m
return m
