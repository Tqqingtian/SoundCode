---@class System.Collections.Concurrent.IProducerConsumerCollection_1_T_ : table
local m = {}

---@abstract
---@param array any[]
---@param index number
function m:CopyTo(array, index) end

---@abstract
---@param item any
---@return boolean
function m:TryAdd(item) end

---@abstract
---@return boolean, any
function m:TryTake() end

---@abstract
---@return any[]
function m:ToArray() end

System.Collections.Concurrent.IProducerConsumerCollection_1_T_ = m
return m
