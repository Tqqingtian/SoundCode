---@class XLuaTest.EnumParam : System.MulticastDelegate
local m = {}

---@virtual
---@param p XLuaTest.MyEnum
---@return XLuaTest.MyEnum
function m:Invoke(p) end

---@virtual
---@param p XLuaTest.MyEnum
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(p, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return XLuaTest.MyEnum
function m:EndInvoke(result) end

XLuaTest.EnumParam = m
return m
