---@class UnityEngine.Playables.IPlayableOutput : table
local m = {}

---@abstract
---@return UnityEngine.Playables.PlayableOutputHandle
function m:GetHandle() end

UnityEngine.Playables.IPlayableOutput = m
return m
