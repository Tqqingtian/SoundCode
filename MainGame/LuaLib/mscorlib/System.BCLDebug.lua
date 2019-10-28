---@class System.BCLDebug : System.Object
local m = {}

---@static
---@param condition boolean
---@param message string
function m.Assert(condition, message) end

---@overload fun(switchName:string, message:string) @static
---@overload fun(switchName:string, level:System.LogLevel, ...:any|any[]) @static
---@overload fun(switchName:string, level:System.LogLevel) @static
---@static
---@param message string
function m.Log(message) end

---@overload fun(switchName:string) @static
---@static
---@param switchName string
---@param ... any|any[]
function m.Trace(switchName, ...) end

System.BCLDebug = m
return m
