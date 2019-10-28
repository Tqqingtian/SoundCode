---@class System.Security.Permissions.FileIOPermission : System.Security.CodeAccessPermission
---@field public AllFiles System.Security.Permissions.FileIOPermissionAccess
---@field public AllLocalFiles System.Security.Permissions.FileIOPermissionAccess
local m = {}

---@overload fun(access:System.Security.Permissions.FileIOPermissionAccess, pathList:string[])
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param path string
function m:AddPathList(access, path) end

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

---@param access System.Security.Permissions.FileIOPermissionAccess
---@return string[]
function m:GetPathList(access) end

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

---@overload fun(access:System.Security.Permissions.FileIOPermissionAccess, pathList:string[])
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param path string
function m:SetPathList(access, path) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param other System.Security.IPermission
---@return System.Security.IPermission
function m:Union(other) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Security.Permissions.FileIOPermission = m
return m
