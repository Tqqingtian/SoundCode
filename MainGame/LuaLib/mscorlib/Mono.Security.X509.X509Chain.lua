---@class Mono.Security.X509.X509Chain : System.Object
---@field public Chain Mono.Security.X509.X509CertificateCollection
---@field public Root Mono.Security.X509.X509Certificate
---@field public Status Mono.Security.X509.X509ChainStatusFlags
---@field public TrustAnchors Mono.Security.X509.X509CertificateCollection
local m = {}

---@param x509 Mono.Security.X509.X509Certificate
function m:LoadCertificate(x509) end

---@param collection Mono.Security.X509.X509CertificateCollection
function m:LoadCertificates(collection) end

---@param issuerName string
---@return Mono.Security.X509.X509Certificate
function m:FindByIssuerName(issuerName) end

---@param leaf Mono.Security.X509.X509Certificate
---@return boolean
function m:Build(leaf) end

function m:Reset() end

Mono.Security.X509.X509Chain = m
return m
