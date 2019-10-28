---@class UISelectRoleDragView.OnDragingHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param dir number
function m:Invoke(dir) end

---@virtual
---@param dir number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(dir, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UISelectRoleDragView.OnDragingHandler = m
return m
