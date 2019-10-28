---@class System.Security.Policy.DefaultPolicies.ReservedNames : System.Object
---@field public FullTrust string @static
---@field public LocalIntranet string @static
---@field public Internet string @static
---@field public SkipVerification string @static
---@field public Execution string @static
---@field public Nothing string @static
---@field public Everything string @static
local m = {}

---@static
---@param name string
---@return boolean
function m.IsReserved(name) end

System.Security.Policy.DefaultPolicies.ReservedNames = m
return m
