---@class System.Globalization.TextElementEnumerator : System.Object
---@field public Current any
---@field public ElementIndex number
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@return string
function m:GetTextElement() end

---@virtual
function m:Reset() end

System.Globalization.TextElementEnumerator = m
return m
