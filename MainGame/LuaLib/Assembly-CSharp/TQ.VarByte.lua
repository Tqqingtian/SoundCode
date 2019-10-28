---@class TQ.VarByte : TQ.Variable_1_System_Byte_
local m = {}

---@overload fun(value:number): @static
---@static
---@return TQ.VarByte
function m.Alloc() end

---@static
---@param value TQ.VarByte
---@return number
function m.op_Implicit(value) end

TQ.VarByte = m
return m
