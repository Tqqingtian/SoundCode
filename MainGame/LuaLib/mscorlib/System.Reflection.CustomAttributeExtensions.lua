---@class System.Reflection.CustomAttributeExtensions : System.Object
local m = {}

---@overload fun(element:System.Reflection.Module, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Assembly): @static
---@overload fun(element:System.Reflection.Module): @static
---@overload fun(element:System.Reflection.MemberInfo): @static
---@overload fun(element:System.Reflection.ParameterInfo): @static
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.MemberInfo, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, inherit:boolean): @static
---@static
---@param element System.Reflection.Assembly
---@param attributeType System.Type
---@return System.Attribute
function m.GetCustomAttribute(element, attributeType) end

---@overload fun(element:System.Reflection.Module): @static
---@overload fun(element:System.Reflection.MemberInfo): @static
---@overload fun(element:System.Reflection.ParameterInfo): @static
---@overload fun(element:System.Reflection.MemberInfo, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, inherit:boolean): @static
---@overload fun(element:System.Reflection.Assembly, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Module, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.Assembly): @static
---@overload fun(element:System.Reflection.Module): @static
---@overload fun(element:System.Reflection.MemberInfo): @static
---@overload fun(element:System.Reflection.ParameterInfo): @static
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.MemberInfo, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, inherit:boolean): @static
---@static
---@param element System.Reflection.Assembly
---@return System.Collections.Generic.IEnumerable_1_System_Attribute_
function m.GetCustomAttributes(element) end

---@overload fun(element:System.Reflection.Module, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type): @static
---@overload fun(element:System.Reflection.MemberInfo, attributeType:System.Type, inherit:boolean): @static
---@overload fun(element:System.Reflection.ParameterInfo, attributeType:System.Type, inherit:boolean): @static
---@static
---@param element System.Reflection.Assembly
---@param attributeType System.Type
---@return boolean
function m.IsDefined(element, attributeType) end

System.Reflection.CustomAttributeExtensions = m
return m
