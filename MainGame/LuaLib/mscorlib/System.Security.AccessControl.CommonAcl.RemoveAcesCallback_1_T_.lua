---@class System.Security.AccessControl.CommonAcl.RemoveAcesCallback_1_T_ : System.MulticastDelegate
local m = {}

---@virtual
---@param ace any
---@return boolean
function m:Invoke(ace) end

---@virtual
---@param ace any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(ace, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return boolean
function m:EndInvoke(result) end

System.Security.AccessControl.CommonAcl.RemoveAcesCallback_1_T_ = m
return m
