---@class System.Runtime.Remoting.Messaging.IInternalMessage : table
---@field public TargetIdentity System.Runtime.Remoting.Identity
---@field public Uri string
local m = {}

---@abstract
---@return boolean
function m:HasProperties() end

System.Runtime.Remoting.Messaging.IInternalMessage = m
return m
