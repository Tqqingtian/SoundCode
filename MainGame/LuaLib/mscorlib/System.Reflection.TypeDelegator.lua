---@class System.Reflection.TypeDelegator : System.Reflection.TypeInfo
---@field public GUID System.Guid
---@field public MetadataToken number
---@field public Module System.Reflection.Module
---@field public Assembly System.Reflection.Assembly
---@field public TypeHandle System.RuntimeTypeHandle
---@field public Name string
---@field public FullName string
---@field public Namespace string
---@field public AssemblyQualifiedName string
---@field public BaseType System.Type
---@field public IsConstructedGenericType boolean
---@field public UnderlyingSystemType System.Type
---@field public IsSZArray boolean
local m = {}

---@virtual
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function m:IsAssignableFrom(typeInfo) end

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
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function m:GetMethods(bindingAttr) end

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
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function m:GetEvent(name, bindingAttr) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @virtual
---@virtual
---@return System.Reflection.EventInfo[]
function m:GetEvents() end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function m:GetProperties(bindingAttr) end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function m:GetNestedTypes(bindingAttr) end

---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function m:GetNestedType(name, bindingAttr) end

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
---@return System.Type
function m:GetElementType() end

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
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(interfaceType) end

System.Reflection.TypeDelegator = m
return m
