---@class TQ.SafeInteger : System.ValueType
---@field public RealValue number
local m = {}

---@overload fun(n:number): @static
---@static
---@param si TQ.SafeInteger
---@return number
function m.op_Implicit(si) end

---@static
---@param si TQ.SafeInteger
---@return TQ.SafeInteger
function m.op_Increment(si) end

---@static
---@param si TQ.SafeInteger
---@return TQ.SafeInteger
function m.op_Decrement(si) end

---@virtual
---@return string
function m:ToString() end

TQ.SafeInteger = m
return m
