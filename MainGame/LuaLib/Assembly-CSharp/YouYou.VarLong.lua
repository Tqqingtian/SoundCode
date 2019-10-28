---@class TQ.VarLong : TQ.Variable_1_System_Int64_
local m = {}

---@overload fun(value:number): @static
---@static
---@return TQ.VarLong
function m.Alloc() end

---@static
---@param value TQ.VarLong
---@return number
function m.op_Implicit(value) end

TQ.VarLong = m
return m
