---@class System.Runtime.CompilerServices.YieldAwaitable : System.ValueType
local m = {}

---@return System.Runtime.CompilerServices.YieldAwaitable.YieldAwaiter
function m:GetAwaiter() end

System.Runtime.CompilerServices.YieldAwaitable = m
return m
