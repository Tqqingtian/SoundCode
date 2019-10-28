---@class System.Reflection.RuntimeMethodInfo : System.Reflection.MethodInfo
---@field public Module System.Reflection.Module
local m = {}

---@overload fun(delegateType:System.Type, target:any): @virtual
---@virtual
---@param delegateType System.Type
---@return fun(...:any|any[]):
function m:CreateDelegate(delegateType) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Reflection.RuntimeMethodInfo = m
return m
