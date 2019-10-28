---@class TQ.VarGameObject : TQ.Variable_1_UnityEngine_GameObject_
local m = {}

---@overload fun(value:UnityEngine.GameObject): @static
---@static
---@return TQ.VarGameObject
function m.Alloc() end

---@static
---@param value TQ.VarGameObject
---@return UnityEngine.GameObject
function m.op_Implicit(value) end

TQ.VarGameObject = m
return m
