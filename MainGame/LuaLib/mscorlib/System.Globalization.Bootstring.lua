---@class System.Globalization.Bootstring : System.Object
local m = {}

---@param s string
---@param offset number
---@return string
function m:Encode(s, offset) end

---@param s string
---@param offset number
---@return string
function m:Decode(s, offset) end

System.Globalization.Bootstring = m
return m
