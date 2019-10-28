---@class System.Security.Principal.IdentityReferenceCollection : System.Object
---@field public Count number
---@field public IsReadOnly boolean
---@field public Item System.Security.Principal.IdentityReference
local m = {}

---@virtual
---@param identity System.Security.Principal.IdentityReference
function m:Add(identity) end

---@virtual
function m:Clear() end

---@virtual
---@param identity System.Security.Principal.IdentityReference
---@return boolean
function m:Contains(identity) end

---@virtual
---@param array System.Security.Principal.IdentityReference[]
---@param offset number
function m:CopyTo(array, offset) end

---@virtual
---@return System.Collections.Generic.IEnumerator_1_System_Security_Principal_IdentityReference_
function m:GetEnumerator() end

---@virtual
---@param identity System.Security.Principal.IdentityReference
---@return boolean
function m:Remove(identity) end

---@overload fun(targetType:System.Type, forceSuccess:boolean):
---@param targetType System.Type
---@return System.Security.Principal.IdentityReferenceCollection
function m:Translate(targetType) end

System.Security.Principal.IdentityReferenceCollection = m
return m
