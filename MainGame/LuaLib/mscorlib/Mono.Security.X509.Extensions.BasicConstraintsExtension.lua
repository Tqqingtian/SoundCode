---@class Mono.Security.X509.Extensions.BasicConstraintsExtension : Mono.Security.X509.X509Extension
---@field public NoPathLengthConstraint number @static
---@field public CertificateAuthority boolean
---@field public Name string
---@field public PathLenConstraint number
local m = {}

---@virtual
---@return string
function m:ToString() end

Mono.Security.X509.Extensions.BasicConstraintsExtension = m
return m
