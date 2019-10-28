---@class UnityEngine.Ray : System.ValueType
---@field public origin UnityEngine.Vector3
---@field public direction UnityEngine.Vector3
local m = {}

---@param distance number
---@return UnityEngine.Vector3
function m:GetPoint(distance) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Ray = m
return m
