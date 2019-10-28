---@class Unity.Collections.LowLevel.Unsafe.UnsafeUtility : System.Object
local m = {}

---@static
---@param field System.Reflection.FieldInfo
---@return number
function m.GetFieldOffset(field) end

---@static
---@param target any
---@return System.Void*, System.UInt64
function m.PinGCObjectAndGetAddress(target) end

---@static
---@param target System.Array
---@return System.Void*, System.UInt64
function m.PinGCArrayAndGetDataAddress(target) end

---@static
---@param gcHandle number
function m.ReleaseGCObject(gcHandle) end

---@static
---@param target any
---@param dstPtr System.Void*
function m.CopyObjectAddressToPtr(target, dstPtr) end

---@overload fun(type:System.Type): @static
---@static
---@return boolean
function m.IsBlittable() end

---@static
---@param size number
---@param alignment number
---@param allocator Unity.Collections.Allocator
---@return System.Void*
function m.Malloc(size, alignment, allocator) end

---@static
---@param memory System.Void*
---@param allocator Unity.Collections.Allocator
function m.Free(memory, allocator) end

---@static
---@param allocator Unity.Collections.Allocator
---@return boolean
function m.IsValidAllocator(allocator) end

---@static
---@param destination System.Void*
---@param source System.Void*
---@param size number
function m.MemCpy(destination, source, size) end

---@static
---@param destination System.Void*
---@param source System.Void*
---@param size number
---@param count number
function m.MemCpyReplicate(destination, source, size, count) end

---@static
---@param destination System.Void*
---@param destinationStride number
---@param source System.Void*
---@param sourceStride number
---@param elementSize number
---@param count number
function m.MemCpyStride(destination, destinationStride, source, sourceStride, elementSize, count) end

---@static
---@param destination System.Void*
---@param source System.Void*
---@param size number
function m.MemMove(destination, source, size) end

---@static
---@param destination System.Void*
---@param size number
function m.MemClear(destination, size) end

---@static
---@param ptr1 System.Void*
---@param ptr2 System.Void*
---@param size number
---@return number
function m.MemCmp(ptr1, ptr2, size) end

---@overload fun(): @static
---@static
---@param type System.Type
---@return number
function m.SizeOf(type) end

---@static
---@param ptr System.Void*
---@return any
function m.CopyPtrToStructure(ptr) end

---@static
---@param input any
---@param ptr System.Void*
---@return any
function m.CopyStructureToPtr(input, ptr) end

---@static
---@param source System.Void*
---@param index number
---@return any
function m.ReadArrayElement(source, index) end

---@static
---@param source System.Void*
---@param index number
---@param stride number
---@return any
function m.ReadArrayElementWithStride(source, index, stride) end

---@static
---@param destination System.Void*
---@param index number
---@param value any
function m.WriteArrayElement(destination, index, value) end

---@static
---@param destination System.Void*
---@param index number
---@param stride number
---@param value any
function m.WriteArrayElementWithStride(destination, index, stride, value) end

---@static
---@param output any
---@return System.Void*, any
function m.AddressOf(output) end

---@static
---@return number
function m.AlignOf() end

Unity.Collections.LowLevel.Unsafe.UnsafeUtility = m
return m
