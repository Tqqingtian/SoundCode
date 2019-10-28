---@class System.CultureAwareComparer : System.StringComparer
local m = {}

---@virtual
---@param x string
---@param y string
---@return number
function m:Compare(x, y) end

---@overload fun(obj:any): @virtual
---@virtual
---@param x string
---@param y string
---@return boolean
function m:Equals(x, y) end

---@overload fun(): @virtual
---@virtual
---@param obj string
---@return number
function m:GetHashCode(obj) end

System.CultureAwareComparer = m
return m
