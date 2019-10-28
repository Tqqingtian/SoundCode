---@class System.ModuleHandle : System.ValueType
---@field public EmptyHandle System.ModuleHandle @static
---@field public MDStreamVersion number
local m = {}

---@overload fun(fieldToken:number, typeInstantiationContext:System.RuntimeTypeHandle[], methodInstantiationContext:System.RuntimeTypeHandle[]):
---@param fieldToken number
---@return System.RuntimeFieldHandle
function m:ResolveFieldHandle(fieldToken) end

---@overload fun(methodToken:number, typeInstantiationContext:System.RuntimeTypeHandle[], methodInstantiationContext:System.RuntimeTypeHandle[]):
---@param methodToken number
---@return System.RuntimeMethodHandle
function m:ResolveMethodHandle(methodToken) end

---@overload fun(typeToken:number, typeInstantiationContext:System.RuntimeTypeHandle[], methodInstantiationContext:System.RuntimeTypeHandle[]):
---@param typeToken number
---@return System.RuntimeTypeHandle
function m:ResolveTypeHandle(typeToken) end

---@param fieldToken number
---@return System.RuntimeFieldHandle
function m:GetRuntimeFieldHandleFromMetadataToken(fieldToken) end

---@param methodToken number
---@return System.RuntimeMethodHandle
function m:GetRuntimeMethodHandleFromMetadataToken(methodToken) end

---@param typeToken number
---@return System.RuntimeTypeHandle
function m:GetRuntimeTypeHandleFromMetadataToken(typeToken) end

---@overload fun(handle:System.ModuleHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.ModuleHandle
---@param right System.ModuleHandle
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.ModuleHandle
---@param right System.ModuleHandle
---@return boolean
function m.op_Inequality(left, right) end

System.ModuleHandle = m
return m
