---@class System.Security.AccessControl.NativeObjectSecurity.GetSecurityInfoNativeCall : System.MulticastDelegate
local m = {}

---@virtual
---@param securityInfos System.Security.AccessControl.SecurityInfos
---@return number, System.IntPtr, System.IntPtr, System.IntPtr, System.IntPtr, System.IntPtr
function m:Invoke(securityInfos) end

---@virtual
---@param securityInfos System.Security.AccessControl.SecurityInfos
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, System.IntPtr, System.IntPtr, System.IntPtr, System.IntPtr, System.IntPtr
function m:BeginInvoke(securityInfos, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number, System.IntPtr, System.IntPtr, System.IntPtr, System.IntPtr, System.IntPtr
function m:EndInvoke(result) end

System.Security.AccessControl.NativeObjectSecurity.GetSecurityInfoNativeCall = m
return m
