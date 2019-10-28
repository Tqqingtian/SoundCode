---@class System.ValueTuple : System.ValueType
local m = {}

---@overload fun(other:System.ValueTuple): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@param other System.ValueTuple
---@return number
function m:CompareTo(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

---@overload fun(item1:any): @static
---@overload fun(item1:any, item2:any): @static
---@overload fun(item1:any, item2:any, item3:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any): @static
---@overload fun(item1:any, item2:any, item3:any, item4:any, item5:any, item6:any, item7:any, item8:any): @static
---@static
---@return System.ValueTuple
function m.Create() end

System.ValueTuple = m
return m
