---@class UnityEngine.Playables.PlayableAsset : UnityEngine.ScriptableObject
---@field public duration number
---@field public outputs System.Collections.Generic.IEnumerable_1_UnityEngine_Playables_PlayableBinding_
local m = {}

---@abstract
---@param graph UnityEngine.Playables.PlayableGraph
---@param owner UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function m:CreatePlayable(graph, owner) end

UnityEngine.Playables.PlayableAsset = m
return m
