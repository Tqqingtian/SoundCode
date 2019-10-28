---@class System.Runtime.CompilerServices.INotifyCompletion : table
local m = {}

---@abstract
---@param continuation fun()
function m:OnCompleted(continuation) end

System.Runtime.CompilerServices.INotifyCompletion = m
return m
