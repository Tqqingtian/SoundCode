---@class System.Security.Policy.FirstMatchCodeGroup : System.Security.Policy.CodeGroup
---@field public MergeLogic string
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

System.Security.Policy.FirstMatchCodeGroup = m
return m
