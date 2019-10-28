---@class Mono.Security.X509.X509Crl : System.Object
---@field public Entries System.Collections.ArrayList
---@field public Item Mono.Security.X509.X509Crl.X509CrlEntry
---@field public Item Mono.Security.X509.X509Crl.X509CrlEntry
---@field public Extensions Mono.Security.X509.X509ExtensionCollection
---@field public Hash string
---@field public IssuerName string
---@field public NextUpdate System.DateTime
---@field public ThisUpdate System.DateTime
---@field public SignatureAlgorithm string
---@field public Signature string
---@field public RawData string
---@field public Version number
---@field public IsCurrent boolean
local m = {}

---@param instant System.DateTime
---@return boolean
function m:WasCurrent(instant) end

---@return string
function m:GetBytes() end

---@overload fun(serialNumber:string):
---@param x509 Mono.Security.X509.X509Certificate
---@return Mono.Security.X509.X509Crl.X509CrlEntry
function m:GetCrlEntry(x509) end

---@overload fun(aa:System.Security.Cryptography.AsymmetricAlgorithm):
---@param x509 Mono.Security.X509.X509Certificate
---@return boolean
function m:VerifySignature(x509) end

---@static
---@param filename string
---@return Mono.Security.X509.X509Crl
function m.CreateFromFile(filename) end

Mono.Security.X509.X509Crl = m
return m
