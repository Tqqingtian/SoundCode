---@class System.Threading.InternalCrossContextDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param args any[]
---@return any
function m:Invoke(args) end

---@virtual
---@param args any[]
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(args, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Threading.InternalCrossContextDelegate = m
return m
