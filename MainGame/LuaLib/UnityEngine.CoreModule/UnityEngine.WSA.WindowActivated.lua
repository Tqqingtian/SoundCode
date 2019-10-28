---@class UnityEngine.WSA.WindowActivated : System.MulticastDelegate
local m = {}

---@virtual
---@param state UnityEngine.WSA.WindowActivationState
function m:Invoke(state) end

---@virtual
---@param state UnityEngine.WSA.WindowActivationState
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(state, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.WSA.WindowActivated = m
return m
