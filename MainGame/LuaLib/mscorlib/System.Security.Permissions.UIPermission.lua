---@class System.Security.Permissions.UIPermission : System.Security.CodeAccessPermission
---@field public Clipboard System.Security.Permissions.UIPermissionClipboard
---@field public Window System.Security.Permissions.UIPermissionWindow
local m = {}

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
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

System.Security.Permissions.UIPermission = m
return m
