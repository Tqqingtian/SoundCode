---@class UnityEngine.Logger : System.Object
---@field public logHandler UnityEngine.ILogHandler
---@field public logEnabled boolean
---@field public filterLogType UnityEngine.LogType
local m = {}

---@virtual
---@param logType UnityEngine.LogType
---@return boolean
function m:IsLogTypeAllowed(logType) end

---@overload fun(logType:UnityEngine.LogType, message:any, context:UnityEngine.Object) @virtual
---@overload fun(logType:UnityEngine.LogType, tag:string, message:any) @virtual
---@overload fun(logType:UnityEngine.LogType, tag:string, message:any, context:UnityEngine.Object) @virtual
---@overload fun(message:any) @virtual
---@overload fun(tag:string, message:any) @virtual
---@overload fun(tag:string, message:any, context:UnityEngine.Object) @virtual
---@virtual
---@param logType UnityEngine.LogType
---@param message any
function m:Log(logType, message) end

---@overload fun(tag:string, message:any, context:UnityEngine.Object) @virtual
---@virtual
---@param tag string
---@param message any
function m:LogWarning(tag, message) end

---@overload fun(tag:string, message:any, context:UnityEngine.Object) @virtual
---@virtual
---@param tag string
---@param message any
function m:LogError(tag, message) end

---@overload fun(logType:UnityEngine.LogType, format:string) @virtual
---@overload fun(logType:UnityEngine.LogType, context:UnityEngine.Object, format:string, ...:any|any[]) @virtual
---@overload fun(logType:UnityEngine.LogType, context:UnityEngine.Object, format:string) @virtual
---@virtual
---@param logType UnityEngine.LogType
---@param format string
---@param ... any|any[]
function m:LogFormat(logType, format, ...) end

---@overload fun(exception:System.Exception, context:UnityEngine.Object) @virtual
---@virtual
---@param exception System.Exception
function m:LogException(exception) end

UnityEngine.Logger = m
return m
