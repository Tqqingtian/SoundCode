---@class System.Reflection.Binder : System.Object
local m = {}

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.MethodBase[]
---@param args System.Object__
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param names string[]
---@return System.Reflection.MethodBase, System.Object__, System.Object
function m:BindToMethod(bindingAttr, match, args, modifiers, culture, names) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.FieldInfo[]
---@param value any
---@param culture System.Globalization.CultureInfo
---@return System.Reflection.FieldInfo
function m:BindToField(bindingAttr, match, value, culture) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.MethodBase[]
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodBase
function m:SelectMethod(bindingAttr, match, types, modifiers) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.PropertyInfo[]
---@param returnType System.Type
---@param indexes System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function m:SelectProperty(bindingAttr, match, returnType, indexes, modifiers) end

---@abstract
---@param value any
---@param type System.Type
---@param culture System.Globalization.CultureInfo
---@return any
function m:ChangeType(value, type, culture) end

---@abstract
---@param args System.Object__
---@param state any
---@return System.Object__
function m:ReorderArgumentArray(args, state) end

System.Reflection.Binder = m
return m
