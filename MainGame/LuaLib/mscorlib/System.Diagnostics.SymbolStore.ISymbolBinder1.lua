---@class System.Diagnostics.SymbolStore.ISymbolBinder1 : table
local m = {}

---@abstract
---@param importer System.IntPtr
---@param filename string
---@param searchPath string
---@return System.Diagnostics.SymbolStore.ISymbolReader
function m:GetReader(importer, filename, searchPath) end

System.Diagnostics.SymbolStore.ISymbolBinder1 = m
return m
