---@class UnityEngine.Playables.PlayableBehaviour : System.Object
local m = {}

---@virtual
---@param playable UnityEngine.Playables.Playable
function m:OnGraphStart(playable) end

---@virtual
---@param playable UnityEngine.Playables.Playable
function m:OnGraphStop(playable) end

---@virtual
---@param playable UnityEngine.Playables.Playable
function m:OnPlayableCreate(playable) end

---@virtual
---@param playable UnityEngine.Playables.Playable
function m:OnPlayableDestroy(playable) end

---@virtual
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:OnBehaviourDelay(playable, info) end

---@virtual
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:OnBehaviourPlay(playable, info) end

---@virtual
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:OnBehaviourPause(playable, info) end

---@virtual
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:PrepareData(playable, info) end

---@virtual
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function m:PrepareFrame(playable, info) end

---@virtual
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData any
function m:ProcessFrame(playable, info, playerData) end

---@virtual
---@return any
function m:Clone() end

UnityEngine.Playables.PlayableBehaviour = m
return m
