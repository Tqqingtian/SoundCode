---@class Mono.Security.X509.PKCS12.DeriveBytes : System.Object
---@field public HashName string
---@field public IterationCount number
---@field public Password string
---@field public Salt string
local m = {}

---@param size number
---@return string
function m:DeriveKey(size) end

---@param size number
---@return string
function m:DeriveIV(size) end

---@param size number
---@return string
function m:DeriveMAC(size) end

Mono.Security.X509.PKCS12.DeriveBytes = m
return m
