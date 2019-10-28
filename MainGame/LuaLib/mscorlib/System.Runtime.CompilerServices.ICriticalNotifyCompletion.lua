---@class System.Runtime.CompilerServices.ICriticalNotifyCompletion : table
local m = {}

---@abstract
---@param continuation fun()
function m:UnsafeOnCompleted(continuation) end

System.Runtime.CompilerServices.ICriticalNotifyCompletion = m
return m
