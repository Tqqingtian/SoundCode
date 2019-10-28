---@class Tutorial.DerivedClass.InnerCalc : System.Object
---@field public id number
local m = {}

---@virtual
---@param a number
---@param b number
---@return number
function m:add(a, b) end

Tutorial.DerivedClass.InnerCalc = m
return m
