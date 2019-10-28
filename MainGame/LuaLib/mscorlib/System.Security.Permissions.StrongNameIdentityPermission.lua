---@class System.Security.Permissions.StrongNameIdentityPermission : System.Security.CodeAccessPermission
---@field public Name string
---@field public PublicKey System.Security.Permissions.StrongNamePublicKeyBlob
---@field public Version System.Version
local m = {}

---@virtual
---@return System.Security.IPermission
function m:Copy() end

---@virtual
---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Intersect(target) end

---@virtual
---@param target System.Security.IPermission
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param target System.Security.IPermission
---@return System.Security.IPermission
function m:Union(target) end

System.Security.Permissions.StrongNameIdentityPermission = m
return m
