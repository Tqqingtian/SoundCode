---@class System.Threading.HostExecutionContext : System.Object
local m = {}

---@virtual
---@return System.Threading.HostExecutionContext
function m:CreateCopy() end

---@overload fun(disposing:boolean) @virtual
---@virtual
function m:Dispose() end

System.Threading.HostExecutionContext = m
return m
