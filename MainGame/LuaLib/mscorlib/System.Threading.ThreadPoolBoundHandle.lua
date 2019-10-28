---@class System.Threading.ThreadPoolBoundHandle : System.Object
---@field public Handle System.Runtime.InteropServices.SafeHandle
local m = {}

---@overload fun(preAllocated:System.Threading.PreAllocatedOverlapped):
---@param callback fun(errorCode:number, numBytes:number, pOVERLAP:System.Threading.NativeOverlapped*)
---@param state any
---@param pinData any
---@return System.Threading.NativeOverlapped*
function m:AllocateNativeOverlapped(callback, state, pinData) end

---@static
---@param handle System.Runtime.InteropServices.SafeHandle
---@return System.Threading.ThreadPoolBoundHandle
function m.BindHandle(handle) end

---@virtual
function m:Dispose() end

---@param overlapped System.Threading.NativeOverlapped*
function m:FreeNativeOverlapped(overlapped) end

---@static
---@param overlapped System.Threading.NativeOverlapped*
---@return any
function m.GetNativeOverlappedState(overlapped) end

System.Threading.ThreadPoolBoundHandle = m
return m
