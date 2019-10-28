---@class System.Reflection.ICustomAttributeProvider : table
local m = {}

---@overload fun(inherit:boolean): @abstract
---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(attributeType, inherit) end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

System.Reflection.ICustomAttributeProvider = m
return m
