---@class UnityEngine.GeometryUtility : System.Object
local m = {}

---@overload fun(worldToProjectionMatrix:UnityEngine.Matrix4x4): @static
---@overload fun(camera:UnityEngine.Camera, planes:UnityEngine.Plane[]) @static
---@overload fun(worldToProjectionMatrix:UnityEngine.Matrix4x4, planes:UnityEngine.Plane[]) @static
---@static
---@param camera UnityEngine.Camera
---@return UnityEngine.Plane[]
function m.CalculateFrustumPlanes(camera) end

---@static
---@param positions UnityEngine.Vector3[]
---@param transform UnityEngine.Matrix4x4
---@return UnityEngine.Bounds
function m.CalculateBounds(positions, transform) end

---@static
---@param vertices UnityEngine.Vector3[]
---@return boolean, UnityEngine.Plane
function m.TryCreatePlaneFromPolygon(vertices) end

---@static
---@param planes UnityEngine.Plane[]
---@param bounds UnityEngine.Bounds
---@return boolean
function m.TestPlanesAABB(planes, bounds) end

UnityEngine.GeometryUtility = m
return m
