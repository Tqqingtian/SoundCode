---@class System.Nullable_1_T_ : System.ValueType
---@field public HasValue boolean
---@field public Value System.ValueType
local m = {}

---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(defaultValue:System.ValueType):
---@return System.ValueType
function m:GetValueOrDefault() end

---@virtual
---@return string
function m:ToString() end

---@static
---@param value System.ValueType
---@return System.Nullable_1_T_
function m.op_Implicit(value) end

---@static
---@param value System.Nullable_1_T_
---@return System.ValueType
function m.op_Explicit(value) end

System.Nullable_1_T_ = m
return m
