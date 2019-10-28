---@class System.Security.AccessControl.NativeObjectSecurity.ExceptionFromErrorCode : System.MulticastDelegate
local m = {}

---@virtual
---@param errorCode number
---@param name string
---@param handle System.Runtime.InteropServices.SafeHandle
---@param context any
---@return System.Exception
function m:Invoke(errorCode, name, handle, context) end

---@virtual
---@param errorCode number
---@param name string
---@param handle System.Runtime.InteropServices.SafeHandle
---@param context any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(errorCode, name, handle, context, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return System.Exception
function m:EndInvoke(result) end

System.Security.AccessControl.NativeObjectSecurity.ExceptionFromErrorCode = m
return m
