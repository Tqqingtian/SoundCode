---@class System.Diagnostics.SymbolStore.ISymbolWriter : table
local m = {}

---@abstract
function m:Close() end

---@abstract
function m:CloseMethod() end

---@abstract
function m:CloseNamespace() end

---@abstract
---@param endOffset number
function m:CloseScope(endOffset) end

---@abstract
---@param url string
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocumentWriter
function m:DefineDocument(url, language, languageVendor, documentType) end

---@abstract
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@param name string
---@param attributes System.Reflection.FieldAttributes
---@param signature string
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
function m:DefineField(parent, name, attributes, signature, addrKind, addr1, addr2, addr3) end

---@abstract
---@param name string
---@param attributes System.Reflection.FieldAttributes
---@param signature string
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
function m:DefineGlobalVariable(name, attributes, signature, addrKind, addr1, addr2, addr3) end

---@abstract
---@param name string
---@param attributes System.Reflection.FieldAttributes
---@param signature string
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
---@param startOffset number
---@param endOffset number
function m:DefineLocalVariable(name, attributes, signature, addrKind, addr1, addr2, addr3, startOffset, endOffset) end

---@abstract
---@param name string
---@param attributes System.Reflection.ParameterAttributes
---@param sequence number
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
function m:DefineParameter(name, attributes, sequence, addrKind, addr1, addr2, addr3) end

---@abstract
---@param document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param offsets number[]
---@param lines number[]
---@param columns number[]
---@param endLines number[]
---@param endColumns number[]
function m:DefineSequencePoints(document, offsets, lines, columns, endLines, endColumns) end

---@abstract
---@param emitter System.IntPtr
---@param filename string
---@param fFullBuild boolean
function m:Initialize(emitter, filename, fFullBuild) end

---@abstract
---@param method System.Diagnostics.SymbolStore.SymbolToken
function m:OpenMethod(method) end

---@abstract
---@param name string
function m:OpenNamespace(name) end

---@abstract
---@param startOffset number
---@return number
function m:OpenScope(startOffset) end

---@abstract
---@param startDoc System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param startLine number
---@param startColumn number
---@param endDoc System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param endLine number
---@param endColumn number
function m:SetMethodSourceRange(startDoc, startLine, startColumn, endDoc, endLine, endColumn) end

---@abstract
---@param scopeID number
---@param startOffset number
---@param endOffset number
function m:SetScopeRange(scopeID, startOffset, endOffset) end

---@abstract
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@param name string
---@param data string
function m:SetSymAttribute(parent, name, data) end

---@abstract
---@param underlyingWriter System.IntPtr
function m:SetUnderlyingWriter(underlyingWriter) end

---@abstract
---@param entryMethod System.Diagnostics.SymbolStore.SymbolToken
function m:SetUserEntryPoint(entryMethod) end

---@abstract
---@param fullName string
function m:UsingNamespace(fullName) end

System.Diagnostics.SymbolStore.ISymbolWriter = m
return m
