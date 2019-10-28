---@class XLuaTest.IExchanger : table
local m = {}

---@abstract
---@param arr System.Array
function m:exchange(arr) end

XLuaTest.IExchanger = m
return m
