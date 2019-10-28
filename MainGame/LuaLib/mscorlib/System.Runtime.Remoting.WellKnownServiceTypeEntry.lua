---@class System.Runtime.Remoting.WellKnownServiceTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ContextAttributes System.Runtime.Remoting.Contexts.IContextAttribute[]
---@field public Mode System.Runtime.Remoting.WellKnownObjectMode
---@field public ObjectType System.Type
---@field public ObjectUri string
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.WellKnownServiceTypeEntry = m
return m
