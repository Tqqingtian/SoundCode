---@class System.Console.WindowsConsole.WindowsCancelHandler : System.MulticastDelegate
local m = {}

---@virtual
---@param keyCode number
---@return boolean
function m:Invoke(keyCode) end

---@virtual
---@param keyCode number
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(keyCode, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return boolean
function m:EndInvoke(result) end

System.Console.WindowsConsole.WindowsCancelHandler = m
return m
