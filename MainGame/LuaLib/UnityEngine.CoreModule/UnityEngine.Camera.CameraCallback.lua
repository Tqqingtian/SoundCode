---@class UnityEngine.Camera.CameraCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param cam UnityEngine.Camera
function m:Invoke(cam) end

---@virtual
---@param cam UnityEngine.Camera
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(cam, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Camera.CameraCallback = m
return m
