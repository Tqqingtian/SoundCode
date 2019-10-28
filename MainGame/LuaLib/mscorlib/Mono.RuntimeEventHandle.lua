---@class Mono.RuntimeEventHandle : System.ValueType
---@field public Value System.IntPtr
local m = {}

---@overload fun(handle:Mono.RuntimeEventHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left Mono.RuntimeEventHandle
---@param right Mono.RuntimeEventHandle
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left Mono.RuntimeEventHandle
---@param right Mono.RuntimeEventHandle
---@return boolean
function m.op_Inequality(left, right) end

Mono.RuntimeEventHandle = m
return m
