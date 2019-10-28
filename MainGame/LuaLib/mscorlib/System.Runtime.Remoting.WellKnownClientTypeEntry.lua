---@class System.Runtime.Remoting.WellKnownClientTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ApplicationUrl string
---@field public ObjectType System.Type
---@field public ObjectUrl string
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.WellKnownClientTypeEntry = m
return m
