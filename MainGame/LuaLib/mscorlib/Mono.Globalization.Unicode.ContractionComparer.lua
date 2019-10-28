---@class Mono.Globalization.Unicode.ContractionComparer : System.Object
---@field public Instance Mono.Globalization.Unicode.ContractionComparer @static
local m = {}

---@virtual
---@param c1 Mono.Globalization.Unicode.Contraction
---@param c2 Mono.Globalization.Unicode.Contraction
---@return number
function m:Compare(c1, c2) end

Mono.Globalization.Unicode.ContractionComparer = m
return m
