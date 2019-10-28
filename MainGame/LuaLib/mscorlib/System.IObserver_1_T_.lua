---@class System.IObserver_1_T_ : table
local m = {}

---@abstract
---@param value any
function m:OnNext(value) end

---@abstract
---@param error System.Exception
function m:OnError(error) end

---@abstract
function m:OnCompleted() end

System.IObserver_1_T_ = m
return m
