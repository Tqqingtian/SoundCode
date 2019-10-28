---@class System.RuntimeMethodHandle : System.ValueType
---@field public Value System.IntPtr
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@return System.IntPtr
function m:GetFunctionPointer() end

---@overload fun(handle:System.RuntimeMethodHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.RuntimeMethodHandle
---@param right System.RuntimeMethodHandle
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.RuntimeMethodHandle
---@param right System.RuntimeMethodHandle
---@return boolean
function m.op_Inequality(left, right) end

System.RuntimeMethodHandle = m
return m
