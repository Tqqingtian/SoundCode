---@class System.Collections.Generic.ByteEqualityComparer : System.Collections.Generic.EqualityComparer_1_System_Byte_
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param x number
---@param y number
---@return boolean
function m:Equals(x, y) end

---@overload fun(): @virtual
---@virtual
---@param b number
---@return number
function m:GetHashCode(b) end

System.Collections.Generic.ByteEqualityComparer = m
return m
