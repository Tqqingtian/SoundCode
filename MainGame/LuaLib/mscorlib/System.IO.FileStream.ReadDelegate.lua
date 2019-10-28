---@class System.IO.FileStream.ReadDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param buffer string
---@param offset number
---@param count number
---@return number
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
---@return number
function m:EndInvoke(result) end

System.IO.FileStream.ReadDelegate = m
return m
