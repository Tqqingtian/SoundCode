---@class UnityEngine.Experimental.Rendering.IRenderPipelineAsset : table
local m = {}

---@abstract
function m:DestroyCreatedInstances() end

---@abstract
---@return UnityEngine.Experimental.Rendering.IRenderPipeline
function m:CreatePipeline() end

---@abstract
---@return number
function m:GetTerrainBrushPassIndex() end

UnityEngine.Experimental.Rendering.IRenderPipelineAsset = m
return m
