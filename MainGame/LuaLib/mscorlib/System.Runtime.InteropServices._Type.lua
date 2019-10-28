---@class System.Runtime.InteropServices._Type : table
---@field public Assembly System.Reflection.Assembly
---@field public AssemblyQualifiedName string
---@field public Attributes System.Reflection.TypeAttributes
---@field public BaseType System.Type
---@field public DeclaringType System.Type
---@field public FullName string
---@field public GUID System.Guid
---@field public HasElementType boolean
---@field public IsAbstract boolean
---@field public IsAnsiClass boolean
---@field public IsArray boolean
---@field public IsAutoClass boolean
---@field public IsAutoLayout boolean
---@field public IsByRef boolean
---@field public IsClass boolean
---@field public IsCOMObject boolean
---@field public IsContextful boolean
---@field public IsEnum boolean
---@field public IsExplicitLayout boolean
---@field public IsImport boolean
---@field public IsInterface boolean
---@field public IsLayoutSequential boolean
---@field public IsMarshalByRef boolean
---@field public IsNestedAssembly boolean
---@field public IsNestedFamANDAssem boolean
---@field public IsNestedFamily boolean
---@field public IsNestedFamORAssem boolean
---@field public IsNestedPrivate boolean
---@field public IsNestedPublic boolean
---@field public IsNotPublic boolean
---@field public IsPointer boolean
---@field public IsPrimitive boolean
---@field public IsPublic boolean
---@field public IsSealed boolean
---@field public IsSerializable boolean
---@field public IsSpecialName boolean
---@field public IsUnicodeClass boolean
---@field public IsValueType boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public Module System.Reflection.Module
---@field public Name string
---@field public Namespace string
---@field public ReflectedType System.Type
---@field public TypeHandle System.RuntimeTypeHandle
---@field public TypeInitializer System.Reflection.ConstructorInfo
---@field public UnderlyingSystemType System.Type
local m = {}

---@overload fun(o:System.Type): @abstract
---@abstract
---@param other any
---@return boolean
function m:Equals(other) end

---@abstract
---@param filter fun(m:System.Type, filterCriteria:any):
---@param filterCriteria any
---@return System.Type[]
function m:FindInterfaces(filter, filterCriteria) end

---@abstract
---@param memberType System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@param filter fun(m:System.Reflection.MemberInfo, filterCriteria:any):
---@param filterCriteria any
---@return System.Reflection.MemberInfo[]
function m:FindMembers(memberType, bindingAttr, filter, filterCriteria) end

---@abstract
---@return number
function m:GetArrayRank() end

---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@abstract
---@param types System.Type[]
---@return System.Reflection.ConstructorInfo
function m:GetConstructor(types) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors() end

---@overload fun(attributeType:System.Type, inherit:boolean): @abstract
---@abstract
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@abstract
---@return System.Reflection.MemberInfo[]
function m:GetDefaultMembers() end

---@abstract
---@return System.Type
function m:GetElementType() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@param name string
---@return System.Reflection.EventInfo
function m:GetEvent(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Reflection.EventInfo[]
function m:GetEvents() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@param name string
---@return System.Reflection.FieldInfo
function m:GetField(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Reflection.FieldInfo[]
function m:GetFields() end

---@abstract
---@return number
function m:GetHashCode() end

---@abstract
---@param riid System.Guid
---@param rgszNames System.IntPtr
---@param cNames number
---@param lcid number
---@param rgDispId System.IntPtr
---@return System.Guid
function m:GetIDsOfNames(riid, rgszNames, cNames, lcid, rgDispId) end

---@abstract
---@param iTInfo number
---@param lcid number
---@param ppTInfo System.IntPtr
function m:GetTypeInfo(iTInfo, lcid, ppTInfo) end

---@abstract
---@return System.UInt32
function m:GetTypeInfoCount() end

---@abstract
---@param dispIdMember number
---@param riid System.Guid
---@param lcid number
---@param wFlags number
---@param pDispParams System.IntPtr
---@param pVarResult System.IntPtr
---@param pExcepInfo System.IntPtr
---@param puArgErr System.IntPtr
---@return System.Guid
function m:Invoke(dispIdMember, riid, lcid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr) end

---@overload fun(name:string, ignoreCase:boolean): @abstract
---@abstract
---@param name string
---@return System.Type
function m:GetInterface(name) end

---@abstract
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(interfaceType) end

---@abstract
---@return System.Type[]
function m:GetInterfaces() end

---@overload fun(name:string, type:System.Reflection.MemberTypes, bindingAttr:System.Reflection.BindingFlags): @abstract
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@param name string
---@return System.Reflection.MemberInfo[]
function m:GetMember(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Reflection.MemberInfo[]
function m:GetMembers() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@overload fun(name:string, types:System.Type[]): @abstract
---@overload fun(name:string, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@abstract
---@param name string
---@return System.Reflection.MethodInfo
function m:GetMethod(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Reflection.MethodInfo[]
function m:GetMethods() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@param name string
---@return System.Type
function m:GetNestedType(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Type[]
function m:GetNestedTypes() end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@abstract
---@return System.Reflection.PropertyInfo[]
function m:GetProperties() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@overload fun(name:string, returnType:System.Type): @abstract
---@overload fun(name:string, types:System.Type[]): @abstract
---@overload fun(name:string, returnType:System.Type, types:System.Type[]): @abstract
---@overload fun(name:string, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @abstract
---@abstract
---@param name string
---@return System.Reflection.PropertyInfo
function m:GetProperty(name) end

---@abstract
---@return System.Type
function m:GetType() end

---@overload fun(name:string, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:any, args:any[], culture:System.Globalization.CultureInfo): @abstract
---@overload fun(name:string, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:any, args:any[], modifiers:System.Reflection.ParameterModifier[], culture:System.Globalization.CultureInfo, namedParameters:string[]): @abstract
---@abstract
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target any
---@param args any[]
---@return any
function m:InvokeMember(name, invokeAttr, binder, target, args) end

---@abstract
---@param c System.Type
---@return boolean
function m:IsAssignableFrom(c) end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@abstract
---@param o any
---@return boolean
function m:IsInstanceOfType(o) end

---@abstract
---@param c System.Type
---@return boolean
function m:IsSubclassOf(c) end

---@abstract
---@return string
function m:ToString() end

System.Runtime.InteropServices._Type = m
return m
