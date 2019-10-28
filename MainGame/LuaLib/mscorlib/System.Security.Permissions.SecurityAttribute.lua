---@class System.Security.Permissions.SecurityAttribute : System.Attribute
---@field public Unrestricted boolean
---@field public Action System.Security.Permissions.SecurityAction
local m = {}

---@abstract
---@return System.Security.IPermission
function m:CreatePermission() end

System.Security.Permissions.SecurityAttribute = m
return m
