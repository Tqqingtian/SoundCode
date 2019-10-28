---@class System.Threading.Tasks.SingleProducerSingleConsumerQueue_1_T_ : System.Object
---@field public IsEmpty boolean
---@field public Count number
local m = {}

---@virtual
---@param item any
function m:Enqueue(item) end

---@virtual
---@return boolean, any
function m:TryDequeue() end

---@return boolean, any
function m:TryPeek() end

---@param predicate fun(obj:any):
---@return boolean, any
function m:TryDequeueIf(predicate) end

function m:Clear() end

---@virtual
---@return any
function m:GetEnumerator() end

System.Threading.Tasks.SingleProducerSingleConsumerQueue_1_T_ = m
return m
