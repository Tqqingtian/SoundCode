---@class System.Diagnostics.SymbolStore.ISymbolMethod : table
---@field public RootScope System.Diagnostics.SymbolStore.ISymbolScope
---@field public SequencePointCount number
---@field public Token System.Diagnostics.SymbolStore.SymbolToken
local m = {}

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolNamespace
function m:GetNamespace() end

---@abstract
---@param document System.Diagnostics.SymbolStore.ISymbolDocument
---@param line number
---@param column number
---@return number
function m:GetOffset(document, line, column) end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function m:GetParameters() end

---@abstract
---@param document System.Diagnostics.SymbolStore.ISymbolDocument
---@param line number
---@param column number
---@return number[]
function m:GetRanges(document, line, column) end

---@abstract
---@param offset number
---@return System.Diagnostics.SymbolStore.ISymbolScope
function m:GetScope(offset) end

---@abstract
---@param offsets number[]
---@param documents System.Diagnostics.SymbolStore.ISymbolDocument[]
---@param lines number[]
---@param columns number[]
---@param endLines number[]
---@param endColumns number[]
function m:GetSequencePoints(offsets, documents, lines, columns, endLines, endColumns) end

---@abstract
---@param docs System.Diagnostics.SymbolStore.ISymbolDocument[]
---@param lines number[]
---@param columns number[]
---@return boolean
function m:GetSourceStartEnd(docs, lines, columns) end

System.Diagnostics.SymbolStore.ISymbolMethod = m
return m
