---@class System.Security.Policy.Publisher : System.Security.Policy.EvidenceBase
---@field public Certificate System.Security.Cryptography.X509Certificates.X509Certificate
local m = {}

---@return any
function m:Copy() end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function m:CreateIdentityPermission(evidence) end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

System.Security.Policy.Publisher = m
return m
