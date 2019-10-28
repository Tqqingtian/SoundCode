---@class System.Threading.SendOrPostCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param state any
function m:Invoke(state) end

---@virtual
---@param state any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(state, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Threading.SendOrPostCallback = m
return m
