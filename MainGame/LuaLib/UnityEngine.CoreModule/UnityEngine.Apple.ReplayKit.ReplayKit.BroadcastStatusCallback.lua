---@class UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param hasStarted boolean
---@param errorMessage string
function m:Invoke(hasStarted, errorMessage) end

---@virtual
---@param hasStarted boolean
---@param errorMessage string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(hasStarted, errorMessage, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback = m
return m
