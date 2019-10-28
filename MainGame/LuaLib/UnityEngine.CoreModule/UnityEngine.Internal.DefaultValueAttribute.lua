---@class UnityEngine.Internal.DefaultValueAttribute : System.Attribute
---@field public Value any
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.Internal.DefaultValueAttribute = m
return m
