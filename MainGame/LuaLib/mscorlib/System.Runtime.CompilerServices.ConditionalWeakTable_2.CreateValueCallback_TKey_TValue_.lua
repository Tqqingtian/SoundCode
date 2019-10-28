---@class System.Runtime.CompilerServices.ConditionalWeakTable_2.CreateValueCallback_TKey_TValue_ : System.MulticastDelegate
local m = {}

---@virtual
---@param key any
---@return any
function m:Invoke(key) end

---@virtual
---@param key any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(key, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Runtime.CompilerServices.ConditionalWeakTable_2.CreateValueCallback_TKey_TValue_ = m
return m
