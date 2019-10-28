---@class System.Threading.IThreadPoolWorkItem : table
local m = {}

---@abstract
function m:ExecuteWorkItem() end

---@abstract
---@param tae System.Threading.ThreadAbortException
function m:MarkAborted(tae) end

System.Threading.IThreadPoolWorkItem = m
return m
