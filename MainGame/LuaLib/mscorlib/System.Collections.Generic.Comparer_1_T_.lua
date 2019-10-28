---@class System.Collections.Generic.Comparer_1_T_ : System.Object
---@field public Default System.Collections.Generic.Comparer_1_T_ @static
local m = {}

---@static
---@param comparison fun(x:any, y:any):
---@return System.Collections.Generic.Comparer_1_T_
function m.Create(comparison) end

---@abstract
---@param x any
---@param y any
---@return number
function m:Compare(x, y) end

System.Collections.Generic.Comparer_1_T_ = m
return m
