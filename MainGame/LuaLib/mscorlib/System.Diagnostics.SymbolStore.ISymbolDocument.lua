---@class System.Diagnostics.SymbolStore.ISymbolDocument : table
---@field public CheckSumAlgorithmId System.Guid
---@field public DocumentType System.Guid
---@field public HasEmbeddedSource boolean
---@field public Language System.Guid
---@field public LanguageVendor System.Guid
---@field public SourceLength number
---@field public URL string
local m = {}

---@abstract
---@param line number
---@return number
function m:FindClosestLine(line) end

---@abstract
---@return string
function m:GetCheckSum() end

---@abstract
---@param startLine number
---@param startColumn number
---@param endLine number
---@param endColumn number
---@return string
function m:GetSourceRange(startLine, startColumn, endLine, endColumn) end

System.Diagnostics.SymbolStore.ISymbolDocument = m
return m
