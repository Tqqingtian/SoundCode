---@class System.Runtime.Remoting.ActivatedServiceTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ContextAttributes System.Runtime.Remoting.Contexts.IContextAttribute[]
---@field public ObjectType System.Type
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.ActivatedServiceTypeEntry = m
return m
