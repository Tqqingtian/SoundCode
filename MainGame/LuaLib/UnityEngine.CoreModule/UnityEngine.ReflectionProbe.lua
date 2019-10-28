---@class UnityEngine.ReflectionProbe : UnityEngine.Behaviour
---@field public minBakedCubemapResolution number @static
---@field public maxBakedCubemapResolution number @static
---@field public defaultTextureHDRDecodeValues UnityEngine.Vector4 @static
---@field public defaultTexture UnityEngine.Texture @static
---@field public type UnityEngine.Rendering.ReflectionProbeType
---@field public size UnityEngine.Vector3
---@field public center UnityEngine.Vector3
---@field public nearClipPlane number
---@field public farClipPlane number
---@field public intensity number
---@field public bounds UnityEngine.Bounds
---@field public hdr boolean
---@field public shadowDistance number
---@field public resolution number
---@field public cullingMask number
---@field public clearFlags UnityEngine.Rendering.ReflectionProbeClearFlags
---@field public backgroundColor UnityEngine.Color
---@field public blendDistance number
---@field public boxProjection boolean
---@field public mode UnityEngine.Rendering.ReflectionProbeMode
---@field public importance number
---@field public refreshMode UnityEngine.Rendering.ReflectionProbeRefreshMode
---@field public timeSlicingMode UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
---@field public bakedTexture UnityEngine.Texture
---@field public customBakedTexture UnityEngine.Texture
---@field public realtimeTexture UnityEngine.RenderTexture
---@field public texture UnityEngine.Texture
---@field public textureHDRDecodeValues UnityEngine.Vector4
local m = {}

function m:Reset() end

---@overload fun(targetTexture:UnityEngine.RenderTexture):
---@return number
function m:RenderProbe() end

---@param renderId number
---@return boolean
function m:IsFinishedRendering(renderId) end

---@static
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@param blend number
---@param target UnityEngine.RenderTexture
---@return boolean
function m.BlendCubemap(src, dst, blend, target) end

---@static
---@param value fun(arg1:UnityEngine.ReflectionProbe, arg2:UnityEngine.ReflectionProbe.ReflectionProbeEvent)
function m.add_reflectionProbeChanged(value) end

---@static
---@param value fun(arg1:UnityEngine.ReflectionProbe, arg2:UnityEngine.ReflectionProbe.ReflectionProbeEvent)
function m.remove_reflectionProbeChanged(value) end

---@static
---@param value fun(obj:UnityEngine.Cubemap)
function m.add_defaultReflectionSet(value) end

---@static
---@param value fun(obj:UnityEngine.Cubemap)
function m.remove_defaultReflectionSet(value) end

UnityEngine.ReflectionProbe = m
return m
