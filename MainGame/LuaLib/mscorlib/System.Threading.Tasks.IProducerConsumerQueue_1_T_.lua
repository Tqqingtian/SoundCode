---@class System.Threading.Tasks.IProducerConsumerQueue_1_T_ : table
---@field public IsEmpty boolean
---@field public Count number
local m = {}

---@abstract
---@param item any
function m:Enqueue(item) end

---@abstract
---@return boolean, any
function m:TryDequeue() end

---@abstract
---@param syncObj any
---@return number
function m:GetCountSafe(syncObj) end

System.Threading.Tasks.IProducerConsumerQueue_1_T_ = m
return m
