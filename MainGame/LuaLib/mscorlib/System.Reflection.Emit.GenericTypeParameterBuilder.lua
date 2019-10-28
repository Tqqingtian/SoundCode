---@class System.Reflection.Emit.GenericTypeParameterBuilder : System.Reflection.TypeInfo
---@field public UnderlyingSystemType System.Type
---@field public Assembly System.Reflection.Assembly
---@field public AssemblyQualifiedName string
---@field public BaseType System.Type
---@field public FullName string
---@field public GUID System.Guid
---@field public Name string
---@field public Namespace string
---@field public Module System.Reflection.Module
---@field public DeclaringType System.Type
---@field public ReflectedType System.Type
---@field public TypeHandle System.RuntimeTypeHandle
---@field public ContainsGenericParameters boolean
---@field public IsGenericParameter boolean
---@field public IsGenericType boolean
---@field public IsGenericTypeDefinition boolean
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field public GenericParameterPosition number
---@field public DeclaringMethod System.Reflection.MethodBase
local m = {}

---@param baseTypeConstraint System.Type
function m:SetBaseTypeConstraint(baseTypeConstraint) end

---@overload fun()
---@param ... System.Type|System.Type[]
function m:SetInterfaceConstraints(...) end

---@param genericParameterAttributes System.Reflection.GenericParameterAttributes
function m:SetGenericParameterAttributes(genericParameterAttributes) end

---@virtual
---@param c System.Type
---@return boolean
function m:IsSubclassOf(c) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors(bindingAttr) end

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
---@return System.Type[]
function m:GetInterfaces() end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMembers(bindingAttr) end

---@virtual
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMember(name, type, bindingAttr) end

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

---@overload fun(typeInfo:System.Reflection.TypeInfo): @virtual
---@virtual
---@param c System.Type
---@return boolean
function m:IsAssignableFrom(c) end

---@virtual
---@param o any
---@return boolean
function m:IsInstanceOfType(o) end

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
---@return System.Type
function m:GetElementType() end

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

---@virtual
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(interfaceType) end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@virtual
---@return System.Type
function m:GetGenericTypeDefinition() end

---@virtual
---@return System.Type[]
function m:GetGenericParameterConstraints() end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(rank:number): @virtual
---@virtual
---@return System.Type
function m:MakeArrayType() end

---@virtual
---@return System.Type
function m:MakeByRefType() end

---@overload fun(): @virtual
---@virtual
---@param ... System.Type|System.Type[]
---@return System.Type
function m:MakeGenericType(...) end

---@virtual
---@return System.Type
function m:MakePointerType() end

System.Reflection.Emit.GenericTypeParameterBuilder = m
return m
