---@class UnityEngine.Sprites.DataUtility : System.Object
local m = {}

---@static
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector4
function m.GetInnerUV(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector4
function m.GetOuterUV(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector4
function m.GetPadding(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector2
function m.GetMinSize(sprite) end

UnityEngine.Sprites.DataUtility = m
return m
