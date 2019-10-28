---@class System.Security.Policy.DefaultPolicies : System.Object
---@field public FullTrust System.Security.PermissionSet @static
---@field public LocalIntranet System.Security.PermissionSet @static
---@field public Internet System.Security.PermissionSet @static
---@field public SkipVerification System.Security.PermissionSet @static
---@field public Execution System.Security.PermissionSet @static
---@field public Nothing System.Security.PermissionSet @static
---@field public Everything System.Security.PermissionSet @static
local m = {}

---@static
---@param name string
---@return System.Security.PermissionSet
function m.GetSpecialPermissionSet(name) end

---@static
---@param name string
---@param key System.Security.Policy.DefaultPolicies.Key
---@return System.Security.Policy.StrongNameMembershipCondition
function m.FullTrustMembership(name, key) end

System.Security.Policy.DefaultPolicies = m
return m
