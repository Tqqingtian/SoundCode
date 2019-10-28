---@class Mono.Security.X509.PKCS12 : System.Object
---@field public pbeWithSHAAnd128BitRC4 string @static
---@field public pbeWithSHAAnd40BitRC4 string @static
---@field public pbeWithSHAAnd3KeyTripleDESCBC string @static
---@field public pbeWithSHAAnd2KeyTripleDESCBC string @static
---@field public pbeWithSHAAnd128BitRC2CBC string @static
---@field public pbeWithSHAAnd40BitRC2CBC string @static
---@field public keyBag string @static
---@field public pkcs8ShroudedKeyBag string @static
---@field public certBag string @static
---@field public crlBag string @static
---@field public secretBag string @static
---@field public safeContentsBag string @static
---@field public x509Certificate string @static
---@field public sdsiCertificate string @static
---@field public x509Crl string @static
---@field public CryptoApiPasswordLimit number @static
---@field public MaximumPasswordLength number @static
---@field public Password string
---@field public IterationCount number
---@field public Keys System.Collections.ArrayList
---@field public Secrets System.Collections.ArrayList
---@field public Certificates Mono.Security.X509.X509CertificateCollection
local m = {}

---@overload fun(ed:Mono.Security.PKCS7.EncryptedData):
---@param algorithmOid string
---@param salt string
---@param iterationCount number
---@param encryptedData string
---@return string
function m:Decrypt(algorithmOid, salt, iterationCount, encryptedData) end

---@param algorithmOid string
---@param salt string
---@param iterationCount number
---@param data string
---@return string
function m:Encrypt(algorithmOid, salt, iterationCount, data) end

---@return string
function m:GetBytes() end

---@overload fun(cert:Mono.Security.X509.X509Certificate, attributes:System.Collections.IDictionary)
---@param cert Mono.Security.X509.X509Certificate
function m:AddCertificate(cert) end

---@overload fun(cert:Mono.Security.X509.X509Certificate, attrs:System.Collections.IDictionary)
---@param cert Mono.Security.X509.X509Certificate
function m:RemoveCertificate(cert) end

---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm, attributes:System.Collections.IDictionary)
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
function m:AddPkcs8ShroudedKeyBag(aa) end

---@param aa System.Security.Cryptography.AsymmetricAlgorithm
function m:RemovePkcs8ShroudedKeyBag(aa) end

---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm, attributes:System.Collections.IDictionary)
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
function m:AddKeyBag(aa) end

---@param aa System.Security.Cryptography.AsymmetricAlgorithm
function m:RemoveKeyBag(aa) end

---@overload fun(secret:string, attributes:System.Collections.IDictionary)
---@param secret string
function m:AddSecretBag(secret) end

---@param secret string
function m:RemoveSecretBag(secret) end

---@param attrs System.Collections.IDictionary
---@return System.Security.Cryptography.AsymmetricAlgorithm
function m:GetAsymmetricAlgorithm(attrs) end

---@param attrs System.Collections.IDictionary
---@return string
function m:GetSecret(attrs) end

---@param attrs System.Collections.IDictionary
---@return Mono.Security.X509.X509Certificate
function m:GetCertificate(attrs) end

---@overload fun(cert:Mono.Security.X509.X509Certificate):
---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return System.Collections.IDictionary
function m:GetAttributes(aa) end

---@param filename string
function m:SaveToFile(filename) end

---@virtual
---@return any
function m:Clone() end

---@overload fun(filename:string, password:string): @static
---@static
---@param filename string
---@return Mono.Security.X509.PKCS12
function m.LoadFromFile(filename) end

Mono.Security.X509.PKCS12 = m
return m
