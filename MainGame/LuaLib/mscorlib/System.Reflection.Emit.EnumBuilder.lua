---@class System.Reflection.Emit.EnumBuilder : System.Reflection.TypeInfo
---@field public Assembly System.Reflection.Assembly
---@field public AssemblyQualifiedName string
---@field public BaseType System.Type
---@field public DeclaringType System.Type
---@field public FullName string
---@field public GUID System.Guid
---@field public Module System.Reflection.Module
---@field public Name string
---@field public Namespace string
---@field public ReflectedType System.Type
---@field public TypeHandle System.RuntimeTypeHandle
---@field public TypeToken System.Reflection.Emit.TypeToken
---@field public UnderlyingField System.Reflection.Emit.FieldBuilder
---@field public UnderlyingSystemType System.Type
---@field public IsConstructedGenericType boolean
local m = {}

---@return System.Type
function m:CreateType() end

---@return System.Reflection.TypeInfo
function m:CreateTypeInfo() end

---@virtual
---@return System.Type
function m:GetEnumUnderlyingType() end

---@param literalName string
---@param literalValue any
---@return System.Reflection.Emit.FieldBuilder
function m:DefineLiteral(literalName, literalValue) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors(bindingAttr) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@virtual
---@return System.Type
function m:GetElementType() end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function m:GetEvent(name, bindingAttr) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @virtual
---@virtual
---@return System.Reflection.EventInfo[]
function m:GetEvents() end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function m:GetField(name, bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function m:GetFields(bindingAttr) end

---@virtual
---@param name string
---@param ignoreCase boolean
---@return System.Type
function m:GetInterface(name, ignoreCase) end

---@virtual
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(interfaceType) end

---@virtual
---@return System.Type[]
function m:GetInterfaces() end

---@virtual
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMember(name, type, bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMembers(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function m:GetMethods(bindingAttr) end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function m:GetNestedType(name, bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function m:GetNestedTypes(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function m:GetProperties(bindingAttr) end

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

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@virtual
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function m:IsAssignableFrom(typeInfo) end

System.Reflection.Emit.EnumBuilder = m
return m
