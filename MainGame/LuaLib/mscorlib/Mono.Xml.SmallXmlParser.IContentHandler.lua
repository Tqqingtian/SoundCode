---@class Mono.Xml.SmallXmlParser.IContentHandler : table
local m = {}

---@abstract
---@param parser Mono.Xml.SmallXmlParser
function m:OnStartParsing(parser) end

---@abstract
---@param parser Mono.Xml.SmallXmlParser
function m:OnEndParsing(parser) end

---@abstract
---@param name string
---@param attrs Mono.Xml.SmallXmlParser.IAttrList
function m:OnStartElement(name, attrs) end

---@abstract
---@param name string
function m:OnEndElement(name) end

---@abstract
---@param name string
---@param text string
function m:OnProcessingInstruction(name, text) end

---@abstract
---@param text string
function m:OnChars(text) end

---@abstract
---@param text string
function m:OnIgnorableWhitespace(text) end

Mono.Xml.SmallXmlParser.IContentHandler = m
return m
