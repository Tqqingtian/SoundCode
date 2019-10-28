---@class InvokeLua.CalcNew : System.MulticastDelegate
local m = {}

---@overload fun(mult:number): @virtual
---@virtual
---@param mult number
---@param ... string|string[]
---@return InvokeLua.ICalc
function m:Invoke(mult, ...) end

---@virtual
---@param mult number
---@param args string[]
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(mult, args, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return InvokeLua.ICalc
function m:EndInvoke(result) end

InvokeLua.CalcNew = m
return m
