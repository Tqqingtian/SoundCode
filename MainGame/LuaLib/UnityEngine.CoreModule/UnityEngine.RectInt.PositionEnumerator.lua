---@class UnityEngine.RectInt.PositionEnumerator : System.ValueType
---@field public Current UnityEngine.Vector2Int
local m = {}

---@return UnityEngine.RectInt.PositionEnumerator
function m:GetEnumerator() end

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

UnityEngine.RectInt.PositionEnumerator = m
return m
