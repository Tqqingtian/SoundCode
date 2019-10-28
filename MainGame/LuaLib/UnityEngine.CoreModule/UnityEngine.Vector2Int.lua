---@class UnityEngine.Vector2Int : System.ValueType
---@field public zero UnityEngine.Vector2Int @static
---@field public one UnityEngine.Vector2Int @static
---@field public up UnityEngine.Vector2Int @static
---@field public down UnityEngine.Vector2Int @static
---@field public left UnityEngine.Vector2Int @static
---@field public right UnityEngine.Vector2Int @static
---@field public x number
---@field public y number
---@field public Item number
---@field public magnitude number
---@field public sqrMagnitude number
local m = {}

---@param x number
---@param y number
function m:Set(x, y) end

---@static
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return number
function m.Distance(a, b) end

---@static
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function m.Min(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function m.Max(lhs, rhs) end

---@overload fun(scale:UnityEngine.Vector2Int)
---@static
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function m.Scale(a, b) end

---@param min UnityEngine.Vector2Int
---@param max UnityEngine.Vector2Int
function m:Clamp(min, max) end

---@static
---@param v UnityEngine.Vector2Int
---@return UnityEngine.Vector2
function m.op_Implicit(v) end

---@static
---@param v UnityEngine.Vector2Int
---@return UnityEngine.Vector3Int
function m.op_Explicit(v) end

---@static
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function m.FloorToInt(v) end

---@static
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function m.CeilToInt(v) end

---@static
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function m.RoundToInt(v) end

---@static
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function m.op_Addition(a, b) end

---@static
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function m.op_Subtraction(a, b) end

---@overload fun(a:UnityEngine.Vector2Int, b:number): @static
---@static
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function m.op_Multiply(a, b) end

---@static
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(other:UnityEngine.Vector2Int): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

UnityEngine.Vector2Int = m
return m
