---@class UnityEngine.Debug : System.Object
---@field public unityLogger UnityEngine.ILogger @static
---@field public developerConsoleVisible boolean @static
---@field public isDebugBuild boolean @static
---@field public logger UnityEngine.ILogger @static
local m = {}

---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, color:UnityEngine.Color) @static
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3) @static
---@overload fun(start:UnityEngine.Vector3, _end:UnityEngine.Vector3, color:UnityEngine.Color, duration:number, depthTest:boolean) @static
---@static
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param color UnityEngine.Color
---@param duration number
function m.DrawLine(start, _end, color, duration) end

---@overload fun(start:UnityEngine.Vector3, dir:UnityEngine.Vector3, color:UnityEngine.Color) @static
---@overload fun(start:UnityEngine.Vector3, dir:UnityEngine.Vector3) @static
---@overload fun(start:UnityEngine.Vector3, dir:UnityEngine.Vector3, color:UnityEngine.Color, duration:number, depthTest:boolean) @static
---@static
---@param start UnityEngine.Vector3
---@param dir UnityEngine.Vector3
---@param color UnityEngine.Color
---@param duration number
function m.DrawRay(start, dir, color, duration) end

---@static
function m.Break() end

---@static
function m.DebugBreak() end

---@overload fun(message:any, context:UnityEngine.Object) @static
---@static
---@param message any
function m.Log(message) end

---@overload fun(format:string) @static
---@overload fun(context:UnityEngine.Object, format:string, ...:any|any[]) @static
---@overload fun(context:UnityEngine.Object, format:string) @static
---@static
---@param format string
---@param ... any|any[]
function m.LogFormat(format, ...) end

---@overload fun(message:any, context:UnityEngine.Object) @static
---@static
---@param message any
function m.LogError(message) end

---@overload fun(format:string) @static
---@overload fun(context:UnityEngine.Object, format:string, ...:any|any[]) @static
---@overload fun(context:UnityEngine.Object, format:string) @static
---@static
---@param format string
---@param ... any|any[]
function m.LogErrorFormat(format, ...) end

---@static
function m.ClearDeveloperConsole() end

---@overload fun(exception:System.Exception, context:UnityEngine.Object) @static
---@static
---@param exception System.Exception
function m.LogException(exception) end

---@overload fun(message:any, context:UnityEngine.Object) @static
---@static
---@param message any
function m.LogWarning(message) end

---@overload fun(format:string) @static
---@overload fun(context:UnityEngine.Object, format:string, ...:any|any[]) @static
---@overload fun(context:UnityEngine.Object, format:string) @static
---@static
---@param format string
---@param ... any|any[]
function m.LogWarningFormat(format, ...) end

---@overload fun(condition:boolean, context:UnityEngine.Object) @static
---@overload fun(condition:boolean, message:any) @static
---@overload fun(condition:boolean, message:string) @static
---@overload fun(condition:boolean, message:any, context:UnityEngine.Object) @static
---@overload fun(condition:boolean, message:string, context:UnityEngine.Object) @static
---@overload fun(condition:boolean, format:string, ...:any|any[]) @static
---@overload fun(condition:boolean, format:string) @static
---@static
---@param condition boolean
function m.Assert(condition) end

---@overload fun(condition:boolean, format:string) @static
---@overload fun(condition:boolean, context:UnityEngine.Object, format:string, ...:any|any[]) @static
---@overload fun(condition:boolean, context:UnityEngine.Object, format:string) @static
---@static
---@param condition boolean
---@param format string
---@param ... any|any[]
function m.AssertFormat(condition, format, ...) end

---@overload fun(message:any, context:UnityEngine.Object) @static
---@static
---@param message any
function m.LogAssertion(message) end

---@overload fun(format:string) @static
---@overload fun(context:UnityEngine.Object, format:string, ...:any|any[]) @static
---@overload fun(context:UnityEngine.Object, format:string) @static
---@static
---@param format string
---@param ... any|any[]
function m.LogAssertionFormat(format, ...) end

UnityEngine.Debug = m
return m
