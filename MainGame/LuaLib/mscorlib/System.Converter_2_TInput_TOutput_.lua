---@class System.Converter_2_TInput_TOutput_ : System.MulticastDelegate
local m = {}

---@virtual
---@param input any
---@return any
function m:Invoke(input) end

---@virtual
---@param input any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(input, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Converter_2_TInput_TOutput_ = m
return m
