---@class System.Action_3_T1_T2_T3_ : System.MulticastDelegate
local m = {}

---@virtual
---@param arg1 any
---@param arg2 any
---@param arg3 any
function m:Invoke(arg1, arg2, arg3) end

---@virtual
---@param arg1 any
---@param arg2 any
---@param arg3 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(arg1, arg2, arg3, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Action_3_T1_T2_T3_ = m
return m
