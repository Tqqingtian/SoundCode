---@class System.Threading.HostExecutionContextManager : System.Object
local m = {}

---@virtual
---@return System.Threading.HostExecutionContext
function m:Capture() end

---@virtual
---@param previousState any
function m:Revert(previousState) end

---@virtual
---@param hostExecutionContext System.Threading.HostExecutionContext
---@return any
function m:SetHostExecutionContext(hostExecutionContext) end

System.Threading.HostExecutionContextManager = m
return m
