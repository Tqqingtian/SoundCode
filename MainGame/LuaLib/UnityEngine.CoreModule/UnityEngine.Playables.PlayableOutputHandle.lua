---@class UnityEngine.Playables.PlayableOutputHandle : System.ValueType
---@field public Null UnityEngine.Playables.PlayableOutputHandle @static
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param lhs UnityEngine.Playables.PlayableOutputHandle
---@param rhs UnityEngine.Playables.PlayableOutputHandle
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Playables.PlayableOutputHandle
---@param rhs UnityEngine.Playables.PlayableOutputHandle
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(other:UnityEngine.Playables.PlayableOutputHandle): @virtual
---@virtual
---@param p any
---@return boolean
function m:Equals(p) end

UnityEngine.Playables.PlayableOutputHandle = m
return m
