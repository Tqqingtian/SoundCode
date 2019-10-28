---@class System.Security.Cryptography.RandomNumberGenerator : System.Object
local m = {}

---@overload fun(rngName:string): @static
---@static
---@return System.Security.Cryptography.RandomNumberGenerator
function m.Create() end

---@virtual
function m:Dispose() end

---@overload fun(data:string, offset:number, count:number) @virtual
---@abstract
---@param data string
function m:GetBytes(data) end

---@virtual
---@param data string
function m:GetNonZeroBytes(data) end

System.Security.Cryptography.RandomNumberGenerator = m
return m
