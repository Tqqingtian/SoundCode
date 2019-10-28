---@class System.Security.Principal.SecurityIdentifier : System.Security.Principal.IdentityReference
---@field public MaxBinaryLength number @static
---@field public MinBinaryLength number @static
---@field public AccountDomainSid System.Security.Principal.SecurityIdentifier
---@field public BinaryLength number
---@field public Value string
local m = {}

---@virtual
---@param sid System.Security.Principal.SecurityIdentifier
---@return number
function m:CompareTo(sid) end

---@overload fun(sid:System.Security.Principal.SecurityIdentifier):
---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@param binaryForm string
---@param offset number
function m:GetBinaryForm(binaryForm, offset) end

---@virtual
---@return number
function m:GetHashCode() end

---@return boolean
function m:IsAccountSid() end

---@param sid System.Security.Principal.SecurityIdentifier
---@return boolean
function m:IsEqualDomainSid(sid) end

---@virtual
---@param targetType System.Type
---@return boolean
function m:IsValidTargetType(targetType) end

---@param type System.Security.Principal.WellKnownSidType
---@return boolean
function m:IsWellKnown(type) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function m:Translate(targetType) end

---@static
---@param left System.Security.Principal.SecurityIdentifier
---@param right System.Security.Principal.SecurityIdentifier
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.Principal.SecurityIdentifier
---@param right System.Security.Principal.SecurityIdentifier
---@return boolean
function m.op_Inequality(left, right) end

System.Security.Principal.SecurityIdentifier = m
return m
