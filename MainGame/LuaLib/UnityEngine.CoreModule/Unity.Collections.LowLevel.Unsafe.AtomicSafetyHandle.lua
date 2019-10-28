---@class Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle : System.ValueType
local m = {}

---@static
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.Create() end

---@static
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.GetTempUnsafePtrSliceHandle() end

---@static
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.GetTempMemoryHandle() end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return boolean
function m.IsTempMemoryHandle(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.Release(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.PrepareUndisposable(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.UseSecondaryVersion(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param allowWriting boolean
function m.SetAllowSecondaryVersionWriting(handle, allowWriting) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param allowReadWriteAccess boolean
function m.SetAllowReadOrWriteAccess(handle, allowReadWriteAccess) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return boolean
function m.GetAllowReadOrWriteAccess(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.CheckWriteAndBumpSecondaryVersion(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function m.EnforceAllBufferJobsHaveCompleted(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function m.EnforceAllBufferJobsHaveCompletedAndRelease(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Collections.LowLevel.Unsafe.EnforceJobResult
function m.EnforceAllBufferJobsHaveCompletedAndDisableReadWrite(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.CheckDeallocateAndThrow(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.CheckGetSecondaryDataPointerAndThrow(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param maxCount number
---@param output System.IntPtr
---@return number
function m.GetReaderArray(handle, maxCount, output) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return Unity.Jobs.JobHandle
function m.GetWriter(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.CheckReadAndThrow(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.CheckWriteAndThrow(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
function m.CheckExistsAndThrow(handle) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param readerIndex number
---@return string
function m.GetReaderName(handle, readerIndex) end

---@static
---@param handle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@return string
function m.GetWriterName(handle) end

Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle = m
return m
