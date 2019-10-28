---@class System.IObservable_1_T_ : table
local m = {}

---@abstract
---@param observer any
---@return System.IDisposable
function m:Subscribe(observer) end

System.IObservable_1_T_ = m
return m
