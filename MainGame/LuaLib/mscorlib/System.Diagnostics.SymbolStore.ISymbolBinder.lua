---@class System.Diagnostics.SymbolStore.ISymbolBinder : table
local m = {}

---@abstract
---@param importer number
---@param filename string
---@param searchPath string
---@return System.Diagnostics.SymbolStore.ISymbolReader
function m:GetReader(importer, filename, searchPath) end

System.Diagnostics.SymbolStore.ISymbolBinder = m
return m
