---@class Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility : System.Object
local m = {}

---@static
---@param array System.ValueType
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.GetAtomicSafetyHandle(array) end

---@static
---@param array Unity.Collections.NativeArray_1_T_
---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.NativeArray_1_T_
function m.SetAtomicSafetyHandle(array, safety) end

---@static
---@param dataPointer System.Void*
---@param length number
---@param allocator Unity.Collections.Allocator
---@return System.ValueType
function m.ConvertExistingDataToNativeArray(dataPointer, length, allocator) end

---@static
---@param nativeArray System.ValueType
---@return System.Void*
function m.GetUnsafePtr(nativeArray) end

---@static
---@param nativeArray System.ValueType
---@return System.Void*
function m.GetUnsafeReadOnlyPtr(nativeArray) end

---@static
---@param nativeArray System.ValueType
---@return System.Void*
function m.GetUnsafeBufferPointerWithoutChecks(nativeArray) end

Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility = m
return m
