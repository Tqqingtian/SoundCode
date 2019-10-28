---@class UnityEngine.Experimental.Rendering.CullResults : System.ValueType
---@field public visibleLights UnityEngine.Experimental.Rendering.VisibleLight[]
---@field public visibleOffscreenVertexLights UnityEngine.Experimental.Rendering.VisibleLight[]
---@field public visibleReflectionProbes UnityEngine.Experimental.Rendering.VisibleReflectionProbe[]
---@field public visibleRenderers UnityEngine.Experimental.Rendering.FilterResults
local m = {}

---@overload fun(camera:UnityEngine.Camera, stereoAware:boolean):(, UnityEngine.Experimental.Rendering.ScriptableCullingParameters) @static
---@static
---@param camera UnityEngine.Camera
---@return boolean, UnityEngine.Experimental.Rendering.ScriptableCullingParameters
function m.GetCullingParameters(camera) end

---@overload fun(parameters:UnityEngine.Experimental.Rendering.ScriptableCullingParameters, renderLoop:UnityEngine.Experimental.Rendering.ScriptableRenderContext, results:UnityEngine.Experimental.Rendering.CullResults):(, UnityEngine.Experimental.Rendering.CullResults) @static
---@overload fun(camera:UnityEngine.Camera, renderLoop:UnityEngine.Experimental.Rendering.ScriptableRenderContext):(, UnityEngine.Experimental.Rendering.CullResults) @static
---@static
---@param parameters UnityEngine.Experimental.Rendering.ScriptableCullingParameters
---@param renderLoop UnityEngine.Experimental.Rendering.ScriptableRenderContext
---@return UnityEngine.Experimental.Rendering.CullResults, UnityEngine.Experimental.Rendering.ScriptableCullingParameters
function m.Cull(parameters, renderLoop) end

---@param lightIndex number
---@return boolean, UnityEngine.Bounds
function m:GetShadowCasterBounds(lightIndex) end

---@return number
function m:GetLightIndicesCount() end

---@param computeBuffer UnityEngine.ComputeBuffer
function m:FillLightIndices(computeBuffer) end

---@return number[]
function m:GetLightIndexMap() end

---@param mapping number[]
function m:SetLightIndexMap(mapping) end

---@param activeLightIndex number
---@return boolean, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4, UnityEngine.Experimental.Rendering.ShadowSplitData
function m:ComputeSpotShadowMatricesAndCullingPrimitives(activeLightIndex) end

---@param activeLightIndex number
---@param cubemapFace UnityEngine.CubemapFace
---@param fovBias number
---@return boolean, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4, UnityEngine.Experimental.Rendering.ShadowSplitData
function m:ComputePointShadowMatricesAndCullingPrimitives(activeLightIndex, cubemapFace, fovBias) end

---@param activeLightIndex number
---@param splitIndex number
---@param splitCount number
---@param splitRatio UnityEngine.Vector3
---@param shadowResolution number
---@param shadowNearPlaneOffset number
---@return boolean, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4, UnityEngine.Experimental.Rendering.ShadowSplitData
function m:ComputeDirectionalShadowMatricesAndCullingPrimitives(activeLightIndex, splitIndex, splitCount, splitRatio, shadowResolution, shadowNearPlaneOffset) end

UnityEngine.Experimental.Rendering.CullResults = m
return m
