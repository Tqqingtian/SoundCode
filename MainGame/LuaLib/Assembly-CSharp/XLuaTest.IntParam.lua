---@class XLuaTest.IntParam : System.MulticastDelegate
local m = {}

---@virtual
---@param p number
---@return number
function m:Invoke(p) end

---@virtual
---@param p number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(p, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number
function m:EndInvoke(result) end

XLuaTest.IntParam = m
return m
