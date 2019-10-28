---@class System.Security.Policy.ApplicationDirectory : System.Security.Policy.EvidenceBase
---@field public Directory string
local m = {}

---@return any
function m:Copy() end

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

System.Security.Policy.ApplicationDirectory = m
return m
