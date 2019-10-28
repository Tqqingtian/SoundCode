---@class System.Threading.IOCompletionCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param errorCode number
---@param numBytes number
---@param pOVERLAP System.Threading.NativeOverlapped*
function m:Invoke(errorCode, numBytes, pOVERLAP) end

---@virtual
---@param errorCode number
---@param numBytes number
---@param pOVERLAP System.Threading.NativeOverlapped*
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(errorCode, numBytes, pOVERLAP, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Threading.IOCompletionCallback = m
return m
