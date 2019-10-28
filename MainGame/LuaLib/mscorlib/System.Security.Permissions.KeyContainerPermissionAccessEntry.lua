---@class System.Security.Permissions.KeyContainerPermissionAccessEntry : System.Object
---@field public Flags System.Security.Permissions.KeyContainerPermissionFlags
---@field public KeyContainerName string
---@field public KeySpec number
---@field public KeyStore string
---@field public ProviderName string
---@field public ProviderType number
local m = {}

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

System.Security.Permissions.KeyContainerPermissionAccessEntry = m
return m
