---@class System.IO.FileStream.WriteDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param buffer string
---@param offset number
---@param count number
function m:Invoke(buffer, offset, count) end

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(buffer, offset, count, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.IO.FileStream.WriteDelegate = m
return m
