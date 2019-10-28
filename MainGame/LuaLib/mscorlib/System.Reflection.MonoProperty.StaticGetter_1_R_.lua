---@class System.Reflection.MonoProperty.StaticGetter_1_R_ : System.MulticastDelegate
local m = {}

---@virtual
---@return any
function m:Invoke() end

---@virtual
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Reflection.MonoProperty.StaticGetter_1_R_ = m
return m
