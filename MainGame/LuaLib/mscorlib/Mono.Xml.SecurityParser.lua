---@class Mono.Xml.SecurityParser : Mono.Xml.SmallXmlParser
local m = {}

---@param xml string
function m:LoadXml(xml) end

---@return System.Security.SecurityElement
function m:ToXml() end

---@virtual
---@param parser Mono.Xml.SmallXmlParser
function m:OnStartParsing(parser) end

---@virtual
---@param name string
---@param text string
function m:OnProcessingInstruction(name, text) end

---@virtual
---@param s string
function m:OnIgnorableWhitespace(s) end

---@virtual
---@param name string
---@param attrs Mono.Xml.SmallXmlParser.IAttrList
function m:OnStartElement(name, attrs) end

---@virtual
---@param name string
function m:OnEndElement(name) end

---@virtual
---@param ch string
function m:OnChars(ch) end

---@virtual
---@param parser Mono.Xml.SmallXmlParser
function m:OnEndParsing(parser) end

Mono.Xml.SecurityParser = m
return m
