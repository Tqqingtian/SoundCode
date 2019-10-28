---@class TQ.VarFloat : TQ.Variable_1_System_Single_
local m = {}

---@overload fun(value:number): @static
---@static
---@return TQ.VarFloat
function m.Alloc() end

---@static
---@param value TQ.VarFloat
---@return number
function m.op_Implicit(value) end

TQ.VarFloat = m
return m
