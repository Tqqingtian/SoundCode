---@class System.Security.Cryptography.X509Certificates.X509Certificate : System.Object
---@field public Issuer string
---@field public Subject string
---@field public Handle System.IntPtr
local m = {}

---@static
---@param filename string
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function m.CreateFromCertFile(filename) end

---@static
---@param filename string
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function m.CreateFromSignedFile(filename) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other System.Security.Cryptography.X509Certificates.X509Certificate
---@return boolean
function m:Equals(other) end

---@virtual
---@return string
function m:GetCertHash() end

---@virtual
---@return string
function m:GetCertHashString() end

---@virtual
---@return string
function m:GetEffectiveDateString() end

---@virtual
---@return string
function m:GetExpirationDateString() end

---@virtual
---@return string
function m:GetFormat() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:GetIssuerName() end

---@virtual
---@return string
function m:GetKeyAlgorithm() end

---@virtual
---@return string
function m:GetKeyAlgorithmParameters() end

---@virtual
---@return string
function m:GetKeyAlgorithmParametersString() end

---@virtual
---@return string
function m:GetName() end

---@virtual
---@return string
function m:GetPublicKey() end

---@virtual
---@return string
function m:GetPublicKeyString() end

---@virtual
---@return string
function m:GetRawCertData() end

---@virtual
---@return string
function m:GetRawCertDataString() end

---@virtual
---@return string
function m:GetSerialNumber() end

---@virtual
---@return string
function m:GetSerialNumberString() end

---@overload fun(fVerbose:boolean): @virtual
---@virtual
---@return string
function m:ToString() end

---@overload fun(contentType:System.Security.Cryptography.X509Certificates.X509ContentType, password:string): @virtual
---@overload fun(contentType:System.Security.Cryptography.X509Certificates.X509ContentType, password:System.Security.SecureString): @virtual
---@virtual
---@param contentType System.Security.Cryptography.X509Certificates.X509ContentType
---@return string
function m:Export(contentType) end

---@overload fun(rawData:string, password:string, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags) @virtual
---@overload fun(rawData:string, password:System.Security.SecureString, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags) @virtual
---@overload fun(fileName:string) @virtual
---@overload fun(fileName:string, password:string, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags) @virtual
---@overload fun(fileName:string, password:System.Security.SecureString, keyStorageFlags:System.Security.Cryptography.X509Certificates.X509KeyStorageFlags) @virtual
---@virtual
---@param rawData string
function m:Import(rawData) end

---@virtual
function m:Dispose() end

---@virtual
function m:Reset() end

System.Security.Cryptography.X509Certificates.X509Certificate = m
return m
