---@class System.Func_2_T_TResult_ : System.MulticastDelegate
local m = {}

---@virtual
---@param arg any
---@return any
function m:Invoke(arg) end

---@virtual
---@param arg any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(arg, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Func_2_T_TResult_ = m
return m
