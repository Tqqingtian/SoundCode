---@class Mono.Security.X509.X509Certificate : System.Object
---@field public DSA System.Security.Cryptography.DSA
---@field public Extensions Mono.Security.X509.X509ExtensionCollection
---@field public Hash string
---@field public IssuerName string
---@field public KeyAlgorithm string
---@field public KeyAlgorithmParameters string
---@field public PublicKey string
---@field public RSA System.Security.Cryptography.RSA
---@field public RawData string
---@field public SerialNumber string
---@field public Signature string
---@field public SignatureAlgorithm string
---@field public SignatureAlgorithmParameters string
---@field public SubjectName string
---@field public ValidFrom System.DateTime
---@field public ValidUntil System.DateTime
---@field public Version number
---@field public IsCurrent boolean
---@field public IssuerUniqueIdentifier string
---@field public SubjectUniqueIdentifier string
---@field public IsSelfSigned boolean
local m = {}

---@param instant System.DateTime
---@return boolean
function m:WasCurrent(instant) end

---@param aa System.Security.Cryptography.AsymmetricAlgorithm
---@return boolean
function m:VerifySignature(aa) end

---@param hash string
---@param hashAlgorithm string
---@param signature string
---@return boolean
function m:CheckSignature(hash, hashAlgorithm, signature) end

---@return Mono.Security.ASN1
function m:GetIssuerName() end

---@return Mono.Security.ASN1
function m:GetSubjectName() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

Mono.Security.X509.X509Certificate = m
return m
