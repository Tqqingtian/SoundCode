---@class System.__ComObject : System.MarshalByRefObject
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.__ComObject = m
return m
