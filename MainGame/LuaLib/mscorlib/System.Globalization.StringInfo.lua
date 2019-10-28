---@class System.Globalization.StringInfo : System.Object
---@field public String string
---@field public LengthInTextElements number
local m = {}

---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(startingTextElement:number, lengthInTextElements:number):
---@param startingTextElement number
---@return string
function m:SubstringByTextElements(startingTextElement) end

---@overload fun(str:string, index:number): @static
---@static
---@param str string
---@return string
function m.GetNextTextElement(str) end

---@overload fun(str:string, index:number): @static
---@static
---@param str string
---@return System.Globalization.TextElementEnumerator
function m.GetTextElementEnumerator(str) end

---@static
---@param str string
---@return number[]
function m.ParseCombiningCharacters(str) end

System.Globalization.StringInfo = m
return m
