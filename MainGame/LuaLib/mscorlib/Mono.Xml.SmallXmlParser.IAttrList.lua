---@class Mono.Xml.SmallXmlParser.IAttrList : table
---@field public Length number
---@field public IsEmpty boolean
---@field public Names string[]
---@field public Values string[]
local m = {}

---@abstract
---@param i number
---@return string
function m:GetName(i) end

---@overload fun(name:string): @abstract
---@abstract
---@param i number
---@return string
function m:GetValue(i) end

Mono.Xml.SmallXmlParser.IAttrList = m
return m
