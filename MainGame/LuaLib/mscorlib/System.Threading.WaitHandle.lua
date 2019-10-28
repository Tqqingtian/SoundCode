---@class System.Threading.WaitHandle : System.MarshalByRefObject
---@field public WaitTimeout number @static
---@field public Handle System.IntPtr
---@field public SafeWaitHandle Microsoft.Win32.SafeHandles.SafeWaitHandle
local m = {}

---@overload fun(timeout:System.TimeSpan, exitContext:boolean): @virtual
---@overload fun(): @virtual
---@overload fun(millisecondsTimeout:number): @virtual
---@overload fun(timeout:System.TimeSpan): @virtual
---@virtual
---@param millisecondsTimeout number
---@param exitContext boolean
---@return boolean
function m:WaitOne(millisecondsTimeout, exitContext) end

---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan, exitContext:boolean): @static
---@overload fun(waitHandles:System.Threading.WaitHandle[]): @static
---@overload fun(waitHandles:System.Threading.WaitHandle[], millisecondsTimeout:number): @static
---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan): @static
---@static
---@param waitHandles System.Threading.WaitHandle[]
---@param millisecondsTimeout number
---@param exitContext boolean
---@return boolean
function m.WaitAll(waitHandles, millisecondsTimeout, exitContext) end

---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan, exitContext:boolean): @static
---@overload fun(waitHandles:System.Threading.WaitHandle[], timeout:System.TimeSpan): @static
---@overload fun(waitHandles:System.Threading.WaitHandle[]): @static
---@overload fun(waitHandles:System.Threading.WaitHandle[], millisecondsTimeout:number): @static
---@static
---@param waitHandles System.Threading.WaitHandle[]
---@param millisecondsTimeout number
---@param exitContext boolean
---@return number
function m.WaitAny(waitHandles, millisecondsTimeout, exitContext) end

---@overload fun(toSignal:System.Threading.WaitHandle, toWaitOn:System.Threading.WaitHandle, timeout:System.TimeSpan, exitContext:boolean): @static
---@overload fun(toSignal:System.Threading.WaitHandle, toWaitOn:System.Threading.WaitHandle, millisecondsTimeout:number, exitContext:boolean): @static
---@static
---@param toSignal System.Threading.WaitHandle
---@param toWaitOn System.Threading.WaitHandle
---@return boolean
function m.SignalAndWait(toSignal, toWaitOn) end

---@virtual
function m:Close() end

---@virtual
function m:Dispose() end

---@extension
---@return Microsoft.Win32.SafeHandles.SafeWaitHandle
function m.GetSafeWaitHandle() end

---@extension
---@param value Microsoft.Win32.SafeHandles.SafeWaitHandle
function m.SetSafeWaitHandle(value) end

System.Threading.WaitHandle = m
return m
