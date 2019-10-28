---@class System.Security.Cryptography.CryptoStream.HopToThreadPoolAwaitable : System.ValueType
---@field public IsCompleted boolean
local m = {}

---@return System.Security.Cryptography.CryptoStream.HopToThreadPoolAwaitable
function m:GetAwaiter() end

---@virtual
---@param continuation fun()
function m:OnCompleted(continuation) end

function m:GetResult() end

System.Security.Cryptography.CryptoStream.HopToThreadPoolAwaitable = m
return m
