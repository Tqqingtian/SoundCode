---@class System.Security.Cryptography.RSASignaturePadding : System.Object
---@field public Pkcs1 System.Security.Cryptography.RSASignaturePadding @static
---@field public Pss System.Security.Cryptography.RSASignaturePadding @static
---@field public Mode System.Security.Cryptography.RSASignaturePaddingMode
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:System.Security.Cryptography.RSASignaturePadding): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param left System.Security.Cryptography.RSASignaturePadding
---@param right System.Security.Cryptography.RSASignaturePadding
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Security.Cryptography.RSASignaturePadding
---@param right System.Security.Cryptography.RSASignaturePadding
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@return string
function m:ToString() end

System.Security.Cryptography.RSASignaturePadding = m
return m
