---@class System.Security.Policy.FileCodeGroup : System.Security.Policy.CodeGroup
---@field public MergeLogic string
---@field public AttributeString string
---@field public PermissionSetName string
local m = {}

---@virtual
---@return System.Security.Policy.CodeGroup
function m:Copy() end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function m:Resolve(evidence) end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function m:ResolveMatchingCodeGroups(evidence) end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

System.Security.Policy.FileCodeGroup = m
return m
