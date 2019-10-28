---@class UnityEngine.Playables.ScriptPlayableOutput : System.ValueType
---@field public Null UnityEngine.Playables.ScriptPlayableOutput @static
local m = {}

---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@return UnityEngine.Playables.ScriptPlayableOutput
function m.Create(graph, name) end

---@virtual
---@return UnityEngine.Playables.PlayableOutputHandle
function m:GetHandle() end

---@static
---@param output UnityEngine.Playables.ScriptPlayableOutput
---@return UnityEngine.Playables.PlayableOutput
function m.op_Implicit(output) end

---@static
---@param output UnityEngine.Playables.PlayableOutput
---@return UnityEngine.Playables.ScriptPlayableOutput
function m.op_Explicit(output) end

UnityEngine.Playables.ScriptPlayableOutput = m
return m
