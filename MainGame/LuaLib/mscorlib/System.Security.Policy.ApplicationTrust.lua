---@class System.Security.Policy.ApplicationTrust : System.Security.Policy.EvidenceBase
---@field public ApplicationIdentity System.ApplicationIdentity
---@field public DefaultGrantSet System.Security.Policy.PolicyStatement
---@field public ExtraInfo any
---@field public IsApplicationTrustedToRun boolean
---@field public Persist boolean
---@field public FullTrustAssemblies System.Security.Policy.StrongName[]
local m = {}

---@virtual
---@param element System.Security.SecurityElement
function m:FromXml(element) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Policy.ApplicationTrust = m
return m
