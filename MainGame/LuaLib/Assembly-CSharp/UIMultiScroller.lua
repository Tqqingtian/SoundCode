---@class UIMultiScroller : UnityEngine.MonoBehaviour
---@field public _movement UIMultiScroller.Arrangement
---@field public maxPerLine number
---@field public spacingX number
---@field public spacingY number
---@field public cellWidth number
---@field public cellHeight number
---@field public viewCount number
---@field public itemPrefab UnityEngine.GameObject
---@field public _content UnityEngine.RectTransform
---@field public OnItemCreate fun(index:number, obj:UnityEngine.GameObject)
---@field public DataCount number
local m = {}

function m:ResetScroller() end

---@param pos UnityEngine.Vector2
function m:OnValueChange(pos) end

---@param i number
---@return UnityEngine.Vector3
function m:GetPosition(i) end

UIMultiScroller = m
return m
