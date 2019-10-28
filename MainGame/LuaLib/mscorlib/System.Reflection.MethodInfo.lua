---@class System.Reflection.MethodInfo : System.Reflection.MethodBase
---@field public MemberType System.Reflection.MemberTypes
---@field public ReturnType System.Type
---@field public ReturnParameter System.Reflection.ParameterInfo
---@field public ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
local m = {}

---@static
---@param left System.Reflection.MethodInfo
---@param right System.Reflection.MethodInfo
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.MethodInfo
---@param right System.Reflection.MethodInfo
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@abstract
---@return System.Reflection.MethodInfo
function m:GetBaseDefinition() end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@virtual
---@return System.Reflection.MethodInfo
function m:GetGenericMethodDefinition() end

---@overload fun(): @virtual
---@virtual
---@param ... System.Type|System.Type[]
---@return System.Reflection.MethodInfo
function m:MakeGenericMethod(...) end

---@overload fun(delegateType:System.Type, target:any): @virtual
---@overload fun(delegateType:System.Type, target:any): @extension
---@virtual
---@param delegateType System.Type
---@return fun(...:any|any[]):
function m:CreateDelegate(delegateType) end

---@extension
---@return System.Reflection.MethodInfo
function m.GetRuntimeBaseDefinition() end

System.Reflection.MethodInfo = m
return m
