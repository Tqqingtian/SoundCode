---@class UnityEngine.BoundsInt.PositionEnumerator : System.ValueType
---@field public Current UnityEngine.Vector3Int
local m = {}

---@return UnityEngine.BoundsInt.PositionEnumerator
function m:GetEnumerator() end

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

UnityEngine.BoundsInt.PositionEnumerator = m
return m
