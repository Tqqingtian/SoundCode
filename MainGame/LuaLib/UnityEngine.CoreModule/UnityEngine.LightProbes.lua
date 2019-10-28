---@class UnityEngine.LightProbes : UnityEngine.Object
---@field public positions UnityEngine.Vector3[]
---@field public bakedProbes UnityEngine.Rendering.SphericalHarmonicsL2[]
---@field public count number
---@field public cellCount number
---@field public coefficients number[]
local m = {}

---@static
---@param position UnityEngine.Vector3
---@param renderer UnityEngine.Renderer
---@return UnityEngine.Rendering.SphericalHarmonicsL2
function m.GetInterpolatedProbe(position, renderer) end

---@overload fun(positions:UnityEngine.Vector3[], lightProbes:UnityEngine.Rendering.SphericalHarmonicsL2[], occlusionProbes:UnityEngine.Vector4[]) @static
---@static
---@param positions UnityEngine.Vector3[]
---@param lightProbes UnityEngine.Rendering.SphericalHarmonicsL2[]
---@param occlusionProbes UnityEngine.Vector4[]
function m.CalculateInterpolatedLightAndOcclusionProbes(positions, lightProbes, occlusionProbes) end

---@param position UnityEngine.Vector3
---@param renderer UnityEngine.Renderer
---@param coefficients number[]
function m:GetInterpolatedLightProbe(position, renderer, coefficients) end

UnityEngine.LightProbes = m
return m
