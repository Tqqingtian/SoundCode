---@class System.Security.HostSecurityManager : System.Object
---@field public DomainPolicy System.Security.Policy.PolicyLevel
---@field public Flags System.Security.HostSecurityManagerOptions
local m = {}

---@virtual
---@param applicationEvidence System.Security.Policy.Evidence
---@param activatorEvidence System.Security.Policy.Evidence
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function m:DetermineApplicationTrust(applicationEvidence, activatorEvidence, context) end

---@virtual
---@param inputEvidence System.Security.Policy.Evidence
---@return System.Security.Policy.Evidence
function m:ProvideAppDomainEvidence(inputEvidence) end

---@virtual
---@param loadedAssembly System.Reflection.Assembly
---@param inputEvidence System.Security.Policy.Evidence
---@return System.Security.Policy.Evidence
function m:ProvideAssemblyEvidence(loadedAssembly, inputEvidence) end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function m:ResolvePolicy(evidence) end

---@virtual
---@param evidenceType System.Type
---@return System.Security.Policy.EvidenceBase
function m:GenerateAppDomainEvidence(evidenceType) end

---@virtual
---@param evidenceType System.Type
---@param assembly System.Reflection.Assembly
---@return System.Security.Policy.EvidenceBase
function m:GenerateAssemblyEvidence(evidenceType, assembly) end

---@virtual
---@return System.Type[]
function m:GetHostSuppliedAppDomainEvidenceTypes() end

---@virtual
---@param assembly System.Reflection.Assembly
---@return System.Type[]
function m:GetHostSuppliedAssemblyEvidenceTypes(assembly) end

System.Security.HostSecurityManager = m
return m
