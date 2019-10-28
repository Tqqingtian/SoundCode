---@class TQ.VarTransform : TQ.Variable_1_UnityEngine_Transform_
local m = {}

---@overload fun(value:UnityEngine.Transform): @static
---@static
---@return TQ.VarTransform
function m.Alloc() end

---@static
---@param value TQ.VarTransform
---@return UnityEngine.Transform
function m.op_Implicit(value) end

TQ.VarTransform = m
return m
