---@class System.Security.Cryptography.X509Certificates.X509CertificateImpl : System.Object
---@field public IsValid boolean
---@field public Handle System.IntPtr
local m = {}

---@abstract
---@return System.IntPtr
function m:GetNativeAppleCertificate() end

---@abstract
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m:Clone() end

---@abstract
---@param legacyV1Mode boolean
---@return string
function m:GetIssuerName(legacyV1Mode) end

---@abstract
---@param legacyV1Mode boolean
---@return string
function m:GetSubjectName(legacyV1Mode) end

---@abstract
---@return string
function m:GetRawCertData() end

---@abstract
---@return System.DateTime
function m:GetValidFrom() end

---@abstract
---@return System.DateTime
function m:GetValidUntil() end

---@return string
function m:GetCertHash() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:any): @virtual
---@abstract
---@param other System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@return boolean, System.Boolean
function m:Equals(other) end

---@abstract
---@return string
function m:GetKeyAlgorithm() end

---@abstract
---@return string
function m:GetKeyAlgorithmParameters() end

---@abstract
---@return string
function m:GetPublicKey() end

---@abstract
---@return string
function m:GetSerialNumber() end

---@abstract
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@param password string
---@return string
function m:Export(contentType, password) end

---@abstract
---@param full boolean
---@return string
function m:ToString(full) end

---@virtual
function m:Dispose() end

System.Security.Cryptography.X509Certificates.X509CertificateImpl = m
return m
