---@class System.SpanHelpers : System.Object
local m = {}

---@overload fun(b:System.Byte, byteLength:System.UIntPtr): @static
---@static
---@param ptr System.Byte*
---@param byteLength System.UIntPtr
function m.ClearLessThanPointerSized(ptr, byteLength) end

---@static
---@param b System.Byte
---@param byteLength System.UIntPtr
---@return System.Byte
function m.ClearPointerSizedWithoutReferences(b, byteLength) end

---@static
---@param ip System.IntPtr
---@param pointerSizeLength System.UIntPtr
---@return System.IntPtr
function m.ClearPointerSizedWithReferences(ip, pointerSizeLength) end

---@overload fun(searchSpace:any, value:System.ValueType, length:number):(, any) @static
---@overload fun(searchSpace:System.Byte, searchSpaceLength:number, value:System.Byte, valueLength:number):(, System.Byte, System.Byte) @static
---@overload fun(searchSpace:System.Byte, value:number, length:number):(, System.Byte) @static
---@static
---@param searchSpace any
---@param searchSpaceLength number
---@param value any
---@param valueLength number
---@return number, any, any
function m.IndexOf(searchSpace, searchSpaceLength, value, valueLength) end

---@overload fun(first:System.Byte, second:System.Byte, length:number):(, System.Byte, System.Byte) @static
---@static
---@param first any
---@param second any
---@param length number
---@return boolean, any, any
function m.SequenceEqual(first, second, length) end

---@overload fun(searchSpace:System.Byte, value0:number, value1:number, length:number):(, System.Byte) @static
---@overload fun(searchSpace:System.Byte, value0:number, value1:number, value2:number, length:number):(, System.Byte) @static
---@static
---@param searchSpace System.Byte
---@param searchSpaceLength number
---@param value System.Byte
---@param valueLength number
---@return number, System.Byte, System.Byte
function m.IndexOfAny(searchSpace, searchSpaceLength, value, valueLength) end

---@static
---@param dst any
---@param dstLength number
---@param src any
---@param srcLength number
---@return any, any
function m.CopyTo(dst, dstLength, src, srcLength) end

---@static
---@param start System.IntPtr
---@param index number
---@return System.IntPtr
function m.Add(start, index) end

---@static
---@return boolean
function m.IsReferenceOrContainsReferences() end

System.SpanHelpers = m
return m
