---@class System.Attribute : System.Object
---@field public TypeId any
local m = {}

---@overload fun(element:System.Reflection.MemberInfo, type:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.MemberInfo): @static
---@overload fun(element:System.Reflection.MemberInfo, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, inherit:boolean): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Module): @static
---@overload fun(element:System.Reflection.Module, inherit:boolean): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.Assembly): @static
---@overload fun(element:System.Reflection.Assembly, inherit:boolean): @static
---@static
---@param element System.Reflection.MemberInfo
---@param type System.Type
---@return System.Attribute[]
function m.GetCustomAttributes(element, type) end

---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:boolean): @static
---@static
---@param element System.Reflection.MemberInfo
---@param attributeType System.Type
---@return boolean
function m.IsDefined(element, attributeType) end

---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type, inherit:boolean): @static
---@static
---@param element System.Reflection.MemberInfo
---@param attributeType System.Type
---@return System.Attribute
function m.GetCustomAttribute(element, attributeType) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param obj any
---@return boolean
function m:Match(obj) end

---@virtual
---@return boolean
function m:IsDefaultAttribute() end

System.Attribute = m
return m
