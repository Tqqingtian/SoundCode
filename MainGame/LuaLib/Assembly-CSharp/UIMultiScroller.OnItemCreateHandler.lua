---@class UIMultiScroller.OnItemCreateHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param index number
---@param obj UnityEngine.GameObject
function m:Invoke(index, obj) end

---@virtual
---@param index number
---@param obj UnityEngine.GameObject
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(index, obj, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UIMultiScroller.OnItemCreateHandler = m
return m
