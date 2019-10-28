---@class UnityEngine.Rect : System.ValueType
---@field public zero UnityEngine.Rect @static
---@field public x number
---@field public y number
---@field public position UnityEngine.Vector2
---@field public center UnityEngine.Vector2
---@field public min UnityEngine.Vector2
---@field public max UnityEngine.Vector2
---@field public width number
---@field public height number
---@field public size UnityEngine.Vector2
---@field public xMin number
---@field public yMin number
---@field public xMax number
---@field public yMax number
---@field public left number
---@field public right number
---@field public top number
---@field public bottom number
local m = {}

---@static
---@param xmin number
---@param ymin number
---@param xmax number
---@param ymax number
---@return UnityEngine.Rect
function m.MinMaxRect(xmin, ymin, xmax, ymax) end

---@param x number
---@param y number
---@param width number
---@param height number
function m:Set(x, y, width, height) end

---@overload fun(point:UnityEngine.Vector3):
---@overload fun(point:UnityEngine.Vector3, allowInverse:boolean):
---@param point UnityEngine.Vector2
---@return boolean
function m:Contains(point) end

---@overload fun(other:UnityEngine.Rect, allowInverse:boolean):
---@param other UnityEngine.Rect
---@return boolean
function m:Overlaps(other) end

---@static
---@param rectangle UnityEngine.Rect
---@param normalizedRectCoordinates UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.NormalizedToPoint(rectangle, normalizedRectCoordinates) end

---@static
---@param rectangle UnityEngine.Rect
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function m.PointToNormalized(rectangle, point) end

---@static
---@param lhs UnityEngine.Rect
---@param rhs UnityEngine.Rect
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rect
---@param rhs UnityEngine.Rect
---@return boolean
function m.op_Equality(lhs, rhs) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Rect): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Rect = m
return m
