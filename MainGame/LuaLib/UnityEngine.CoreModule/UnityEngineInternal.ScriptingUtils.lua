---@class UnityEngineInternal.ScriptingUtils : System.Object
local m = {}

---@static
---@param type System.Type
---@param methodInfo System.Reflection.MethodInfo
---@return fun(...:any|any[]):
function m.CreateDelegate(type, methodInfo) end

UnityEngineInternal.ScriptingUtils = m
return m
