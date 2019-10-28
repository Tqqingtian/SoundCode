---@class PageView.OnItemCreateHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param dataIndex number
---@param obj UnityEngine.GameObject
function m:Invoke(dataIndex, obj) end

---@virtual
---@param dataIndex number
---@param obj UnityEngine.GameObject
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(dataIndex, obj, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

PageView.OnItemCreateHandler = m
return m
