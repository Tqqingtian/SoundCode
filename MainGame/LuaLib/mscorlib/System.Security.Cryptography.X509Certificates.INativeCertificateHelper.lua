---@class System.Security.Cryptography.X509Certificates.INativeCertificateHelper : table
local m = {}

---@overload fun(cert:System.Security.Cryptography.X509Certificates.X509Certificate): @abstract
---@abstract
---@param data string
---@param password string
---@param flags System.Security.Cryptography.X509Certificates.X509KeyStorageFlags
---@return System.Security.Cryptography.X509Certificates.X509CertificateImpl
function m:Import(data, password, flags) end

System.Security.Cryptography.X509Certificates.INativeCertificateHelper = m
return m
