---@class System.RuntimeFieldHandle : System.ValueType
---@field public Value System.IntPtr
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(handle:System.RuntimeFieldHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.RuntimeFieldHandle
---@param right System.RuntimeFieldHandle
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.RuntimeFieldHandle
---@param right System.RuntimeFieldHandle
---@return boolean
function m.op_Inequality(left, right) end

System.RuntimeFieldHandle = m
return m
