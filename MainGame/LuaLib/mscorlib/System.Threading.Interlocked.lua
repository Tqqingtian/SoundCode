---@class System.Threading.Interlocked : System.Object
local m = {}

---@overload fun(location1:System.Object, value:any, comparand:any):(, System.Object) @static
---@overload fun(location1:System.Single, value:number, comparand:number):(, System.Single) @static
---@overload fun(location1:System.Int64, value:number, comparand:number):(, System.Int64) @static
---@overload fun(location1:System.IntPtr, value:System.IntPtr, comparand:System.IntPtr):(, System.IntPtr) @static
---@overload fun(location1:System.Double, value:number, comparand:number):(, System.Double) @static
---@overload fun(location1:any, value:any, comparand:any):(, any) @static
---@static
---@param location1 System.Int32
---@param value number
---@param comparand number
---@return number, System.Int32
function m.CompareExchange(location1, value, comparand) end

---@overload fun(location:System.Int64):(, System.Int64) @static
---@static
---@param location System.Int32
---@return number, System.Int32
function m.Decrement(location) end

---@overload fun(location:System.Int64):(, System.Int64) @static
---@static
---@param location System.Int32
---@return number, System.Int32
function m.Increment(location) end

---@overload fun(location1:System.Object, value:any):(, System.Object) @static
---@overload fun(location1:System.Single, value:number):(, System.Single) @static
---@overload fun(location1:System.Int64, value:number):(, System.Int64) @static
---@overload fun(location1:System.IntPtr, value:System.IntPtr):(, System.IntPtr) @static
---@overload fun(location1:System.Double, value:number):(, System.Double) @static
---@overload fun(location1:any, value:any):(, any) @static
---@static
---@param location1 System.Int32
---@param value number
---@return number, System.Int32
function m.Exchange(location1, value) end

---@static
---@param location System.Int64
---@return number, System.Int64
function m.Read(location) end

---@overload fun(location1:System.Int64, value:number):(, System.Int64) @static
---@static
---@param location1 System.Int32
---@param value number
---@return number, System.Int32
function m.Add(location1, value) end

---@static
function m.MemoryBarrier() end

System.Threading.Interlocked = m
return m
