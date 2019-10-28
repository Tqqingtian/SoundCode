---@class System.Nullable : System.Object
local m = {}

---@static
---@param n1 System.ValueType
---@param n2 System.ValueType
---@return number
function m.Compare(n1, n2) end

---@static
---@param n1 System.ValueType
---@param n2 System.ValueType
---@return boolean
function m.Equals(n1, n2) end

---@static
---@param nullableType System.Type
---@return System.Type
function m.GetUnderlyingType(nullableType) end

System.Nullable = m
return m
