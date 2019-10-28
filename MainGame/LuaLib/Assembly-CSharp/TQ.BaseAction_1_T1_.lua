---@class TQ.BaseAction_1_T1_ : System.MulticastDelegate
local m = {}

---@virtual
---@param t1 any
function m:Invoke(t1) end

---@virtual
---@param t1 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

TQ.BaseAction_1_T1_ = m
return m
