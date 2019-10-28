---@class System.DefaultBinder : System.Reflection.Binder
local m = {}

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.MethodBase[]
---@param args System.Object__
---@param modifiers System.Reflection.ParameterModifier[]
---@param cultureInfo System.Globalization.CultureInfo
---@param names string[]
---@return System.Reflection.MethodBase, System.Object__, System.Object
function m:BindToMethod(bindingAttr, match, args, modifiers, cultureInfo, names) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.FieldInfo[]
---@param value any
---@param cultureInfo System.Globalization.CultureInfo
---@return System.Reflection.FieldInfo
function m:BindToField(bindingAttr, match, value, cultureInfo) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.MethodBase[]
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodBase
function m:SelectMethod(bindingAttr, match, types, modifiers) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.PropertyInfo[]
---@param returnType System.Type
---@param indexes System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function m:SelectProperty(bindingAttr, match, returnType, indexes, modifiers) end

---@virtual
---@param value any
---@param type System.Type
---@param cultureInfo System.Globalization.CultureInfo
---@return any
function m:ChangeType(value, type, cultureInfo) end

---@virtual
---@param args System.Object__
---@param state any
---@return System.Object__
function m:ReorderArgumentArray(args, state) end

---@static
---@param match System.Reflection.MethodBase[]
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodBase
function m.ExactBinding(match, types, modifiers) end

---@static
---@param match System.Reflection.PropertyInfo[]
---@param returnType System.Type
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function m.ExactPropertyBinding(match, returnType, types, modifiers) end

System.DefaultBinder = m
return m
