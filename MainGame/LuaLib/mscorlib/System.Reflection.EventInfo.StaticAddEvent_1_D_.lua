---@class System.Reflection.EventInfo.StaticAddEvent_1_D_ : System.MulticastDelegate
local m = {}

---@virtual
---@param dele any
function m:Invoke(dele) end

---@virtual
---@param dele any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(dele, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Reflection.EventInfo.StaticAddEvent_1_D_ = m
return m
