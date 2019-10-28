---@class System.Tuple : System.Object
local m = {}

---@overload fun(item1:any, item2:any): @static
---@overload fun(item1:any, item2:any, item3:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any, item8:any): @static
---@static
---@param item1 any
---@return any
function m.Create(item1) end

System.Tuple = m
return m
