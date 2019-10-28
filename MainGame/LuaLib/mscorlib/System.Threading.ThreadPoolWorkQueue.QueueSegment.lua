---@class System.Threading.ThreadPoolWorkQueue.QueueSegment : System.Object
---@field public Next System.Threading.ThreadPoolWorkQueue.QueueSegment
local m = {}

---@return boolean
function m:IsUsedUp() end

---@param node System.Threading.IThreadPoolWorkItem
---@return boolean
function m:TryEnqueue(node) end

---@return boolean, System.Threading.IThreadPoolWorkItem
function m:TryDequeue() end

System.Threading.ThreadPoolWorkQueue.QueueSegment = m
return m
