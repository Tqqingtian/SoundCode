---@class UnityEngine.RectInt : System.ValueType
---@field public x number
---@field public y number
---@field public center UnityEngine.Vector2
---@field public min UnityEngine.Vector2Int
---@field public max UnityEngine.Vector2Int
---@field public width number
---@field public height number
---@field public xMin number
---@field public yMin number
---@field public xMax number
---@field public yMax number
---@field public position UnityEngine.Vector2Int
---@field public size UnityEngine.Vector2Int
---@field public allPositionsWithin UnityEngine.RectInt.PositionEnumerator
local m = {}

---@param minPosition UnityEngine.Vector2Int
---@param maxPosition UnityEngine.Vector2Int
function m:SetMinMax(minPosition, maxPosition) end

---@param bounds UnityEngine.RectInt
function m:ClampToBounds(bounds) end

---@param position UnityEngine.Vector2Int
---@return boolean
function m:Contains(position) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param other UnityEngine.RectInt
---@return boolean
function m:Equals(other) end

UnityEngine.RectInt = m
return m
