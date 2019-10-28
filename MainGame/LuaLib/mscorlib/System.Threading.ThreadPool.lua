---@class System.Threading.ThreadPool : System.Object
local m = {}

---@static
---@param workerThreads number
---@param completionPortThreads number
---@return boolean
function m.SetMaxThreads(workerThreads, completionPortThreads) end

---@static
---@return System.Int32, System.Int32
function m.GetMaxThreads() end

---@static
---@param workerThreads number
---@param completionPortThreads number
---@return boolean
function m.SetMinThreads(workerThreads, completionPortThreads) end

---@static
---@return System.Int32, System.Int32
function m.GetMinThreads() end

---@static
---@return System.Int32, System.Int32
function m.GetAvailableThreads() end

---@overload fun(waitObject:System.Threading.WaitHandle, callBack:fun(state:any, timedOut:boolean), state:any, millisecondsTimeOutInterval:number, executeOnlyOnce:boolean): @static
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:fun(state:any, timedOut:boolean), state:any, millisecondsTimeOutInterval:number, executeOnlyOnce:boolean): @static
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:fun(state:any, timedOut:boolean), state:any, timeout:System.TimeSpan, executeOnlyOnce:boolean): @static
---@static
---@param waitObject System.Threading.WaitHandle
---@param callBack fun(state:any, timedOut:boolean)
---@param state any
---@param millisecondsTimeOutInterval number
---@param executeOnlyOnce boolean
---@return System.Threading.RegisteredWaitHandle
function m.RegisterWaitForSingleObject(waitObject, callBack, state, millisecondsTimeOutInterval, executeOnlyOnce) end

---@overload fun(waitObject:System.Threading.WaitHandle, callBack:fun(state:any, timedOut:boolean), state:any, millisecondsTimeOutInterval:number, executeOnlyOnce:boolean): @static
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:fun(state:any, timedOut:boolean), state:any, millisecondsTimeOutInterval:number, executeOnlyOnce:boolean): @static
---@overload fun(waitObject:System.Threading.WaitHandle, callBack:fun(state:any, timedOut:boolean), state:any, timeout:System.TimeSpan, executeOnlyOnce:boolean): @static
---@static
---@param waitObject System.Threading.WaitHandle
---@param callBack fun(state:any, timedOut:boolean)
---@param state any
---@param millisecondsTimeOutInterval number
---@param executeOnlyOnce boolean
---@return System.Threading.RegisteredWaitHandle
function m.UnsafeRegisterWaitForSingleObject(waitObject, callBack, state, millisecondsTimeOutInterval, executeOnlyOnce) end

---@overload fun(callBack:fun(state:any)): @static
---@static
---@param callBack fun(state:any)
---@param state any
---@return boolean
function m.QueueUserWorkItem(callBack, state) end

---@static
---@param callBack fun(state:any)
---@param state any
---@return boolean
function m.UnsafeQueueUserWorkItem(callBack, state) end

---@static
---@param overlapped System.Threading.NativeOverlapped*
---@return boolean
function m.UnsafeQueueNativeOverlapped(overlapped) end

---@overload fun(osHandle:System.Runtime.InteropServices.SafeHandle): @static
---@static
---@param osHandle System.IntPtr
---@return boolean
function m.BindHandle(osHandle) end

System.Threading.ThreadPool = m
return m
