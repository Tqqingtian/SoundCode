---@class System.Security.Cryptography.ICspAsymmetricAlgorithm : table
---@field public CspKeyContainerInfo System.Security.Cryptography.CspKeyContainerInfo
local m = {}

---@abstract
---@param includePrivateParameters boolean
---@return string
function m:ExportCspBlob(includePrivateParameters) end

---@abstract
---@param rawData string
function m:ImportCspBlob(rawData) end

System.Security.Cryptography.ICspAsymmetricAlgorithm = m
return m
