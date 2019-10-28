---@class System.Collections.CaseInsensitiveHashCodeProvider : System.Object
---@field public Default System.Collections.CaseInsensitiveHashCodeProvider @static
---@field public DefaultInvariant System.Collections.CaseInsensitiveHashCodeProvider @static
local m = {}

---@virtual
---@param obj any
---@return number
function m:GetHashCode(obj) end

System.Collections.CaseInsensitiveHashCodeProvider = m
return m
