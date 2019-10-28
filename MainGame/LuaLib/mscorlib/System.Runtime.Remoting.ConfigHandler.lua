---@class System.Runtime.Remoting.ConfigHandler : System.Object
local m = {}

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

---@param name string
---@param attrs Mono.Xml.SmallXmlParser.IAttrList
function m:ParseElement(name, attrs) end

---@virtual
---@param name string
function m:OnEndElement(name) end

---@virtual
---@param ch string
function m:OnChars(ch) end

---@virtual
---@param parser Mono.Xml.SmallXmlParser
function m:OnEndParsing(parser) end

System.Runtime.Remoting.ConfigHandler = m
return m
