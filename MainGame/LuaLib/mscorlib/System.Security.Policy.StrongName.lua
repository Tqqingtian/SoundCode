---@class System.Security.Policy.StrongName : System.Security.Policy.EvidenceBase
---@field public Name string
---@field public PublicKey System.Security.Permissions.StrongNamePublicKeyBlob
---@field public Version System.Version
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

System.Security.Policy.StrongName = m
return m
