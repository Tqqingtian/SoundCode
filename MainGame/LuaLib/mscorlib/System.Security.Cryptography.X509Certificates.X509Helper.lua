---@class System.Security.Cryptography.X509Certificates.X509Helper : System.Object
local m = {}

---@static
---@param handle System.IntPtr
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m.InitFromHandleApple(handle) end

---@static
---@param handle System.IntPtr
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m.InitFromHandle(handle) end

---@static
---@param handle System.IntPtr
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m.InitFromHandleCore(handle) end

---@overload fun(impl:System.Security.Cryptography.X509Certificates.X509CertificateImpl): @static
---@static
---@param cert System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m.InitFromCertificate(cert) end

---@static
---@param impl System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@return boolean
function m.IsValid(impl) end

---@static
---@param rawData string
---@param password string
---@param keyStorageFlags System.Security.Cryptography.X509Certificates.X509KeyStorageFlags
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m.Import(rawData, password, keyStorageFlags) end

---@static
---@param impl System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@param password string
---@return string
function m.Export(impl, contentType, password) end

---@static
---@param first System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@param second System.Security.Cryptography.X509Certificates.X509CertificateImpl
---@return boolean
function m.Equals(first, second) end

---@static
---@param data string
---@return string
function m.ToHexString(data) end

System.Security.Cryptography.X509Certificates.X509Helper = m
return m
