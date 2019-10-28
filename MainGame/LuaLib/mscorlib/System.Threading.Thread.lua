---@class System.Threading.Thread : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field public CurrentContext System.Runtime.Remoting.Contexts.Context @static
---@field public CurrentPrincipal System.Security.Principal.IPrincipal @static
---@field public CurrentThread System.Threading.Thread @static
---@field public ExecutionContext System.Threading.ExecutionContext
---@field public Priority System.Threading.ThreadPriority
---@field public CurrentUICulture System.Globalization.CultureInfo
---@field public CurrentCulture System.Globalization.CultureInfo
---@field public ApartmentState System.Threading.ApartmentState
---@field public IsThreadPoolThread boolean
---@field public IsAlive boolean
---@field public IsBackground boolean
---@field public Name string
---@field public ThreadState System.Threading.ThreadState
---@field public ManagedThreadId number
local m = {}

---@overload fun(parameter:any)
function m:Start() end

---@param stack System.Threading.CompressedStack
function m:SetCompressedStack(stack) end

---@return System.Threading.CompressedStack
function m:GetCompressedStack() end

---@static
function m.ResetAbort() end

function m:Suspend() end

function m:Resume() end

function m:Interrupt() end

---@overload fun(millisecondsTimeout:number):
---@overload fun(timeout:System.TimeSpan):
function m:Join() end

---@overload fun(timeout:System.TimeSpan) @static
---@static
---@param millisecondsTimeout number
function m.Sleep(millisecondsTimeout) end

---@static
---@return boolean
function m.Yield() end

---@static
---@return System.LocalDataStoreSlot
function m.AllocateDataSlot() end

---@static
---@param name string
---@return System.LocalDataStoreSlot
function m.AllocateNamedDataSlot(name) end

---@static
---@param name string
---@return System.LocalDataStoreSlot
function m.GetNamedDataSlot(name) end

---@static
---@param name string
function m.FreeNamedDataSlot(name) end

---@static
---@param slot System.LocalDataStoreSlot
---@return any
function m.GetData(slot) end

---@static
---@param slot System.LocalDataStoreSlot
---@param data any
function m.SetData(slot, data) end

---@static
function m.MemoryBarrier() end

---@static
---@return System.AppDomain
function m.GetDomain() end

---@static
---@return number
function m.GetDomainID() end

---@overload fun(stateInfo:any)
function m:Abort() end

---@static
---@param iterations number
function m.SpinWait(iterations) end

---@overload fun(address:System.Double):(, System.Double) @static
---@overload fun(address:System.Int16):(, System.Int16) @static
---@overload fun(address:System.Int32):(, System.Int32) @static
---@overload fun(address:System.Int64):(, System.Int64) @static
---@overload fun(address:System.IntPtr):(, System.IntPtr) @static
---@overload fun(address:System.Object):(, System.Object) @static
---@overload fun(address:System.SByte):(, System.SByte) @static
---@overload fun(address:System.Single):(, System.Single) @static
---@overload fun(address:System.UInt16):(, System.UInt16) @static
---@overload fun(address:System.UInt32):(, System.UInt32) @static
---@overload fun(address:System.UInt64):(, System.UInt64) @static
---@overload fun(address:System.UIntPtr):(, System.UIntPtr) @static
---@static
---@param address System.Byte
---@return number, System.Byte
function m.VolatileRead(address) end

---@overload fun(address:System.Double, value:number): @static
---@overload fun(address:System.Int16, value:number): @static
---@overload fun(address:System.Int32, value:number): @static
---@overload fun(address:System.Int64, value:number): @static
---@overload fun(address:System.IntPtr, value:System.IntPtr): @static
---@overload fun(address:System.Object, value:any): @static
---@overload fun(address:System.SByte, value:number): @static
---@overload fun(address:System.Single, value:number): @static
---@overload fun(address:System.UInt16, value:number): @static
---@overload fun(address:System.UInt32, value:number): @static
---@overload fun(address:System.UInt64, value:number): @static
---@overload fun(address:System.UIntPtr, value:System.UIntPtr): @static
---@static
---@param address System.Byte
---@param value number
---@return System.Byte
function m.VolatileWrite(address, value) end

---@static
function m.BeginCriticalRegion() end

---@static
function m.EndCriticalRegion() end

---@static
function m.BeginThreadAffinity() end

---@static
function m.EndThreadAffinity() end

---@return System.Threading.ApartmentState
function m:GetApartmentState() end

---@param state System.Threading.ApartmentState
function m:SetApartmentState(state) end

---@param state System.Threading.ApartmentState
---@return boolean
function m:TrySetApartmentState(state) end

---@virtual
---@return number
function m:GetHashCode() end

function m:DisableComObjectEagerCleanup() end

System.Threading.Thread = m
return m
