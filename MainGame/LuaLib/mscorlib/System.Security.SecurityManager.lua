---@class System.Security.SecurityManager : System.Object
---@field public CheckExecutionRights boolean @static
---@field public SecurityEnabled boolean @static
local m = {}

---@static
---@return System.Collections.ArrayList, System.Collections.ArrayList
function m.GetZoneAndOrigin() end

---@static
---@param perm System.Security.IPermission
---@return boolean
function m.IsGranted(perm) end

---@static
---@param path string
---@param type System.Security.PolicyLevelType
---@return System.Security.Policy.PolicyLevel
function m.LoadPolicyLevelFromFile(path, type) end

---@static
---@param str string
---@param type System.Security.PolicyLevelType
---@return System.Security.Policy.PolicyLevel
function m.LoadPolicyLevelFromString(str, type) end

---@static
---@return System.Collections.IEnumerator
function m.PolicyHierarchy() end

---@overload fun(evidences:System.Security.Policy.Evidence[]): @static
---@overload fun(evidence:System.Security.Policy.Evidence, reqdPset:System.Security.PermissionSet, optPset:System.Security.PermissionSet, denyPset:System.Security.PermissionSet):(, System.Security.PermissionSet) @static
---@static
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function m.ResolvePolicy(evidence) end

---@static
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function m.ResolveSystemPolicy(evidence) end

---@static
---@param evidence System.Security.Policy.Evidence
---@return System.Collections.IEnumerator
function m.ResolvePolicyGroups(evidence) end

---@static
function m.SavePolicy() end

---@static
---@param level System.Security.Policy.PolicyLevel
function m.SavePolicyLevel(level) end

---@static
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function m.GetStandardSandbox(evidence) end

---@static
---@return boolean
function m.CurrentThreadRequiresSecurityContextCapture() end

System.Security.SecurityManager = m
return m
