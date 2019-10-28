---@class UnityEngineInternal.NetFxCoreExtensions : System.Object
local m = {}

---@static
---@param self System.Reflection.MethodInfo
---@param delegateType System.Type
---@param target any
---@return fun(...:any|any[]):
function m.CreateDelegate(self, delegateType, target) end

---@static
---@param self fun(...:any|any[]):
---@return System.Reflection.MethodInfo
function m.GetMethodInfo(self) end

UnityEngineInternal.NetFxCoreExtensions = m
return m
