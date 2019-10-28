---@class System.Security.AccessControl.NativeObjectSecurity.SetSecurityInfoNativeCall : System.MulticastDelegate
local m = {}

---@virtual
---@param securityInfos System.Security.AccessControl.SecurityInfos
---@param owner string
---@param group string
---@param dacl string
---@param sacl string
---@return number
function m:Invoke(securityInfos, owner, group, dacl, sacl) end

---@virtual
---@param securityInfos System.Security.AccessControl.SecurityInfos
---@param owner string
---@param group string
---@param dacl string
---@param sacl string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(securityInfos, owner, group, dacl, sacl, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return number
function m:EndInvoke(result) end

System.Security.AccessControl.NativeObjectSecurity.SetSecurityInfoNativeCall = m
return m
