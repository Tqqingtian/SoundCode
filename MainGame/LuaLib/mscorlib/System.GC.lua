---@class System.GC : System.Object
---@field public MaxGeneration number @static
local m = {}

---@static
---@param bytesAllocated number
function m.AddMemoryPressure(bytesAllocated) end

---@static
---@param bytesAllocated number
function m.RemoveMemoryPressure(bytesAllocated) end

---@overload fun(wo:System.WeakReference): @static
---@static
---@param obj any
---@return number
function m.GetGeneration(obj) end

---@overload fun() @static
---@overload fun(generation:number, mode:System.GCCollectionMode) @static
---@overload fun(generation:number, mode:System.GCCollectionMode, blocking:boolean) @static
---@overload fun(generation:number, mode:System.GCCollectionMode, blocking:boolean, compacting:boolean) @static
---@static
---@param generation number
function m.Collect(generation) end

---@static
---@param generation number
---@return number
function m.CollectionCount(generation) end

---@static
---@param obj any
function m.KeepAlive(obj) end

---@static
function m.WaitForPendingFinalizers() end

---@static
---@param obj any
function m.SuppressFinalize(obj) end

---@static
---@param obj any
function m.ReRegisterForFinalize(obj) end

---@static
---@param forceFullCollection boolean
---@return number
function m.GetTotalMemory(forceFullCollection) end

---@static
---@param maxGenerationThreshold number
---@param largeObjectHeapThreshold number
function m.RegisterForFullGCNotification(maxGenerationThreshold, largeObjectHeapThreshold) end

---@static
function m.CancelFullGCNotification() end

---@overload fun(millisecondsTimeout:number): @static
---@static
---@return System.GCNotificationStatus
function m.WaitForFullGCApproach() end

---@overload fun(millisecondsTimeout:number): @static
---@static
---@return System.GCNotificationStatus
function m.WaitForFullGCComplete() end

---@overload fun(totalSize:number, lohSize:number): @static
---@overload fun(totalSize:number, disallowFullBlockingGC:boolean): @static
---@overload fun(totalSize:number, lohSize:number, disallowFullBlockingGC:boolean): @static
---@static
---@param totalSize number
---@return boolean
function m.TryStartNoGCRegion(totalSize) end

---@static
function m.EndNoGCRegion() end

System.GC = m
return m
