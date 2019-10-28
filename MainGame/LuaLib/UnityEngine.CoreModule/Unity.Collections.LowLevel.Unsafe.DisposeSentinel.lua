---@class Unity.Collections.LowLevel.Unsafe.DisposeSentinel : System.Object
local m = {}

---@static
---@param safety Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
---@param sentinel Unity.Collections.LowLevel.Unsafe.DisposeSentinel
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle, Unity.Collections.LowLevel.Unsafe.DisposeSentinel
function m.Dispose(safety, sentinel) end

---@static
---@param callSiteStackDepth number
---@param allocator Unity.Collections.Allocator
---@return Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle, Unity.Collections.LowLevel.Unsafe.DisposeSentinel
function m.Create(callSiteStackDepth, allocator) end

---@static
---@param sentinel Unity.Collections.LowLevel.Unsafe.DisposeSentinel
---@return Unity.Collections.LowLevel.Unsafe.DisposeSentinel
function m.Clear(sentinel) end

Unity.Collections.LowLevel.Unsafe.DisposeSentinel = m
return m
