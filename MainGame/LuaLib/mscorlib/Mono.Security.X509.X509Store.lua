---@class Mono.Security.X509.X509Store : System.Object
---@field public Certificates Mono.Security.X509.X509CertificateCollection
---@field public Crls System.Collections.ArrayList
---@field public Name string
local m = {}

function m:Clear() end

---@overload fun(crl:Mono.Security.X509.X509Crl)
---@param certificate Mono.Security.X509.X509Certificate
function m:Import(certificate) end

---@overload fun(crl:Mono.Security.X509.X509Crl)
---@param certificate Mono.Security.X509.X509Certificate
function m:Remove(certificate) end

Mono.Security.X509.X509Store = m
return m
