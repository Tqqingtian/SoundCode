---@class System.Collections.CaseInsensitiveComparer : System.Object
---@field public Default System.Collections.CaseInsensitiveComparer @static
---@field public DefaultInvariant System.Collections.CaseInsensitiveComparer @static
local m = {}

---@virtual
---@param a any
---@param b any
---@return number
function m:Compare(a, b) end

System.Collections.CaseInsensitiveComparer = m
return m
