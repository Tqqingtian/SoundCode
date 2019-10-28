---@class UnityEngine.GUIElement : UnityEngine.Behaviour
local m = {}

---@overload fun(screenPosition:UnityEngine.Vector3, camera:UnityEngine.Camera):
---@param screenPosition UnityEngine.Vector3
---@return boolean
function m:HitTest(screenPosition) end

---@overload fun():
---@param camera UnityEngine.Camera
---@return UnityEngine.Rect
function m:GetScreenRect(camera) end

UnityEngine.GUIElement = m
return m
