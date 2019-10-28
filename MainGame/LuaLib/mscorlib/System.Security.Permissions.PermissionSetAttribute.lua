---@class System.Security.Permissions.PermissionSetAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field public File string
---@field public Hex string
---@field public Name string
---@field public UnicodeEncoded boolean
---@field public XML string
local m = {}

---@virtual
---@return System.Security.IPermission
function m:CreatePermission() end

---@return System.Security.PermissionSet
function m:CreatePermissionSet() end

System.Security.Permissions.PermissionSetAttribute = m
return m
