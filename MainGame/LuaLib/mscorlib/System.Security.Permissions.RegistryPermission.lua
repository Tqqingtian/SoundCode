---@class System.Security.Permissions.RegistryPermission : System.Security.CodeAccessPermission
local m = {}

---@overload fun(access:System.Security.Permissions.RegistryPermissionAccess, control:System.Security.AccessControl.AccessControlActions, pathList:string)
---@param access System.Security.Permissions.RegistryPermissionAccess
---@param pathList string
function m:AddPathList(access, pathList) end

---@param access System.Security.Permissions.RegistryPermissionAccess
---@return string
function m:GetPathList(access) end

---@param access System.Security.Permissions.RegistryPermissionAccess
---@param pathList string
function m:SetPathList(access, pathList) end

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@virtual
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@return boolean
function m:IsUnrestricted() end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param other System.Security.IPermission
---@return System.Security.IPermission
function m:Union(other) end

System.Security.Permissions.RegistryPermission = m
return m
