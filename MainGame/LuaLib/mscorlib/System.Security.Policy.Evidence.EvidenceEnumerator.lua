---@class System.Security.Policy.Evidence.EvidenceEnumerator : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Security.Policy.Evidence.EvidenceEnumerator = m
return m
