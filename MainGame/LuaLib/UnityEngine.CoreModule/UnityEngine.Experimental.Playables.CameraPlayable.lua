---@class UnityEngine.Experimental.Playables.CameraPlayable : System.ValueType
local m = {}

---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@param camera UnityEngine.Camera
---@return UnityEngine.Experimental.Playables.CameraPlayable
function m.Create(graph, camera) end

---@virtual
---@return UnityEngine.Playables.PlayableHandle
function m:GetHandle() end

---@static
---@param playable UnityEngine.Experimental.Playables.CameraPlayable
---@return UnityEngine.Playables.Playable
function m.op_Implicit(playable) end

---@static
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Playables.CameraPlayable
function m.op_Explicit(playable) end

---@virtual
---@param other UnityEngine.Experimental.Playables.CameraPlayable
---@return boolean
function m:Equals(other) end

---@return UnityEngine.Camera
function m:GetCamera() end

---@param value UnityEngine.Camera
function m:SetCamera(value) end

UnityEngine.Experimental.Playables.CameraPlayable = m
return m
