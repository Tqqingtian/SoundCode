---@class System.Threading.SynchronizationContext.WaitDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param waitHandles System.IntPtr[]
---@param waitAll boolean
---@param millisecondsTimeout number
---@return number
function m:Invoke(waitHandles, waitAll, millisecondsTimeout) end

---@virtual
---@param waitHandles System.IntPtr[]
---@param waitAll boolean
---@param millisecondsTimeout number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(waitHandles, waitAll, millisecondsTimeout, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number
function m:EndInvoke(result) end

System.Threading.SynchronizationContext.WaitDelegate = m
return m
