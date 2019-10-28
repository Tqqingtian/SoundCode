---@class System.Security.Permissions.StrongNamePublicKeyBlob : System.Object
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.Security.Permissions.StrongNamePublicKeyBlob = m
return m
