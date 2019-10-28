---@class Mono.RuntimeClassHandle : System.ValueType
local m = {}

---@overload fun(handle:Mono.RuntimeClassHandle):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(left:any, right:Mono.RuntimeClassHandle): @static
---@static
---@param left Mono.RuntimeClassHandle
---@param right any
---@return boolean
function m.op_Equality(left, right) end

---@overload fun(left:any, right:Mono.RuntimeClassHandle): @static
---@static
---@param left Mono.RuntimeClassHandle
---@param right any
---@return boolean
function m.op_Inequality(left, right) end

Mono.RuntimeClassHandle = m
return m
