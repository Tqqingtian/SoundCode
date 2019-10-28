---@class System.Security.Policy.Zone : System.Security.Policy.EvidenceBase
---@field public SecurityZone System.Security.SecurityZone
local m = {}

---@return any
function m:Copy() end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function m:CreateIdentityPermission(evidence) end

---@static
---@param url string
---@return System.Security.Policy.Zone
function m.CreateFromUrl(url) end

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

System.Security.Policy.Zone = m
return m
