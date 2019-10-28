---@class System.Func_3_T1_T2_TResult_ : System.MulticastDelegate
local m = {}

---@virtual
---@param arg1 any
---@param arg2 any
---@return any
function m:Invoke(arg1, arg2) end

---@virtual
---@param arg1 any
---@param arg2 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(arg1, arg2, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Func_3_T1_T2_TResult_ = m
return m
