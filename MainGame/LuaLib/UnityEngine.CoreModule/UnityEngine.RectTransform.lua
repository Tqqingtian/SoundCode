---@class UnityEngine.RectTransform : UnityEngine.Transform
---@field public rect UnityEngine.Rect
---@field public anchorMin UnityEngine.Vector2
---@field public anchorMax UnityEngine.Vector2
---@field public anchoredPosition UnityEngine.Vector2
---@field public sizeDelta UnityEngine.Vector2
---@field public pivot UnityEngine.Vector2
---@field public anchoredPosition3D UnityEngine.Vector3
---@field public offsetMin UnityEngine.Vector2
---@field public offsetMax UnityEngine.Vector2
local m = {}

---@static
---@param value fun(driven:UnityEngine.RectTransform)
function m.add_reapplyDrivenProperties(value) end

---@static
---@param value fun(driven:UnityEngine.RectTransform)
function m.remove_reapplyDrivenProperties(value) end

function m:ForceUpdateRectTransforms() end

---@param fourCornersArray UnityEngine.Vector3[]
function m:GetLocalCorners(fourCornersArray) end

---@param fourCornersArray UnityEngine.Vector3[]
function m:GetWorldCorners(fourCornersArray) end

---@param edge UnityEngine.RectTransform.Edge
---@param inset number
---@param size number
function m:SetInsetAndSizeFromParentEdge(edge, inset, size) end

---@param axis UnityEngine.RectTransform.Axis
---@param size number
function m:SetSizeWithCurrentAnchors(axis, size) end

UnityEngine.RectTransform = m
return m
