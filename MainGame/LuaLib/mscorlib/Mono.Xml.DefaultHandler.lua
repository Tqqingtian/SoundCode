---@class Mono.Xml.DefaultHandler : System.Object
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
---@param s string
function m:OnChars(s) end

---@virtual
---@param s string
function m:OnIgnorableWhitespace(s) end

---@virtual
---@param name string
---@param text string
function m:OnProcessingInstruction(name, text) end

Mono.Xml.DefaultHandler = m
return m
