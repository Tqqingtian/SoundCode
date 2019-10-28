---@class UnityEngine.Experimental.Playables.TextureMixerPlayable : System.ValueType
local m = {}

---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Experimental.Playables.TextureMixerPlayable
function m.Create(graph) end

---@virtual
---@return UnityEngine.Playables.PlayableHandle
function m:GetHandle() end

---@static
---@param playable UnityEngine.Experimental.Playables.TextureMixerPlayable
---@return UnityEngine.Playables.Playable
function m.op_Implicit(playable) end

---@static
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Playables.TextureMixerPlayable
function m.op_Explicit(playable) end

---@virtual
---@param other UnityEngine.Experimental.Playables.TextureMixerPlayable
---@return boolean
function m:Equals(other) end

UnityEngine.Experimental.Playables.TextureMixerPlayable = m
return m
