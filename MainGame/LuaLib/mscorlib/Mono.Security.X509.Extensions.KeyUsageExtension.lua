---@class Mono.Security.X509.Extensions.KeyUsageExtension : Mono.Security.X509.X509Extension
---@field public KeyUsage Mono.Security.X509.Extensions.KeyUsages
---@field public Name string
local m = {}

---@param usage Mono.Security.X509.Extensions.KeyUsages
---@return boolean
function m:Support(usage) end

---@virtual
---@return string
function m:ToString() end

Mono.Security.X509.Extensions.KeyUsageExtension = m
return m
