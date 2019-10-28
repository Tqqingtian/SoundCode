---@class System.Diagnostics.SymbolStore.ISymbolNamespace : table
---@field public Name string
local m = {}

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolNamespace[]
function m:GetNamespaces() end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function m:GetVariables() end

System.Diagnostics.SymbolStore.ISymbolNamespace = m
return m
