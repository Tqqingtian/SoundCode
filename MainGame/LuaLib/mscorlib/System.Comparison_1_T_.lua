---@class System.Comparison_1_T_ : System.MulticastDelegate
local m = {}

---@virtual
---@param x any
---@param y any
---@return number
function m:Invoke(x, y) end

---@virtual
---@param x any
---@param y any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(x, y, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number
function m:EndInvoke(result) end

System.Comparison_1_T_ = m
return m
