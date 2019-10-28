---@class UnityEngine.Playables.IPlayable : table
local m = {}

---@abstract
---@return UnityEngine.Playables.PlayableHandle
function m:GetHandle() end

UnityEngine.Playables.IPlayable = m
return m
