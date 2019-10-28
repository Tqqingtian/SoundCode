---@class System.Threading.Overlapped : System.Object
---@field public AsyncResult System.IAsyncResult
---@field public EventHandle number
---@field public EventHandleIntPtr System.IntPtr
---@field public OffsetHigh number
---@field public OffsetLow number
local m = {}

---@static
---@param nativeOverlappedPtr System.Threading.NativeOverlapped*
function m.Free(nativeOverlappedPtr) end

---@static
---@param nativeOverlappedPtr System.Threading.NativeOverlapped*
---@return System.Threading.Overlapped
function m.Unpack(nativeOverlappedPtr) end

---@overload fun(iocb:fun(errorCode:number, numBytes:number, pOVERLAP:System.Threading.NativeOverlapped*), userData:any):
---@param iocb fun(errorCode:number, numBytes:number, pOVERLAP:System.Threading.NativeOverlapped*)
---@return System.Threading.NativeOverlapped*
function m:Pack(iocb) end

---@overload fun(iocb:fun(errorCode:number, numBytes:number, pOVERLAP:System.Threading.NativeOverlapped*), userData:any):
---@param iocb fun(errorCode:number, numBytes:number, pOVERLAP:System.Threading.NativeOverlapped*)
---@return System.Threading.NativeOverlapped*
function m:UnsafePack(iocb) end

System.Threading.Overlapped = m
return m
