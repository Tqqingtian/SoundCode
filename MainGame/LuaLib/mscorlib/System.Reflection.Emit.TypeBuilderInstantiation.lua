---@class System.Reflection.Emit.TypeBuilderInstantiation : System.Reflection.TypeInfo
---@field public BaseType System.Type
---@field public UnderlyingSystemType System.Type
---@field public Assembly System.Reflection.Assembly
---@field public Module System.Reflection.Module
---@field public Name string
---@field public Namespace string
---@field public FullName string
---@field public AssemblyQualifiedName string
---@field public GUID System.Guid
---@field public ContainsGenericParameters boolean
---@field public IsGenericTypeDefinition boolean
---@field public IsGenericType boolean
---@field public DeclaringType System.Type
---@field public TypeHandle System.RuntimeTypeHandle
local m = {}

---@virtual
---@return System.Type[]
function m:GetInterfaces() end

---@virtual
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function m:GetMethods(bf) end

---@virtual
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors(bf) end

---@virtual
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function m:GetFields(bf) end

---@virtual
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function m:GetProperties(bf) end

---@virtual
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function m:GetEvents(bf) end

---@virtual
---@param bf System.Reflection.BindingFlags
---@return System.Type[]
function m:GetNestedTypes(bf) end

---@virtual
---@param c System.Type
---@return boolean
function m:IsAssignableFrom(c) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@return System.Type
function m:GetGenericTypeDefinition() end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@overload fun(rank:number): @virtual
---@virtual
---@return System.Type
function m:MakeArrayType() end

---@virtual
---@return System.Type
function m:MakeByRefType() end

---@virtual
---@return System.Type
function m:MakePointerType() end

---@virtual
---@return System.Type
function m:GetElementType() end

---@virtual
---@param name string
---@param ignoreCase boolean
---@return System.Type
function m:GetInterface(name, ignoreCase) end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function m:GetEvent(name, bindingAttr) end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function m:GetField(name, bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMembers(bindingAttr) end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function m:GetNestedType(name, bindingAttr) end

---@virtual
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

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

System.Reflection.Emit.TypeBuilderInstantiation = m
return m
