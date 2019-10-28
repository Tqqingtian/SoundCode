---@class Mono.RuntimePropertyHandle : System.ValueType
---@field public Value System.IntPtr
local m = {}

---@overload fun(handle:Mono.RuntimePropertyHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left Mono.RuntimePropertyHandle
---@param right Mono.RuntimePropertyHandle
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left Mono.RuntimePropertyHandle
---@param right Mono.RuntimePropertyHandle
---@return boolean
function m.op_Inequality(left, right) end

Mono.RuntimePropertyHandle = m
return m
