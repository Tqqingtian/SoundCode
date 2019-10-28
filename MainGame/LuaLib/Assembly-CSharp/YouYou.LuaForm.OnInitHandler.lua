---@class TQ.LuaForm.OnInitHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param transform UnityEngine.Transform
---@param userData any
function m:Invoke(transform, userData) end

---@virtual
---@param transform UnityEngine.Transform
---@param userData any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(transform, userData, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

TQ.LuaForm.OnInitHandler = m
return m
