---@class System.Runtime.CompilerServices.Unsafe : System.Object
local m = {}

---@overload fun(source:any, elementOffset:System.IntPtr):(, any) @static
---@overload fun(source:System.Void*, elementOffset:number): @static
---@static
---@param source any
---@param elementOffset number
---@return any, any
function m.Add(source, elementOffset) end

---@static
---@param source any
---@param byteOffset System.IntPtr
---@return any, any
function m.AddByteOffset(source, byteOffset) end

---@static
---@param left any
---@param right any
---@return boolean, any, any
function m.AreSame(left, right) end

---@overload fun(source:any):(, any) @static
---@static
---@param o any
---@return any
function m.As(o) end

---@static
---@param source System.Void*
---@return any
function m.AsRef(source) end

---@static
---@param origin any
---@param target any
---@return System.IntPtr, any, any
function m.ByteOffset(origin, target) end

---@static
---@param destination System.Byte
---@param source System.Byte
---@param byteCount number
---@return System.Byte, System.Byte
function m.CopyBlock(destination, source, byteCount) end

---@overload fun(startAddress:System.Void*, value:number, byteCount:number) @static
---@static
---@param startAddress System.Byte
---@param value number
---@param byteCount number
---@return System.Byte
function m.InitBlockUnaligned(startAddress, value, byteCount) end

---@static
---@param source System.Void*
---@return any
function m.Read(source) end

---@static
---@param source System.Byte
---@return any, System.Byte
function m.ReadUnaligned(source) end

---@static
---@return number
function m.SizeOf() end

---@static
---@param source any
---@param elementOffset number
---@return any, any
function m.Subtract(source, elementOffset) end

---@static
---@param destination System.Byte
---@param value any
---@return System.Byte
function m.WriteUnaligned(destination, value) end

System.Runtime.CompilerServices.Unsafe = m
return m
