---@class System.Collections.Concurrent.ConcurrentQueue_1.Segment_T_ : System.Object
local m = {}

---@return boolean, any
function m:TryDequeue() end

---@param resultUsed boolean
---@return boolean, any
function m:TryPeek(resultUsed) end

---@param item any
---@return boolean
function m:TryEnqueue(item) end

System.Collections.Concurrent.ConcurrentQueue_1.Segment_T_ = m
return m
