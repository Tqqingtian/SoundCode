---@class UnityEngine.Playables.Playable : System.ValueType
---@field public Null UnityEngine.Playables.Playable @static
local m = {}

---@overload fun(graph:UnityEngine.Playables.PlayableGraph): @static
---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@return UnityEngine.Playables.Playable
function m.Create(graph, inputCount) end

---@virtual
---@return UnityEngine.Playables.PlayableHandle
function m:GetHandle() end

---@return boolean
function m:IsPlayableOfType() end

---@return System.Type
function m:GetPlayableType() end

---@virtual
---@param other UnityEngine.Playables.Playable
---@return boolean
function m:Equals(other) end

UnityEngine.Playables.Playable = m
return m
