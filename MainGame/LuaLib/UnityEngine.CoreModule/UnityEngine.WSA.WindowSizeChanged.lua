---@class UnityEngine.WSA.WindowSizeChanged : System.MulticastDelegate
local m = {}

---@virtual
---@param width number
---@param height number
function m:Invoke(width, height) end

---@virtual
---@param width number
---@param height number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(width, height, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.WSA.WindowSizeChanged = m
return m
