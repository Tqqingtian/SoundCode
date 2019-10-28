---@class System.Runtime.InteropServices.ObjectCreationDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param aggregator System.IntPtr
---@return System.IntPtr
function m:Invoke(aggregator) end

---@virtual
---@param aggregator System.IntPtr
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(aggregator, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.IntPtr
function m:EndInvoke(result) end

System.Runtime.InteropServices.ObjectCreationDelegate = m
return m
