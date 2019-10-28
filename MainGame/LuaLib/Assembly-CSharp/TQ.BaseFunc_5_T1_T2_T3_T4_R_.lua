---@class TQ.BaseFunc_5_T1_T2_T3_T4_R_ : System.MulticastDelegate
local m = {}

---@virtual
---@param t1 any
---@param t2 any
---@param t3 any
---@param t4 any
---@return any
function m:Invoke(t1, t2, t3, t4) end

---@virtual
---@param t1 any
---@param t2 any
---@param t3 any
---@param t4 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, t2, t3, t4, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

TQ.BaseFunc_5_T1_T2_T3_T4_R_ = m
return m
