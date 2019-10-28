---@class System.Threading.IDeferredDisposable : table
local m = {}

---@abstract
---@param disposed boolean
function m:OnFinalRelease(disposed) end

System.Threading.IDeferredDisposable = m
return m
