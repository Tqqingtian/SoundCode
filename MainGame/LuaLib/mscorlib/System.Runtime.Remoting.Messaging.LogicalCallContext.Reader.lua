---@class System.Runtime.Remoting.Messaging.LogicalCallContext.Reader : System.ValueType
---@field public IsNull boolean
---@field public HasInfo boolean
---@field public Principal System.Security.Principal.IPrincipal
---@field public HostContext any
local m = {}

---@return System.Runtime.Remoting.Messaging.LogicalCallContext
function m:Clone() end

---@param name string
---@return any
function m:GetData(name) end

System.Runtime.Remoting.Messaging.LogicalCallContext.Reader = m
return m
