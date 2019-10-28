---@class UnityEngine.Events.UnityAction_1_T0_ : System.MulticastDelegate
local m = {}

---@virtual
---@param arg0 any
function m:Invoke(arg0) end

---@virtual
---@param arg0 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(arg0, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Events.UnityAction_1_T0_ = m
return m
