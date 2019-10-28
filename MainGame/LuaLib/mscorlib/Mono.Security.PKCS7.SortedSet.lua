---@class Mono.Security.PKCS7.SortedSet : System.Object
local m = {}

---@virtual
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

Mono.Security.PKCS7.SortedSet = m
return m
