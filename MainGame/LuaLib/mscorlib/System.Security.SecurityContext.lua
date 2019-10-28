---@class System.Security.SecurityContext : System.Object
local m = {}

---@return System.Security.SecurityContext
function m:CreateCopy() end

---@static
---@return System.Security.SecurityContext
function m.Capture() end

---@virtual
function m:Dispose() end

---@static
---@return boolean
function m.IsFlowSuppressed() end

---@static
---@return boolean
function m.IsWindowsIdentityFlowSuppressed() end

---@static
function m.RestoreFlow() end

---@static
---@param securityContext System.Security.SecurityContext
---@param callback fun(state:any)
---@param state any
function m.Run(securityContext, callback, state) end

---@static
---@return System.Threading.AsyncFlowControl
function m.SuppressFlow() end

---@static
---@return System.Threading.AsyncFlowControl
function m.SuppressFlowWindowsIdentity() end

System.Security.SecurityContext = m
return m
