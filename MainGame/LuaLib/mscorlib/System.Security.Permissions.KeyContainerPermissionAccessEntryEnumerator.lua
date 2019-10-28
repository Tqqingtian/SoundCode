---@class System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator : System.Object
---@field public Current System.Security.Permissions.KeyContainerPermissionAccessEntry
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator = m
return m
