---@class System.IO.IsolatedStorage.IsolatedStorageSecurityState : System.Security.SecurityState
---@field public Options System.IO.IsolatedStorage.IsolatedStorageSecurityOptions
---@field public Quota number
---@field public UsedSize number
local m = {}

---@virtual
function m:EnsureState() end

System.IO.IsolatedStorage.IsolatedStorageSecurityState = m
return m
