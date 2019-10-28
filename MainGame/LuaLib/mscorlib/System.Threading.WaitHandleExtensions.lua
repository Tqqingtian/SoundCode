---@class System.Threading.WaitHandleExtensions : System.Object
local m = {}

---@static
---@param waitHandle System.Threading.WaitHandle
---@return Microsoft.Win32.SafeHandles.SafeWaitHandle
function m.GetSafeWaitHandle(waitHandle) end

---@static
---@param waitHandle System.Threading.WaitHandle
---@param value Microsoft.Win32.SafeHandles.SafeWaitHandle
function m.SetSafeWaitHandle(waitHandle, value) end

System.Threading.WaitHandleExtensions = m
return m
