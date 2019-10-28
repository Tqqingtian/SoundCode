---@class TQ.BaseAction_2_T1_T2_ : System.MulticastDelegate
local m = {}

---@virtual
---@param t1 any
---@param t2 any
function m:Invoke(t1, t2) end

---@virtual
---@param t1 any
---@param t2 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, t2, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

TQ.BaseAction_2_T1_T2_ = m
return m
