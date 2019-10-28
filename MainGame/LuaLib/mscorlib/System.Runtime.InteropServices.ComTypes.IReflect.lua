---@class System.Runtime.InteropServices.ComTypes.IReflect : table
---@field public UnderlyingSystemType System.Type
local m = {}

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodInfo
function m:GetMethod(name, bindingAttr, binder, types, modifiers) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function m:GetMethods(bindingAttr) end

---@abstract
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function m:GetField(name, bindingAttr) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function m:GetFields(bindingAttr) end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@abstract
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo
function m:GetProperty(name, bindingAttr) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function m:GetProperties(bindingAttr) end

---@abstract
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMember(name, bindingAttr) end

---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMembers(bindingAttr) end

---@abstract
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target any
---@param args any[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters string[]
---@return any
function m:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end

System.Runtime.InteropServices.ComTypes.IReflect = m
return m
