---@class System.Security.Cryptography.HashAlgorithmName : System.ValueType
---@field public MD5 System.Security.Cryptography.HashAlgorithmName @static
---@field public SHA1 System.Security.Cryptography.HashAlgorithmName @static
---@field public SHA256 System.Security.Cryptography.HashAlgorithmName @static
---@field public SHA384 System.Security.Cryptography.HashAlgorithmName @static
---@field public SHA512 System.Security.Cryptography.HashAlgorithmName @static
---@field public Name string
local m = {}

---@virtual
---@return string
function m:ToString() end

---@overload fun(other:System.Security.Cryptography.HashAlgorithmName): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Security.Cryptography.HashAlgorithmName
---@param right System.Security.Cryptography.HashAlgorithmName
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.Cryptography.HashAlgorithmName
---@param right System.Security.Cryptography.HashAlgorithmName
---@return boolean
function m.op_Inequality(left, right) end

System.Security.Cryptography.HashAlgorithmName = m
return m
