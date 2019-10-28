---@class UnityEngine.AndroidInput : System.Object
---@field public touchCountSecondary number @static
---@field public secondaryTouchEnabled boolean @static
---@field public secondaryTouchWidth number @static
---@field public secondaryTouchHeight number @static
local m = {}

---@static
---@param index number
---@return UnityEngine.Touch
function m.GetSecondaryTouch(index) end

UnityEngine.AndroidInput = m
return m
