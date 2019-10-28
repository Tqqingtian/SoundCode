---@class Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility : System.Object
local m = {}

---@static
---@param slice System.ValueType
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.GetAtomicSafetyHandle(slice) end

---@static
---@param slice Unity.Collections.NativeSlice_1_T_
---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.NativeSlice_1_T_
function m.SetAtomicSafetyHandle(slice, safety) end

---@static
---@param dataPointer System.Void*
---@param stride number
---@param length number
---@return System.ValueType
function m.ConvertExistingDataToNativeSlice(dataPointer, stride, length) end

---@static
---@param nativeSlice System.ValueType
---@return System.Void*
function m.GetUnsafePtr(nativeSlice) end

---@static
---@param nativeSlice System.ValueType
---@return System.Void*
function m.GetUnsafeReadOnlyPtr(nativeSlice) end

Unity.Collections.LowLevel.Unsafe.NativeSliceUnsafeUtility = m
return m
