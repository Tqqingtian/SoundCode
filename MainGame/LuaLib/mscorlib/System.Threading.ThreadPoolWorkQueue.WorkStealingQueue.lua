---@class System.Threading.ThreadPoolWorkQueue.WorkStealingQueue : System.Object
local m = {}

---@param obj System.Threading.IThreadPoolWorkItem
function m:LocalPush(obj) end

---@param obj System.Threading.IThreadPoolWorkItem
---@return boolean
function m:LocalFindAndPop(obj) end

---@return boolean, System.Threading.IThreadPoolWorkItem
function m:LocalPop() end

---@param missedSteal System.Boolean
---@return boolean, System.Threading.IThreadPoolWorkItem, System.Boolean
function m:TrySteal(missedSteal) end

System.Threading.ThreadPoolWorkQueue.WorkStealingQueue = m
return m
