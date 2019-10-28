---@class System.Threading.NativeEventCalls : System.Object
local m = {}

---@static
---@param manual boolean
---@param initial boolean
---@param name string
---@return System.IntPtr, System.Int32
function m.CreateEvent_internal(manual, initial, name) end

---@static
---@param handle Microsoft.Win32.SafeHandles.SafeWaitHandle
---@return boolean
function m.SetEvent(handle) end

---@static
---@param handle Microsoft.Win32.SafeHandles.SafeWaitHandle
---@return boolean
function m.ResetEvent(handle) end

---@static
---@param handle System.IntPtr
function m.CloseEvent_internal(handle) end

---@static
---@param name string
---@param rights System.Security.AccessControl.EventWaitHandleRights
---@return System.IntPtr, System.Int32
function m.OpenEvent_internal(name, rights) end

System.Threading.NativeEventCalls = m
return m
