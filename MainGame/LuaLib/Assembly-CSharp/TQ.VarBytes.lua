---@class TQ.VarBytes : TQ.Variable_1_System_Byte___
local m = {}

---@overload fun(value:string): @static
---@static
---@return TQ.VarBytes
function m.Alloc() end

---@static
---@param value TQ.VarBytes
---@return string
function m.op_Implicit(value) end

TQ.VarBytes = m
return m
