---@class UnityEngine.Ray2D : System.ValueType
---@field public origin UnityEngine.Vector2
---@field public direction UnityEngine.Vector2
local m = {}

---@param distance number
---@return UnityEngine.Vector2
function m:GetPoint(distance) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Ray2D = m
return m
