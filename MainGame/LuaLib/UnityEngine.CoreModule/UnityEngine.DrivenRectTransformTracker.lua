---@class UnityEngine.DrivenRectTransformTracker : System.ValueType
local m = {}

---@static
function m.StopRecordingUndo() end

---@static
function m.StartRecordingUndo() end

---@param driver UnityEngine.Object
---@param rectTransform UnityEngine.RectTransform
---@param drivenProperties UnityEngine.DrivenTransformProperties
function m:Add(driver, rectTransform, drivenProperties) end

---@overload fun()
---@param revertValues boolean
function m:Clear(revertValues) end

UnityEngine.DrivenRectTransformTracker = m
return m
