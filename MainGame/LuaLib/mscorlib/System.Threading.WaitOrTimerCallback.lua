---@class System.Threading.WaitOrTimerCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param state any
---@param timedOut boolean
function m:Invoke(state, timedOut) end

---@virtual
---@param state any
---@param timedOut boolean
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(state, timedOut, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Threading.WaitOrTimerCallback = m
return m
