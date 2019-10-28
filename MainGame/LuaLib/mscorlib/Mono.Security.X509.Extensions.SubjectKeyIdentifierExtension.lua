---@class Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension : Mono.Security.X509.X509Extension
---@field public Name string
---@field public Identifier string
local m = {}

---@virtual
---@return string
function m:ToString() end

Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension = m
return m
