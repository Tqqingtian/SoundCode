---@class System.Action_1_T_ : System.MulticastDelegate
local m = {}

---@virtual
---@param obj any
function m:Invoke(obj) end

---@virtual
---@param obj any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(obj, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Action_1_T_ = m
return m
