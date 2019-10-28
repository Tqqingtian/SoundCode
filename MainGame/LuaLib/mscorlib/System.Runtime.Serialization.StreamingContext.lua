---@class System.Runtime.Serialization.StreamingContext : System.ValueType
---@field public Context any
---@field public State System.Runtime.Serialization.StreamingContextStates
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Runtime.Serialization.StreamingContext = m
return m
