---@class Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator : System.Object
---@field public Current Mono.Security.X509.X509Certificate
local m = {}

---@return boolean
function m:MoveNext() end

function m:Reset() end

Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator = m
return m
