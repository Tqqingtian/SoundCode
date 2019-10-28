---@class UnityEngine.RectOffset : System.Object
---@field public left number
---@field public right number
---@field public top number
---@field public bottom number
---@field public horizontal number
---@field public vertical number
local m = {}

---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function m:Add(rect) end

---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function m:Remove(rect) end

---@virtual
---@return string
function m:ToString() end

UnityEngine.RectOffset = m
return m
