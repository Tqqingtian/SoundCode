---@class System.Threading.SynchronizationContext : System.Object
---@field public Current System.Threading.SynchronizationContext @static
local m = {}

---@return boolean
function m:IsWaitNotificationRequired() end

---@virtual
---@param d fun(state:any)
---@param state any
function m:Send(d, state) end

---@virtual
---@param d fun(state:any)
---@param state any
function m:Post(d, state) end

---@virtual
function m:OperationStarted() end

---@virtual
function m:OperationCompleted() end

---@virtual
---@param waitHandles System.IntPtr[]
---@param waitAll boolean
---@param millisecondsTimeout number
---@return number
function m:Wait(waitHandles, waitAll, millisecondsTimeout) end

---@static
---@param syncContext System.Threading.SynchronizationContext
function m.SetSynchronizationContext(syncContext) end

---@virtual
---@return System.Threading.SynchronizationContext
function m:CreateCopy() end

System.Threading.SynchronizationContext = m
return m
