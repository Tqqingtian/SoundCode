---@class UnityEngine.RectTransform.ReapplyDrivenProperties : System.MulticastDelegate
local m = {}

---@virtual
---@param driven UnityEngine.RectTransform
function m:Invoke(driven) end

---@virtual
---@param driven UnityEngine.RectTransform
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(driven, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.RectTransform.ReapplyDrivenProperties = m
return m
