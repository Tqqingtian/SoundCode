---@class System.Reflection.Emit.GenericInstanceKey : System.Object
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Reflection.Emit.GenericInstanceKey = m
return m
