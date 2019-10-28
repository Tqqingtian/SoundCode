---@class System.Security.PermissionBuilder : System.Object
local m = {}

---@overload fun(se:System.Security.SecurityElement): @static
---@overload fun(fullname:string, se:System.Security.SecurityElement): @static
---@overload fun(type:System.Type): @static
---@static
---@param fullname string
---@param state System.Security.Permissions.PermissionState
---@return System.Security.IPermission
function m.Create(fullname, state) end

System.Security.PermissionBuilder = m
return m
