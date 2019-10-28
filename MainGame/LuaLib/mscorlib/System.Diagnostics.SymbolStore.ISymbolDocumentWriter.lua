---@class System.Diagnostics.SymbolStore.ISymbolDocumentWriter : table
local m = {}

---@abstract
---@param algorithmId System.Guid
---@param checkSum string
function m:SetCheckSum(algorithmId, checkSum) end

---@abstract
---@param source string
function m:SetSource(source) end

System.Diagnostics.SymbolStore.ISymbolDocumentWriter = m
return m
