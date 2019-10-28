---@class UnityEngine.Playables.IPlayableBehaviour : table
local m = {}

---@abstract
---@param playable UnityEngine.Playables.Playable
function m:OnGraphStart(playable) end

---@abstract
---@param playable UnityEngine.Playables.Playable
function m:OnGraphStop(playable) end

---@abstract
---@param playable UnityEngine.Playables.Playable
function m:OnPlayableCreate(playable) end

---@abstract
---@param playable UnityEngine.Playables.Playable
function m:OnPlayableDestroy(playable) end

---@abstract
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:OnBehaviourPlay(playable, info) end

---@abstract
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:OnBehaviourPause(playable, info) end

---@abstract
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:PrepareFrame(playable, info) end

---@abstract
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData any
function m:ProcessFrame(playable, info, playerData) end

UnityEngine.Playables.IPlayableBehaviour = m
return m
