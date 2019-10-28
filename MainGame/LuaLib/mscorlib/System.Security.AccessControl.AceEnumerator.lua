---@class System.Security.AccessControl.AceEnumerator : System.Object
---@field public Current System.Security.AccessControl.GenericAce
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Security.AccessControl.AceEnumerator = m
return m
