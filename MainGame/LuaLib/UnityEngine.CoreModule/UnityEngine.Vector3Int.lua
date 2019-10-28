---@class UnityEngine.Vector3Int : System.ValueType
---@field public zero UnityEngine.Vector3Int @static
---@field public one UnityEngine.Vector3Int @static
---@field public up UnityEngine.Vector3Int @static
---@field public down UnityEngine.Vector3Int @static
---@field public left UnityEngine.Vector3Int @static
---@field public right UnityEngine.Vector3Int @static
---@field public x number
---@field public y number
---@field public z number
---@field public Item number
---@field public magnitude number
---@field public sqrMagnitude number
local m = {}

---@param x number
---@param y number
---@param z number
function m:Set(x, y, z) end

---@static
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return number
function m.Distance(a, b) end

---@static
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function m.Min(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function m.Max(lhs, rhs) end

---@overload fun(scale:UnityEngine.Vector3Int)
---@static
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function m.Scale(a, b) end

---@param min UnityEngine.Vector3Int
---@param max UnityEngine.Vector3Int
function m:Clamp(min, max) end

---@static
---@param v UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function m.op_Implicit(v) end

---@static
---@param v UnityEngine.Vector3Int
---@return UnityEngine.Vector2Int
function m.op_Explicit(v) end

---@static
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function m.FloorToInt(v) end

---@static
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function m.CeilToInt(v) end

---@static
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function m.RoundToInt(v) end

---@static
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function m.op_Addition(a, b) end

---@static
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function m.op_Subtraction(a, b) end

---@overload fun(a:UnityEngine.Vector3Int, b:number): @static
---@static
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function m.op_Multiply(a, b) end

---@static
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@overload fun(other:UnityEngine.Vector3Int): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Vector3Int = m
return m
