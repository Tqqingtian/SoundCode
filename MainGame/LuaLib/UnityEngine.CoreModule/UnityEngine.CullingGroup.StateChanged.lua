---@class UnityEngine.CullingGroup.StateChanged : System.MulticastDelegate
local m = {}

---@virtual
---@param sphere UnityEngine.CullingGroupEvent
function m:Invoke(sphere) end

---@virtual
---@param sphere UnityEngine.CullingGroupEvent
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(sphere, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.CullingGroup.StateChanged = m
return m
