---@class UnityEngine.Experimental.Rendering.ShadowSplitData : System.ValueType
---@field public cullingPlaneCount number
---@field public cullingSphere UnityEngine.Vector4
local m = {}

---@param index number
---@return UnityEngine.Plane
function m:GetCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetCullingPlane(index, plane) end

UnityEngine.Experimental.Rendering.ShadowSplitData = m
return m
