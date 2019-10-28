---@class TQ.VarInt : TQ.Variable_1_System_Int32_
local m = {}

---@overload fun(value:number): @static
---@static
---@return TQ.VarInt
function m.Alloc() end

---@static
---@param value TQ.VarInt
---@return number
function m.op_Implicit(value) end

TQ.VarInt = m
return m
