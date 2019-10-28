---@class System.Threading.IAsyncLocal : table
local m = {}

---@abstract
---@param previousValue any
---@param currentValue any
---@param contextChanged boolean
function m:OnValueChanged(previousValue, currentValue, contextChanged) end

System.Threading.IAsyncLocal = m
return m
