---@class System.Security.Permissions.EnvironmentPermission : System.Security.CodeAccessPermission
local m = {}

---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList string
function m:AddPathList(flag, pathList) end

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param esd System.Security.SecurityElement
function m:FromXml(esd) end

---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@return string
function m:GetPathList(flag) end

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

---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList string
function m:SetPathList(flag, pathList) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param other System.Security.IPermission
---@return System.Security.IPermission
function m:Union(other) end

System.Security.Permissions.EnvironmentPermission = m
return m
