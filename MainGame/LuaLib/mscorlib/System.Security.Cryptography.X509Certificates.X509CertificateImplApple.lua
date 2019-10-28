---@class System.Security.Cryptography.X509Certificates.X509CertificateImplApple : System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@field public IsValid boolean
---@field public Handle System.IntPtr
---@field public FallbackImpl System.Security.Cryptography.X509Certificates.X509CertificateImpl
local m = {}

---@virtual
---@return System.IntPtr
function m:GetNativeAppleCertificate() end

---@virtual
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m:Clone() end

---@virtual
---@return string
function m:GetRawCertData() end

---@return string
function m:GetSubjectSummary() end

---@virtual
---@param other System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@return boolean, System.Boolean
function m:Equals(other) end

---@virtual
---@param legacyV1Mode boolean
---@return string
function m:GetSubjectName(legacyV1Mode) end

---@virtual
---@param legacyV1Mode boolean
---@return string
function m:GetIssuerName(legacyV1Mode) end

---@virtual
---@return System.DateTime
function m:GetValidFrom() end

---@virtual
---@return System.DateTime
function m:GetValidUntil() end

---@virtual
---@return string
function m:GetKeyAlgorithm() end

---@virtual
---@return string
function m:GetKeyAlgorithmParameters() end

---@virtual
---@return string
function m:GetPublicKey() end

---@virtual
---@return string
function m:GetSerialNumber() end

---@virtual
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@param password string
---@return string
function m:Export(contentType, password) end

---@virtual
---@param full boolean
---@return string
function m:ToString(full) end

System.Security.Cryptography.X509Certificates.X509CertificateImplApple = m
return m
