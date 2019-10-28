---@class UnityEngine.GUILayer : UnityEngine.Behaviour
local m = {}

---@param screenPosition UnityEngine.Vector3
---@return UnityEngine.GUIElement
function m:HitTest(screenPosition) end

UnityEngine.GUILayer = m
return m
