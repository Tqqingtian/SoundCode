---@class System.Runtime.InteropServices.SafeHandle : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public IsClosed boolean
---@field public IsInvalid boolean
local m = {}

---@return System.IntPtr
function m:DangerousGetHandle() end

function m:Close() end

---@virtual
function m:Dispose() end

function m:SetHandleAsInvalid() end

---@param success System.Boolean
---@return System.Boolean
function m:DangerousAddRef(success) end

function m:DangerousRelease() end

System.Runtime.InteropServices.SafeHandle = m
return m
