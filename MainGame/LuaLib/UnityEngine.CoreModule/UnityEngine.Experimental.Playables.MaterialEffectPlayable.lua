---@class UnityEngine.Experimental.Playables.MaterialEffectPlayable : System.ValueType
local m = {}

---@overload fun(graph:UnityEngine.Playables.PlayableGraph, material:UnityEngine.Material): @static
---@static
---@param graph UnityEngine.Playables.PlayableGraph
---@param material UnityEngine.Material
---@param pass number
---@return UnityEngine.Experimental.Playables.MaterialEffectPlayable
function m.Create(graph, material, pass) end

---@virtual
---@return UnityEngine.Playables.PlayableHandle
function m:GetHandle() end

---@static
---@param playable UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return UnityEngine.Playables.Playable
function m.op_Implicit(playable) end

---@static
---@param playable UnityEngine.Playables.Playable
---@return UnityEngine.Experimental.Playables.MaterialEffectPlayable
function m.op_Explicit(playable) end

---@virtual
---@param other UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return boolean
function m:Equals(other) end

---@return UnityEngine.Material
function m:GetMaterial() end

---@param value UnityEngine.Material
function m:SetMaterial(value) end

---@return number
function m:GetPass() end

---@param value number
function m:SetPass(value) end

UnityEngine.Experimental.Playables.MaterialEffectPlayable = m
return m
