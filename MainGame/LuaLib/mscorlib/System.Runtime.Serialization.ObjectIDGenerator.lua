---@class System.Runtime.Serialization.ObjectIDGenerator : System.Object
local m = {}

---@virtual
---@param obj any
---@return number, System.Boolean
function m:GetId(obj) end

---@virtual
---@param obj any
---@return number, System.Boolean
function m:HasId(obj) end

System.Runtime.Serialization.ObjectIDGenerator = m
return m
