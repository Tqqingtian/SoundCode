---@class System.Threading.EventWaitHandle : System.Threading.WaitHandle
local m = {}

---@overload fun(name:string, rights:System.Security.AccessControl.EventWaitHandleRights): @static
---@static
---@param name string
---@return System.Threading.EventWaitHandle
function m.OpenExisting(name) end

---@overload fun(name:string, rights:System.Security.AccessControl.EventWaitHandleRights):(, System.Threading.EventWaitHandle) @static
---@static
---@param name string
---@return boolean, System.Threading.EventWaitHandle
function m.TryOpenExisting(name) end

---@return boolean
function m:Reset() end

---@return boolean
function m:Set() end

---@return System.Security.AccessControl.EventWaitHandleSecurity
function m:GetAccessControl() end

---@param eventSecurity System.Security.AccessControl.EventWaitHandleSecurity
function m:SetAccessControl(eventSecurity) end

System.Threading.EventWaitHandle = m
return m
