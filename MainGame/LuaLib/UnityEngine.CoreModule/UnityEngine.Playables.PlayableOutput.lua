---@class UnityEngine.Playables.PlayableOutput : System.ValueType
---@field public Null UnityEngine.Playables.PlayableOutput @static
local m = {}

---@virtual
---@return UnityEngine.Playables.PlayableOutputHandle
function m:GetHandle() end

---@return boolean
function m:IsPlayableOutputOfType() end

---@return System.Type
function m:GetPlayableOutputType() end

---@virtual
---@param other UnityEngine.Playables.PlayableOutput
---@return boolean
function m:Equals(other) end

UnityEngine.Playables.PlayableOutput = m
return m
