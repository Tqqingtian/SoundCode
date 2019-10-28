---@class System.Security.Policy.ApplicationTrustEnumerator : System.Object
---@field public Current System.Security.Policy.ApplicationTrust
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Security.Policy.ApplicationTrustEnumerator = m
return m
