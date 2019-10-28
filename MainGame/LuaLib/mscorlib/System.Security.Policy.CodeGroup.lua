---@class System.Security.Policy.CodeGroup : System.Object
---@field public MergeLogic string
---@field public PolicyStatement System.Security.Policy.PolicyStatement
---@field public Description string
---@field public MembershipCondition System.Security.Policy.IMembershipCondition
---@field public Name string
---@field public Children System.Collections.IList
---@field public AttributeString string
---@field public PermissionSetName string
local m = {}

---@abstract
---@return System.Security.Policy.CodeGroup
function m:Copy() end

---@abstract
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function m:Resolve(evidence) end

---@abstract
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function m:ResolveMatchingCodeGroups(evidence) end

---@param group System.Security.Policy.CodeGroup
function m:AddChild(group) end

---@overload fun(cg:System.Security.Policy.CodeGroup, compareChildren:boolean):
---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@param group System.Security.Policy.CodeGroup
function m:RemoveChild(group) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(e:System.Security.SecurityElement, level:System.Security.Policy.PolicyLevel)
---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@overload fun(level:System.Security.Policy.PolicyLevel):
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Policy.CodeGroup = m
return m
