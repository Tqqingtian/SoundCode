---@class UnityEngine.Experimental.Rendering.CameraProperties : System.ValueType
local m = {}

---@param index number
---@return UnityEngine.Plane
function m:GetShadowCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetShadowCullingPlane(index, plane) end

---@param index number
---@return UnityEngine.Plane
function m:GetCameraCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetCameraCullingPlane(index, plane) end

UnityEngine.Experimental.Rendering.CameraProperties = m
return m
