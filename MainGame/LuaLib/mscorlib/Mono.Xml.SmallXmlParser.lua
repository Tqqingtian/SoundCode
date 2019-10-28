---@class Mono.Xml.SmallXmlParser : System.Object
local m = {}

---@overload fun(expected:boolean)
function m:SkipWhitespaces() end

---@param c number
function m:Expect(c) end

---@return string
function m:ReadName() end

---@param input System.IO.TextReader
---@param handler Mono.Xml.SmallXmlParser.IContentHandler
function m:Parse(input, handler) end

function m:ReadContent() end

Mono.Xml.SmallXmlParser = m
return m
