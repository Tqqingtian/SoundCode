---@class System.Security.Cryptography.DeriveBytes : System.Object
local m = {}

---@abstract
---@param cb number
---@return string
function m:GetBytes(cb) end

---@abstract
function m:Reset() end

---@virtual
function m:Dispose() end

System.Security.Cryptography.DeriveBytes = m
return m
