---@class System.Threading.ThreadPoolWorkQueue : System.Object
local m = {}

---@return System.Threading.ThreadPoolWorkQueueThreadLocals
function m:EnsureCurrentThreadHasQueue() end

---@param callback System.Threading.IThreadPoolWorkItem
---@param forceGlobal boolean
function m:Enqueue(callback, forceGlobal) end

---@param tl System.Threading.ThreadPoolWorkQueueThreadLocals
---@return System.Threading.IThreadPoolWorkItem, System.Boolean
function m:Dequeue(tl) end

System.Threading.ThreadPoolWorkQueue = m
return m
