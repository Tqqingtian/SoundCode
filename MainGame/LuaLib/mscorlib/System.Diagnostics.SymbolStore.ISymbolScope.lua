---@class System.Diagnostics.SymbolStore.ISymbolScope : table
---@field public EndOffset number
---@field public Method System.Diagnostics.SymbolStore.ISymbolMethod
---@field public Parent System.Diagnostics.SymbolStore.ISymbolScope
---@field public StartOffset number
local m = {}

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolScope[]
function m:GetChildren() end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function m:GetLocals() end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolNamespace[]
function m:GetNamespaces() end

System.Diagnostics.SymbolStore.ISymbolScope = m
return m
