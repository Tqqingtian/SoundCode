---@class UnityEngine.Rendering.GraphicsSettings : UnityEngine.Object
---@field public transparencySortMode UnityEngine.TransparencySortMode @static
---@field public transparencySortAxis UnityEngine.Vector3 @static
---@field public lightsUseLinearIntensity boolean @static
---@field public lightsUseColorTemperature boolean @static
---@field public useScriptableRenderPipelineBatching boolean @static
---@field public renderPipelineAsset UnityEngine.Experimental.Rendering.RenderPipelineAsset @static
local m = {}

---@overload fun(defineHash:UnityEngine.Rendering.BuiltinShaderDefine): @static
---@static
---@param tier UnityEngine.Rendering.GraphicsTier
---@param defineHash UnityEngine.Rendering.BuiltinShaderDefine
---@return boolean
function m.HasShaderDefine(tier, defineHash) end

---@static
---@param type UnityEngine.Rendering.BuiltinShaderType
---@param mode UnityEngine.Rendering.BuiltinShaderMode
function m.SetShaderMode(type, mode) end

---@static
---@param type UnityEngine.Rendering.BuiltinShaderType
---@return UnityEngine.Rendering.BuiltinShaderMode
function m.GetShaderMode(type) end

---@static
---@param type UnityEngine.Rendering.BuiltinShaderType
---@param shader UnityEngine.Shader
function m.SetCustomShader(type, shader) end

---@static
---@param type UnityEngine.Rendering.BuiltinShaderType
---@return UnityEngine.Shader
function m.GetCustomShader(type) end

UnityEngine.Rendering.GraphicsSettings = m
return m
