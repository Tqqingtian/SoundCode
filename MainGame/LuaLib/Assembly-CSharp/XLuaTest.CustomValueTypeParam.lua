---@class XLuaTest.CustomValueTypeParam : System.MulticastDelegate
local m = {}

---@virtual
---@param p XLuaTest.MyStruct
---@return XLuaTest.MyStruct
function m:Invoke(p) end

---@virtual
---@param p XLuaTest.MyStruct
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(p, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return XLuaTest.MyStruct
function m:EndInvoke(result) end

XLuaTest.CustomValueTypeParam = m
return m
