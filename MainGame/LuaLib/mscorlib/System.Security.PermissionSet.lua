---@class System.Security.PermissionSet : System.Object
---@field public Count number
---@field public IsSynchronized boolean
---@field public IsReadOnly boolean
---@field public SyncRoot any
local m = {}

---@param perm System.Security.IPermission
---@return System.Security.IPermission
function m:AddPermission(perm) end

---@virtual
function m:Assert() end

---@virtual
---@return System.Security.PermissionSet
function m:Copy() end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
function m:Demand() end

---@virtual
function m:Deny() end

---@virtual
---@param et System.Security.SecurityElement
function m:FromXml(et) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@param target System.Security.PermissionSet
---@return boolean
function m:IsSubsetOf(target) end

---@virtual
function m:PermitOnly() end

---@return boolean
function m:ContainsNonCodeAccessPermissions() end

---@static
---@param inFormat string
---@param inData string
---@param outFormat string
---@return string
function m.ConvertPermissionSet(inFormat, inData, outFormat) end

---@param permClass System.Type
---@return System.Security.IPermission
function m:GetPermission(permClass) end

---@param other System.Security.PermissionSet
---@return System.Security.PermissionSet
function m:Intersect(other) end

---@return boolean
function m:IsEmpty() end

---@return boolean
function m:IsUnrestricted() end

---@param permClass System.Type
---@return System.Security.IPermission
function m:RemovePermission(permClass) end

---@param perm System.Security.IPermission
---@return System.Security.IPermission
function m:SetPermission(perm) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

---@param other System.Security.PermissionSet
---@return System.Security.PermissionSet
function m:Union(other) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
function m.RevertAssert() end

System.Security.PermissionSet = m
return m
