---@class System.Security.Cryptography.CryptoConfig.CryptoHandler : System.Object
local m = {}

---@virtual
---@param parser Mono.Xml.SmallXmlParser
function m:OnStartParsing(parser) end

---@virtual
---@param parser Mono.Xml.SmallXmlParser
function m:OnEndParsing(parser) end

---@virtual
---@param name string
---@param attrs Mono.Xml.SmallXmlParser.IAttrList
function m:OnStartElement(name, attrs) end

---@virtual
---@param name string
function m:OnEndElement(name) end

---@virtual
---@param name string
---@param text string
function m:OnProcessingInstruction(name, text) end

---@virtual
---@param text string
function m:OnChars(text) end

---@virtual
---@param text string
function m:OnIgnorableWhitespace(text) end

System.Security.Cryptography.CryptoConfig.CryptoHandler = m
return m
