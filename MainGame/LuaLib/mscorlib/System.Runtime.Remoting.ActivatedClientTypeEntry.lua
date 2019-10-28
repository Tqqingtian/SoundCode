---@class System.Runtime.Remoting.ActivatedClientTypeEntry : System.Runtime.Remoting.TypeEntry
---@field public ApplicationUrl string
---@field public ContextAttributes System.Runtime.Remoting.Contexts.IContextAttribute[]
---@field public ObjectType System.Type
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.ActivatedClientTypeEntry = m
return m
