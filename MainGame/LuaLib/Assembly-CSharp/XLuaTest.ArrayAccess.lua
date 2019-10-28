---@class XLuaTest.ArrayAccess : System.MulticastDelegate
local m = {}

---@virtual
---@param arr System.Array
function m:Invoke(arr) end

---@virtual
---@param arr System.Array
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(arr, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

XLuaTest.ArrayAccess = m
return m
