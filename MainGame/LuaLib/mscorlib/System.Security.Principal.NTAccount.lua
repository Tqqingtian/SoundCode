---@class System.Security.Principal.NTAccount : System.Security.Principal.IdentityReference
---@field public Value string
local m = {}

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param targetType System.Type
---@return boolean
function m:IsValidTargetType(targetType) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function m:Translate(targetType) end

---@static
---@param left System.Security.Principal.NTAccount
---@param right System.Security.Principal.NTAccount
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.Principal.NTAccount
---@param right System.Security.Principal.NTAccount
---@return boolean
function m.op_Inequality(left, right) end

System.Security.Principal.NTAccount = m
return m
