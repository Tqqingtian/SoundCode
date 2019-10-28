---@class System.Security.Policy.CodeConnectAccess : System.Object
---@field public AnyScheme string @static
---@field public DefaultPort number @static
---@field public OriginPort number @static
---@field public OriginScheme string @static
---@field public Port number
---@field public Scheme string
local m = {}

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param allowPort number
---@return System.Security.Policy.CodeConnectAccess
function m.CreateAnySchemeAccess(allowPort) end

---@static
---@param allowPort number
---@return System.Security.Policy.CodeConnectAccess
function m.CreateOriginSchemeAccess(allowPort) end

System.Security.Policy.CodeConnectAccess = m
return m
