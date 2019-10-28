---@class UnityEngine.Playables.PlayableHandle : System.ValueType
---@field public Null UnityEngine.Playables.PlayableHandle @static
local m = {}

---@static
---@param x UnityEngine.Playables.PlayableHandle
---@param y UnityEngine.Playables.PlayableHandle
---@return boolean
function m.op_Equality(x, y) end

---@static
---@param x UnityEngine.Playables.PlayableHandle
---@param y UnityEngine.Playables.PlayableHandle
---@return boolean
function m.op_Inequality(x, y) end

---@overload fun(other:UnityEngine.Playables.PlayableHandle): @virtual
---@virtual
---@param p any
---@return boolean
function m:Equals(p) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.Playables.PlayableHandle = m
return m
