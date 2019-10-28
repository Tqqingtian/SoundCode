---@class System.Security.Permissions.IsolatedStorageFilePermission : System.Security.Permissions.IsolatedStoragePermission
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@virtual
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Permissions.IsolatedStorageFilePermission = m
return m
