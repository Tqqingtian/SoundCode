---@class System.Security.AccessControl.QualifiedAce : System.Security.AccessControl.KnownAce
---@field public AceQualifier System.Security.AccessControl.AceQualifier
---@field public IsCallback boolean
---@field public OpaqueLength number
local m = {}

---@return string
function m:GetOpaque() end

---@param opaque string
function m:SetOpaque(opaque) end

System.Security.AccessControl.QualifiedAce = m
return m
