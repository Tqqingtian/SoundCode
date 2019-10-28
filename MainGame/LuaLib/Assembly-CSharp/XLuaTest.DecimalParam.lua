---@class XLuaTest.DecimalParam : System.MulticastDelegate
local m = {}

---@virtual
---@param p System.Decimal
---@return System.Decimal
function m:Invoke(p) end

---@virtual
---@param p System.Decimal
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(p, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.Decimal
function m:EndInvoke(result) end

XLuaTest.DecimalParam = m
return m
