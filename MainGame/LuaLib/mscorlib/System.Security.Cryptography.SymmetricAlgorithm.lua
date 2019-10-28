---@class System.Security.Cryptography.SymmetricAlgorithm : System.Object
---@field public BlockSize number
---@field public FeedbackSize number
---@field public IV string
---@field public Key string
---@field public LegalBlockSizes System.Security.Cryptography.KeySizes[]
---@field public LegalKeySizes System.Security.Cryptography.KeySizes[]
---@field public KeySize number
---@field public Mode System.Security.Cryptography.CipherMode
---@field public Padding System.Security.Cryptography.PaddingMode
local m = {}

---@virtual
function m:Dispose() end

function m:Clear() end

---@param bitLength number
---@return boolean
function m:ValidKeySize(bitLength) end

---@overload fun(algName:string): @static
---@static
---@return System.Security.Cryptography.SymmetricAlgorithm
function m.Create() end

---@overload fun(rgbKey:string, rgbIV:string): @abstract
---@virtual
---@return System.Security.Cryptography.ICryptoTransform
function m:CreateEncryptor() end

---@overload fun(rgbKey:string, rgbIV:string): @abstract
---@virtual
---@return System.Security.Cryptography.ICryptoTransform
function m:CreateDecryptor() end

---@abstract
function m:GenerateKey() end

---@abstract
function m:GenerateIV() end

System.Security.Cryptography.SymmetricAlgorithm = m
return m
