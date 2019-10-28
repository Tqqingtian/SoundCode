---@class System.Security.Policy.NetCodeGroup : System.Security.Policy.CodeGroup
---@field public AbsentOriginScheme string @static
---@field public AnyOtherOriginScheme string @static
---@field public AttributeString string
---@field public MergeLogic string
---@field public PermissionSetName string
local m = {}

---@param originScheme string
---@param connectAccess System.Security.Policy.CodeConnectAccess
function m:AddConnectAccess(originScheme, connectAccess) end

---@virtual
---@return System.Security.Policy.CodeGroup
function m:Copy() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@return System.Collections.DictionaryEntry[]
function m:GetConnectAccessRules() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function m:Resolve(evidence) end

function m:ResetConnectAccess() end

---@virtual
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function m:ResolveMatchingCodeGroups(evidence) end

System.Security.Policy.NetCodeGroup = m
return m
