---@class CSCallLua.FDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param a number
---@param b string
---@return number, CSCallLua.DClass
function m:Invoke(a, b) end

---@virtual
---@param a number
---@param b string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, CSCallLua.DClass
function m:BeginInvoke(a, b, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number, CSCallLua.DClass
function m:EndInvoke(result) end

CSCallLua.FDelegate = m
return m
