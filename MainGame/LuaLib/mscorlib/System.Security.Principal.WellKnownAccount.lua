---@class System.Security.Principal.WellKnownAccount : System.Object
---@field public WellKnownValue System.Security.Principal.WellKnownSidType
---@field public IsAbsolute boolean
---@field public Sid string
---@field public Rid string
---@field public Name string
---@field public SddlForm string
local m = {}

---@static
---@param sidType System.Security.Principal.WellKnownSidType
---@return System.Security.Principal.WellKnownAccount
function m.LookupByType(sidType) end

---@static
---@param s string
---@return System.Security.Principal.WellKnownAccount
function m.LookupBySid(s) end

---@static
---@param s string
---@return System.Security.Principal.WellKnownAccount
function m.LookupByName(s) end

---@static
---@param s string
---@return System.Security.Principal.WellKnownAccount
function m.LookupBySddlForm(s) end

System.Security.Principal.WellKnownAccount = m
return m
