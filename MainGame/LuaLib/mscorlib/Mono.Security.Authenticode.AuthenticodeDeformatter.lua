---@class Mono.Security.Authenticode.AuthenticodeDeformatter : Mono.Security.Authenticode.AuthenticodeBase
---@field public FileName string
---@field public Hash string
---@field public Reason number
---@field public Signature string
---@field public Timestamp System.DateTime
---@field public Certificates Mono.Security.X509.X509CertificateCollection
---@field public SigningCertificate Mono.Security.X509.X509Certificate
local m = {}

---@return boolean
function m:IsTrusted() end

Mono.Security.Authenticode.AuthenticodeDeformatter = m
return m
