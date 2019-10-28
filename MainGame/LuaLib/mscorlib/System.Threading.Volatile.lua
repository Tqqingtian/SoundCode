---@class System.Threading.Volatile : System.Object
local m = {}

---@overload fun(location:System.Byte):(, System.Byte) @static
---@overload fun(location:System.SByte):(, System.SByte) @static
---@overload fun(location:System.Int16):(, System.Int16) @static
---@overload fun(location:System.UInt16):(, System.UInt16) @static
---@overload fun(location:System.Int32):(, System.Int32) @static
---@overload fun(location:System.UInt32):(, System.UInt32) @static
---@overload fun(location:System.Int64):(, System.Int64) @static
---@overload fun(location:System.UInt64):(, System.UInt64) @static
---@overload fun(location:System.IntPtr):(, System.IntPtr) @static
---@overload fun(location:System.UIntPtr):(, System.UIntPtr) @static
---@overload fun(location:System.Double):(, System.Double) @static
---@overload fun(location:System.Single):(, System.Single) @static
---@overload fun(location:any):(, any) @static
---@static
---@param location System.Boolean
---@return boolean, System.Boolean
function m.Read(location) end

---@overload fun(location:System.Byte, value:number): @static
---@overload fun(location:System.SByte, value:number): @static
---@overload fun(location:System.Int16, value:number): @static
---@overload fun(location:System.UInt16, value:number): @static
---@overload fun(location:System.Int32, value:number): @static
---@overload fun(location:System.UInt32, value:number): @static
---@overload fun(location:System.Int64, value:number): @static
---@overload fun(location:System.UInt64, value:number): @static
---@overload fun(location:System.IntPtr, value:System.IntPtr): @static
---@overload fun(location:System.UIntPtr, value:System.UIntPtr): @static
---@overload fun(location:System.Double, value:number): @static
---@overload fun(location:System.Single, value:number): @static
---@overload fun(location:any, value:any): @static
---@static
---@param location System.Boolean
---@param value boolean
---@return System.Boolean
function m.Write(location, value) end

System.Threading.Volatile = m
return m
