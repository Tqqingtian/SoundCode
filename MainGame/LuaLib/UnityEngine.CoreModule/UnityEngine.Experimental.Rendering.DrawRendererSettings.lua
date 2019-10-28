---@class UnityEngine.Experimental.Rendering.DrawRendererSettings : System.ValueType
---@field public maxShaderPasses number @static
---@field public sorting UnityEngine.Experimental.Rendering.DrawRendererSortSettings
---@field public rendererConfiguration UnityEngine.Experimental.Rendering.RendererConfiguration
---@field public flags UnityEngine.Experimental.Rendering.DrawRendererFlags
local m = {}

---@param mat UnityEngine.Material
---@param passIndex number
function m:SetOverrideMaterial(mat, passIndex) end

---@param index number
---@param shaderPassName UnityEngine.Experimental.Rendering.ShaderPassName
function m:SetShaderPassName(index, shaderPassName) end

UnityEngine.Experimental.Rendering.DrawRendererSettings = m
return m
