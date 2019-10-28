---@class TQ.VarBool : TQ.Variable_1_System_Boolean_
local m = {}

---@overload fun(value:boolean): @static
---@static
---@return TQ.VarBool
function m.Alloc() end

---@static
---@param value TQ.VarBool
---@return boolean
function m.op_Implicit(value) end

TQ.VarBool = m
return m
