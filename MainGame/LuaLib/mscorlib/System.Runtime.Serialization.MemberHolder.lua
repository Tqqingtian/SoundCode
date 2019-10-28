---@class System.Runtime.Serialization.MemberHolder : System.Object
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

System.Runtime.Serialization.MemberHolder = m
return m
