---@class TQ.BaseFunc_2_T1_R_ : System.MulticastDelegate
local m = {}

---@virtual
---@param t1 any
---@return any
function m:Invoke(t1) end

---@virtual
---@param t1 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

TQ.BaseFunc_2_T1_R_ = m
return m
