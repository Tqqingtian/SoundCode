---@class System.Security.Policy.Site : System.Security.Policy.EvidenceBase
---@field public Name string
local m = {}

---@static
---@param url string
---@return System.Security.Policy.Site
function m.CreateFromUrl(url) end

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

System.Security.Policy.Site = m
return m
