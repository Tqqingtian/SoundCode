---@class System.Threading.Mutex : System.Threading.WaitHandle
local m = {}

---@return System.Security.AccessControl.MutexSecurity
function m:GetAccessControl() end

---@overload fun(name:string, rights:System.Security.AccessControl.MutexRights): @static
---@static
---@param name string
---@return System.Threading.Mutex
function m.OpenExisting(name) end

---@overload fun(name:string, rights:System.Security.AccessControl.MutexRights):(, System.Threading.Mutex) @static
---@static
---@param name string
---@return boolean, System.Threading.Mutex
function m.TryOpenExisting(name) end

function m:ReleaseMutex() end

---@param mutexSecurity System.Security.AccessControl.MutexSecurity
function m:SetAccessControl(mutexSecurity) end

System.Threading.Mutex = m
return m
