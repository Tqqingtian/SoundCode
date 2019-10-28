---@class UnityEngine.Playables.ScriptPlayable_1_T_ : System.ValueType
---@field public Null UnityEngine.Playables.ScriptPlayable_1_T_ @static
local m = {}

---@overload fun(graph:UnityEngine.Playables.PlayableGraph): @static
---@overload fun(graph:UnityEngine.Playables.PlayableGraph, template:any, inputCount:number): @static
---@overload fun(graph:UnityEngine.Playables.PlayableGraph, template:any): @static
---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@return UnityEngine.Playables.ScriptPlayable_1_T_
function m.Create(graph, inputCount) end

---@virtual
---@return UnityEngine.Playables.PlayableHandle
function m:GetHandle() end

---@return any
function m:GetBehaviour() end

---@static
---@param playable UnityEngine.Playables.ScriptPlayable_1_T_
---@return UnityEngine.Playables.Playable
function m.op_Implicit(playable) end

---@static
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Playables.ScriptPlayable_1_T_
function m.op_Explicit(playable) end

---@virtual
---@param other UnityEngine.Playables.ScriptPlayable_1_T_
---@return boolean
function m:Equals(other) end

UnityEngine.Playables.ScriptPlayable_1_T_ = m
return m
