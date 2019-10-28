---@class System.Collections.Concurrent.CDSCollectionETWBCLProvider : System.Diagnostics.Tracing.EventSource
---@field public Log System.Collections.Concurrent.CDSCollectionETWBCLProvider @static
local m = {}

---@param spinCount number
function m:ConcurrentStack_FastPushFailed(spinCount) end

---@param spinCount number
function m:ConcurrentStack_FastPopFailed(spinCount) end

---@param numOfBuckets number
function m:ConcurrentDictionary_AcquiringAllLocks(numOfBuckets) end

function m:ConcurrentBag_TryTakeSteals() end

function m:ConcurrentBag_TryPeekSteals() end

System.Collections.Concurrent.CDSCollectionETWBCLProvider = m
return m
