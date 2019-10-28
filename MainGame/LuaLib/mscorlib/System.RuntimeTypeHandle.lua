---@class System.RuntimeTypeHandle : System.ValueType
---@field public Value System.IntPtr
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(handle:System.RuntimeTypeHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(left:any, right:System.RuntimeTypeHandle): @static
---@static
---@param left System.RuntimeTypeHandle
---@param right any
---@return boolean
function m.op_Equality(left, right) end

---@overload fun(left:any, right:System.RuntimeTypeHandle): @static
---@static
---@param left System.RuntimeTypeHandle
---@param right any
---@return boolean
function m.op_Inequality(left, right) end

---@return System.ModuleHandle
function m:GetModuleHandle() end

System.RuntimeTypeHandle = m
return m
