---@class UnityEngine.Experimental.Playables.TexturePlayableOutput : System.ValueType
---@field public Null UnityEngine.Experimental.Playables.TexturePlayableOutput @static
local m = {}

---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@param target UnityEngine.RenderTexture
---@return UnityEngine.Experimental.Playables.TexturePlayableOutput
function m.Create(graph, name, target) end

---@virtual
---@return UnityEngine.Playables.PlayableOutputHandle
function m:GetHandle() end

---@static
---@param output UnityEngine.Experimental.Playables.TexturePlayableOutput
---@return UnityEngine.Playables.PlayableOutput
function m.op_Implicit(output) end

---@static
---@param output UnityEngine.Playables.PlayableOutput
---@return UnityEngine.Experimental.Playables.TexturePlayableOutput
function m.op_Explicit(output) end

---@return UnityEngine.RenderTexture
function m:GetTarget() end

---@param value UnityEngine.RenderTexture
function m:SetTarget(value) end

UnityEngine.Experimental.Playables.TexturePlayableOutput = m
return m
