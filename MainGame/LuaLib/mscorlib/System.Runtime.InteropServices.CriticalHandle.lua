---@class System.Runtime.InteropServices.CriticalHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public IsClosed boolean
---@field public IsInvalid boolean
local m = {}

function m:Close() end

---@virtual
function m:Dispose() end

function m:SetHandleAsInvalid() end

System.Runtime.InteropServices.CriticalHandle = m
return m
