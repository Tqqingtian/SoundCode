---@class UnityEngine.Experimental.Rendering.ScriptableCullingParameters : System.ValueType
---@field public cullStereoView UnityEngine.Matrix4x4
---@field public cullStereoProj UnityEngine.Matrix4x4
---@field public cullStereoSeparation number
---@field public cullingPlaneCount number
---@field public isOrthographic boolean
---@field public lodParameters UnityEngine.Experimental.Rendering.LODParameters
---@field public cullingMask number
---@field public sceneMask number
---@field public layerCull number
---@field public cullingMatrix UnityEngine.Matrix4x4
---@field public position UnityEngine.Vector3
---@field public shadowDistance number
---@field public cullingFlags UnityEngine.Experimental.Rendering.CullFlag
---@field public reflectionProbeSortOptions UnityEngine.Experimental.Rendering.ReflectionProbeSortOptions
---@field public cameraProperties UnityEngine.Experimental.Rendering.CameraProperties
---@field public accurateOcclusionThreshold number
local m = {}

---@param layerIndex number
---@return number
function m:GetLayerCullDistance(layerIndex) end

---@param layerIndex number
---@param distance number
function m:SetLayerCullDistance(layerIndex, distance) end

---@param index number
---@return UnityEngine.Plane
function m:GetCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetCullingPlane(index, plane) end

UnityEngine.Experimental.Rendering.ScriptableCullingParameters = m
return m
