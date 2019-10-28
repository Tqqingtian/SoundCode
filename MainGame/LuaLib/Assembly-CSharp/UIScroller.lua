---@class UIScroller : UnityEngine.MonoBehaviour
---@field public _movement UIScroller.Arrangement
---@field public cellPadiding number
---@field public cellWidth number
---@field public cellHeight number
---@field public viewCount number
---@field public itemPrefab UnityEngine.GameObject
---@field public _content UnityEngine.RectTransform
---@field public DataCount number
local m = {}

---@param pos UnityEngine.Vector2
function m:OnValueChange(pos) end

---@param index number
function m:AddItem(index) end

---@param index number
function m:DelItem(index) end

---@param i number
---@return UnityEngine.Vector3
function m:GetPosition(i) end

UIScroller = m
return m
