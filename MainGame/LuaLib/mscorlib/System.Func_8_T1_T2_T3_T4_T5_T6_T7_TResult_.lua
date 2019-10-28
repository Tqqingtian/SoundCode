---@class System.Func_8_T1_T2_T3_T4_T5_T6_T7_TResult_ : System.MulticastDelegate
local m = {}

---@virtual
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@param arg4 any
---@param arg5 any
---@param arg6 any
---@param arg7 any
---@return any
function m:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7) end

---@virtual
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@param arg4 any
---@param arg5 any
---@param arg6 any
---@param arg7 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Func_8_T1_T2_T3_T4_T5_T6_T7_TResult_ = m
return m
