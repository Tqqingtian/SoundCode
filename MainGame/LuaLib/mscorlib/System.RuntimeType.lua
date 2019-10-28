---@class System.RuntimeType : System.Reflection.TypeInfo
---@field public Module System.Reflection.Module
---@field public Assembly System.Reflection.Assembly
---@field public TypeHandle System.RuntimeTypeHandle
---@field public BaseType System.Type
---@field public UnderlyingSystemType System.Type
---@field public IsEnum boolean
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field public IsGenericTypeDefinition boolean
---@field public IsGenericParameter boolean
---@field public GenericParameterPosition number
---@field public IsGenericType boolean
---@field public IsConstructedGenericType boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public ReflectedType System.Type
---@field public MetadataToken number
---@field public StructLayoutAttribute System.Runtime.InteropServices.StructLayoutAttribute
---@field public ContainsGenericParameters boolean
---@field public GUID System.Guid
---@field public DeclaringMethod System.Reflection.MethodBase
---@field public AssemblyQualifiedName string
---@field public DeclaringType System.Type
---@field public Name string
---@field public Namespace string
---@field public IsSecurityTransparent boolean
---@field public IsSecurityCritical boolean
---@field public IsSecuritySafeCritical boolean
---@field public FullName string
---@field public IsSZArray boolean
local m = {}

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function m:GetMethods(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function m:GetProperties(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function m:GetEvents(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function m:GetFields(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function m:GetNestedTypes(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMembers(bindingAttr) end

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
---@param fullname string
---@param ignoreCase boolean
---@return System.Type
function m:GetInterface(fullname, ignoreCase) end

---@virtual
---@param fullname string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function m:GetNestedType(fullname, bindingAttr) end

---@virtual
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function m:GetMember(name, type, bindingAttr) end

---@virtual
---@param o any
---@return boolean
function m:IsInstanceOfType(o) end

---@virtual
---@param type System.Type
---@return boolean
function m:IsSubclassOf(type) end

---@overload fun(c:System.Type): @virtual
---@virtual
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function m:IsAssignableFrom(typeInfo) end

---@virtual
---@param other System.Type
---@return boolean
function m:IsEquivalentTo(other) end

---@virtual
---@return number
function m:GetArrayRank() end

---@virtual
---@return System.Type
function m:GetElementType() end

---@virtual
---@return string[]
function m:GetEnumNames() end

---@virtual
---@return System.Array
function m:GetEnumValues() end

---@virtual
---@return System.Type
function m:GetEnumUnderlyingType() end

---@virtual
---@param value any
---@return boolean
function m:IsEnumDefined(value) end

---@virtual
---@param value any
---@return string
function m:GetEnumName(value) end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@overload fun(): @virtual
---@virtual
---@param ... System.Type|System.Type[]
---@return System.Type
function m:MakeGenericType(...) end

---@virtual
---@return System.Type
function m:GetGenericTypeDefinition() end

---@virtual
---@return System.Reflection.MemberInfo[]
function m:GetDefaultMembers() end

---@virtual
---@param name string
---@param bindingFlags System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target any
---@param providedArgs any[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParams string[]
---@return any
function m:InvokeMember(name, bindingFlags, binder, target, providedArgs, modifiers, culture, namedParams) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param left System.RuntimeType
---@param right System.RuntimeType
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.RuntimeType
---@param right System.RuntimeType
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

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
---@return System.Type[]
function m:GetGenericParameterConstraints() end

---@virtual
---@param ifaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(ifaceType) end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@return System.Type[]
function m:GetInterfaces() end

---@virtual
---@return number
function m:GetHashCode() end

System.RuntimeType = m
return m
