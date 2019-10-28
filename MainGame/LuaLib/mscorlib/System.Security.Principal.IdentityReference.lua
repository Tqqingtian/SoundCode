---@class System.Security.Principal.IdentityReference : System.Object
---@field public Value string
local m = {}

---@abstract
---@param o any
---@return boolean
function m:Equals(o) end

---@abstract
---@return number
function m:GetHashCode() end

---@abstract
---@param targetType System.Type
---@return boolean
function m:IsValidTargetType(targetType) end

---@abstract
---@return string
function m:ToString() end

---@abstract
---@param targetType System.Type
---@return System.Security.Principal.IdentityReference
function m:Translate(targetType) end

---@static
---@param left System.Security.Principal.IdentityReference
---@param right System.Security.Principal.IdentityReference
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.Principal.IdentityReference
---@param right System.Security.Principal.IdentityReference
---@return boolean
function m.op_Inequality(left, right) end

System.Security.Principal.IdentityReference = m
return m
