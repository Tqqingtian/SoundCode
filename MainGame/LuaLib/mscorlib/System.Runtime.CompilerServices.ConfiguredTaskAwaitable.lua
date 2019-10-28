---@class System.Runtime.CompilerServices.ConfiguredTaskAwaitable : System.ValueType
local m = {}

---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable.ConfiguredTaskAwaiter
function m:GetAwaiter() end

System.Runtime.CompilerServices.ConfiguredTaskAwaitable = m
return m
