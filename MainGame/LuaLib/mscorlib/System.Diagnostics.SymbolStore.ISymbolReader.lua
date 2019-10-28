---@class System.Diagnostics.SymbolStore.ISymbolReader : table
---@field public UserEntryPoint System.Diagnostics.SymbolStore.SymbolToken
local m = {}

---@abstract
---@param url string
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocument
function m:GetDocument(url, language, languageVendor, documentType) end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolDocument[]
function m:GetDocuments() end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function m:GetGlobalVariables() end

---@overload fun(method:System.Diagnostics.SymbolStore.SymbolToken, version:number): @abstract
---@abstract
---@param method System.Diagnostics.SymbolStore.SymbolToken
---@return System.Diagnostics.SymbolStore.ISymbolMethod
function m:GetMethod(method) end

---@abstract
---@param document System.Diagnostics.SymbolStore.ISymbolDocument
---@param line number
---@param column number
---@return System.Diagnostics.SymbolStore.ISymbolMethod
function m:GetMethodFromDocumentPosition(document, line, column) end

---@abstract
---@return System.Diagnostics.SymbolStore.ISymbolNamespace[]
function m:GetNamespaces() end

---@abstract
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@param name string
---@return string
function m:GetSymAttribute(parent, name) end

---@abstract
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function m:GetVariables(parent) end

System.Diagnostics.SymbolStore.ISymbolReader = m
return m
