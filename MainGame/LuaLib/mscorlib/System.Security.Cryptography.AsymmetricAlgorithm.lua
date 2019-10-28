---@class System.Security.Cryptography.AsymmetricAlgorithm : System.Object
---@field public KeySize number
---@field public LegalKeySizes System.Security.Cryptography.KeySizes[]
---@field public SignatureAlgorithm string
---@field public KeyExchangeAlgorithm string
local m = {}

---@virtual
function m:Dispose() end

function m:Clear() end

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.AsymmetricAlgorithm
function m.Create() end

---@virtual
---@param xmlString string
function m:FromXmlString(xmlString) end

---@virtual
---@param includePrivateParameters boolean
---@return string
function m:ToXmlString(includePrivateParameters) end

System.Security.Cryptography.AsymmetricAlgorithm = m
return m
