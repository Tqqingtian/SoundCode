---@class Mono.Xml.SmallXmlParser.AttrListImpl : System.Object
---@field public Length number
---@field public IsEmpty boolean
---@field public Names string[]
---@field public Values string[]
local m = {}

---@virtual
---@param i number
---@return string
function m:GetName(i) end

---@overload fun(name:string): @virtual
---@virtual
---@param i number
---@return string
function m:GetValue(i) end

Mono.Xml.SmallXmlParser.AttrListImpl = m
return m
