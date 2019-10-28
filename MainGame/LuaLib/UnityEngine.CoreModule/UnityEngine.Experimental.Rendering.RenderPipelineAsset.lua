---@class UnityEngine.Experimental.Rendering.RenderPipelineAsset : UnityEngine.ScriptableObject
local m = {}

---@virtual
function m:DestroyCreatedInstances() end

---@virtual
---@return UnityEngine.Experimental.Rendering.IRenderPipeline
function m:CreatePipeline() end

---@virtual
---@return number
function m:GetTerrainBrushPassIndex() end

---@virtual
---@return string[]
function m:GetRenderingLayerMaskNames() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultMaterial() end

---@virtual
---@return UnityEngine.Shader
function m:GetAutodeskInteractiveShader() end

---@virtual
---@return UnityEngine.Shader
function m:GetAutodeskInteractiveTransparentShader() end

---@virtual
---@return UnityEngine.Shader
function m:GetAutodeskInteractiveMaskedShader() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultParticleMaterial() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultLineMaterial() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultTerrainMaterial() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultUIMaterial() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultUIOverdrawMaterial() end

---@virtual
---@return UnityEngine.Material
function m:GetDefaultUIETC1SupportedMaterial() end

---@virtual
---@return UnityEngine.Material
function m:GetDefault2DMaterial() end

---@virtual
---@return UnityEngine.Shader
function m:GetDefaultShader() end

UnityEngine.Experimental.Rendering.RenderPipelineAsset = m
return m
