---@class System.Security.Policy.PolicyLevel : System.Object
---@field public FullTrustAssemblies System.Collections.IList
---@field public Label string
---@field public NamedPermissionSets System.Collections.IList
---@field public RootCodeGroup System.Security.Policy.CodeGroup
---@field public StoreLocation string
---@field public Type System.Security.PolicyLevelType
local m = {}

---@overload fun(snMC:System.Security.Policy.StrongNameMembershipCondition)
---@param sn System.Security.Policy.StrongName
function m:AddFullTrustAssembly(sn) end

---@param permSet System.Security.NamedPermissionSet
function m:AddNamedPermissionSet(permSet) end

---@param name string
---@param pSet System.Security.PermissionSet
---@return System.Security.NamedPermissionSet
function m:ChangeNamedPermissionSet(name, pSet) end

---@static
---@return System.Security.Policy.PolicyLevel
function m.CreateAppDomainLevel() end

---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@param name string
---@return System.Security.NamedPermissionSet
function m:GetNamedPermissionSet(name) end

function m:Recover() end

---@overload fun(snMC:System.Security.Policy.StrongNameMembershipCondition)
---@param sn System.Security.Policy.StrongName
function m:RemoveFullTrustAssembly(sn) end

---@overload fun(name:string):
---@param permSet System.Security.NamedPermissionSet
---@return System.Security.NamedPermissionSet
function m:RemoveNamedPermissionSet(permSet) end

function m:Reset() end

---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function m:Resolve(evidence) end

---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function m:ResolveMatchingCodeGroups(evidence) end

---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Policy.PolicyLevel = m
return m
