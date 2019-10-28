---@class System.Type : System.Reflection.MemberInfo
---@field public FilterAttribute fun(m:System.Reflection.MemberInfo, filterCriteria:any): @static
---@field public FilterName fun(m:System.Reflection.MemberInfo, filterCriteria:any): @static
---@field public FilterNameIgnoreCase fun(m:System.Reflection.MemberInfo, filterCriteria:any): @static
---@field public Missing any @static
---@field public Delimiter number @static
---@field public EmptyTypes System.Type[] @static
---@field public DefaultBinder System.Reflection.Binder @static
---@field public MemberType System.Reflection.MemberTypes
---@field public DeclaringType System.Type
---@field public DeclaringMethod System.Reflection.MethodBase
---@field public ReflectedType System.Type
---@field public StructLayoutAttribute System.Runtime.InteropServices.StructLayoutAttribute
---@field public GUID System.Guid
---@field public Module System.Reflection.Module
---@field public Assembly System.Reflection.Assembly
---@field public TypeHandle System.RuntimeTypeHandle
---@field public FullName string
---@field public Namespace string
---@field public AssemblyQualifiedName string
---@field public BaseType System.Type
---@field public TypeInitializer System.Reflection.ConstructorInfo
---@field public IsNested boolean
---@field public Attributes System.Reflection.TypeAttributes
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field public IsVisible boolean
---@field public IsNotPublic boolean
---@field public IsPublic boolean
---@field public IsNestedPublic boolean
---@field public IsNestedPrivate boolean
---@field public IsNestedFamily boolean
---@field public IsNestedAssembly boolean
---@field public IsNestedFamANDAssem boolean
---@field public IsNestedFamORAssem boolean
---@field public IsAutoLayout boolean
---@field public IsLayoutSequential boolean
---@field public IsExplicitLayout boolean
---@field public IsClass boolean
---@field public IsInterface boolean
---@field public IsValueType boolean
---@field public IsAbstract boolean
---@field public IsSealed boolean
---@field public IsEnum boolean
---@field public IsSpecialName boolean
---@field public IsImport boolean
---@field public IsSerializable boolean
---@field public IsAnsiClass boolean
---@field public IsUnicodeClass boolean
---@field public IsAutoClass boolean
---@field public IsArray boolean
---@field public IsGenericType boolean
---@field public IsGenericTypeDefinition boolean
---@field public IsConstructedGenericType boolean
---@field public IsGenericParameter boolean
---@field public GenericParameterPosition number
---@field public ContainsGenericParameters boolean
---@field public IsByRef boolean
---@field public IsPointer boolean
---@field public IsPrimitive boolean
---@field public IsCOMObject boolean
---@field public HasElementType boolean
---@field public IsContextful boolean
---@field public IsMarshalByRef boolean
---@field public GenericTypeArguments System.Type[]
---@field public IsSecurityCritical boolean
---@field public IsSecuritySafeCritical boolean
---@field public IsSecurityTransparent boolean
---@field public UnderlyingSystemType System.Type
---@field public IsSZArray boolean
local m = {}

---@overload fun(typeName:string, assemblyResolver:fun(arg:System.Reflection.AssemblyName):, typeResolver:fun(arg1:System.Reflection.Assembly, arg2:string, arg3:boolean):, throwOnError:boolean): @static
---@overload fun(typeName:string, assemblyResolver:fun(arg:System.Reflection.AssemblyName):, typeResolver:fun(arg1:System.Reflection.Assembly, arg2:string, arg3:boolean):, throwOnError:boolean, ignoreCase:boolean): @static
---@overload fun(): @virtual
---@overload fun(typeName:string): @static
---@overload fun(typeName:string, throwOnError:boolean): @static
---@overload fun(typeName:string, throwOnError:boolean, ignoreCase:boolean): @static
---@static
---@param typeName string
---@param assemblyResolver fun(arg:System.Reflection.AssemblyName):
---@param typeResolver fun(arg1:System.Reflection.Assembly, arg2:string, arg3:boolean):
---@return System.Type
function m.GetType(typeName, assemblyResolver, typeResolver) end

---@virtual
---@return System.Type
function m:MakePointerType() end

---@virtual
---@return System.Type
function m:MakeByRefType() end

---@overload fun(rank:number): @virtual
---@virtual
---@return System.Type
function m:MakeArrayType() end

---@overload fun(progID:string, throwOnError:boolean): @static
---@overload fun(progID:string, server:string): @static
---@overload fun(progID:string, server:string, throwOnError:boolean): @static
---@static
---@param progID string
---@return System.Type
function m.GetTypeFromProgID(progID) end

---@overload fun(clsid:System.Guid, throwOnError:boolean): @static
---@overload fun(clsid:System.Guid, server:string): @static
---@overload fun(clsid:System.Guid, server:string, throwOnError:boolean): @static
---@static
---@param clsid System.Guid
---@return System.Type
function m.GetTypeFromCLSID(clsid) end

---@static
---@param type System.Type
---@return System.TypeCode
function m.GetTypeCode(type) end

---@overload fun(name:string, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:any, args:any[], culture:System.Globalization.CultureInfo): @virtual
---@overload fun(name:string, invokeAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, target:any, args:any[]): @virtual
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

---@static
---@param o any
---@return System.RuntimeTypeHandle
function m.GetTypeHandle(o) end

---@virtual
---@return number
function m:GetArrayRank() end

---@overload fun(bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @virtual
---@overload fun(types:System.Type[]): @virtual
---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param callConvention System.Reflection.CallingConventions
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.ConstructorInfo
function m:GetConstructor(bindingAttr, binder, callConvention, types, modifiers) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @virtual
---@overload fun(name:string, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @virtual
---@overload fun(name:string, types:System.Type[]): @virtual
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @virtual
---@overload fun(name:string): @virtual
---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param callConvention System.Reflection.CallingConventions
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodInfo
function m:GetMethod(name, bindingAttr, binder, callConvention, types, modifiers) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@return System.Reflection.MethodInfo[]
function m:GetMethods() end

---@overload fun(name:string): @virtual
---@abstract
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function m:GetField(name, bindingAttr) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@return System.Reflection.FieldInfo[]
function m:GetFields() end

---@overload fun(name:string, ignoreCase:boolean): @abstract
---@virtual
---@param name string
---@return System.Type
function m:GetInterface(name) end

---@abstract
---@return System.Type[]
function m:GetInterfaces() end

---@virtual
---@param filter fun(m:System.Type, filterCriteria:any):
---@param filterCriteria any
---@return System.Type[]
function m:FindInterfaces(filter, filterCriteria) end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@param name string
---@return System.Reflection.EventInfo
function m:GetEvent(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@return System.Reflection.EventInfo[]
function m:GetEvents() end

---@overload fun(name:string, returnType:System.Type, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]): @virtual
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @virtual
---@overload fun(name:string, returnType:System.Type, types:System.Type[]): @virtual
---@overload fun(name:string, types:System.Type[]): @virtual
---@overload fun(name:string, returnType:System.Type): @virtual
---@overload fun(name:string): @virtual
---@virtual
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param returnType System.Type
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function m:GetProperty(name, bindingAttr, binder, returnType, types, modifiers) end

---@overload fun(): @virtual
---@abstract
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function m:GetProperties(bindingAttr) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@return System.Type[]
function m:GetNestedTypes() end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@param name string
---@return System.Type
function m:GetNestedType(name) end

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @virtual
---@overload fun(name:string, type:System.Reflection.MemberTypes, bindingAttr:System.Reflection.BindingFlags): @virtual
---@virtual
---@param name string
---@return System.Reflection.MemberInfo[]
function m:GetMember(name) end

---@overload fun(bindingAttr:System.Reflection.BindingFlags): @abstract
---@virtual
---@return System.Reflection.MemberInfo[]
function m:GetMembers() end

---@virtual
---@return System.Reflection.MemberInfo[]
function m:GetDefaultMembers() end

---@virtual
---@param memberType System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@param filter fun(m:System.Reflection.MemberInfo, filterCriteria:any):
---@param filterCriteria any
---@return System.Reflection.MemberInfo[]
function m:FindMembers(memberType, bindingAttr, filter, filterCriteria) end

---@virtual
---@return System.Type[]
function m:GetGenericParameterConstraints() end

---@overload fun(): @virtual
---@virtual
---@param ... System.Type|System.Type[]
---@return System.Type
function m:MakeGenericType(...) end

---@abstract
---@return System.Type
function m:GetElementType() end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@virtual
---@return System.Type
function m:GetGenericTypeDefinition() end

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
---@param c System.Type
---@return boolean
function m:IsSubclassOf(c) end

---@virtual
---@param o any
---@return boolean
function m:IsInstanceOfType(o) end

---@virtual
---@param c System.Type
---@return boolean
function m:IsAssignableFrom(c) end

---@virtual
---@param other System.Type
---@return boolean
function m:IsEquivalentTo(other) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param args any[]
---@return System.Type[]
function m.GetTypeArray(args) end

---@overload fun(o:System.Type): @virtual
---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@static
---@param left System.Type
---@param right System.Type
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Type
---@param right System.Type
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(interfaceType) end

---@static
---@param typeName string
---@param throwIfNotFound boolean
---@param ignoreCase boolean
---@return System.Type
function m.ReflectionOnlyGetType(typeName, throwIfNotFound, ignoreCase) end

---@static
---@param handle System.RuntimeTypeHandle
---@return System.Type
function m.GetTypeFromHandle(handle) end

---@extension
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_PropertyInfo_
function m.GetRuntimeProperties() end

---@extension
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_EventInfo_
function m.GetRuntimeEvents() end

---@extension
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_MethodInfo_
function m.GetRuntimeMethods() end

---@extension
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_FieldInfo_
function m.GetRuntimeFields() end

---@extension
---@param name string
---@return System.Reflection.PropertyInfo
function m.GetRuntimeProperty(name) end

---@extension
---@param name string
---@return System.Reflection.EventInfo
function m.GetRuntimeEvent(name) end

---@extension
---@param name string
---@param parameters System.Type[]
---@return System.Reflection.MethodInfo
function m.GetRuntimeMethod(name, parameters) end

---@extension
---@param name string
---@return System.Reflection.FieldInfo
function m.GetRuntimeField(name) end

---@extension
---@return System.Reflection.TypeInfo
function m.GetTypeInfo() end

---@extension
---@return boolean
function m.IsValueType() end

---@extension
---@return boolean
function m.IsEnum() end

---@extension
---@return boolean
function m.IsPrimitive() end

---@extension
---@return boolean
function m.IsAbstract() end

---@extension
---@return boolean
function m.IsSealed() end

---@extension
---@return boolean
function m.IsInterface() end

---@extension
---@return boolean
function m.IsClass() end

---@extension
---@return System.Type
function m.BaseType() end

---@extension
---@return boolean
function m.IsGenericType() end

---@extension
---@return boolean
function m.IsGenericTypeDefinition() end

---@extension
---@return boolean
function m.IsNestedPublic() end

---@extension
---@return boolean
function m.IsPublic() end

---@extension
---@return string
function m.GetFriendlyName() end

---@extension
---@param tBase System.Type
---@return boolean
function m.IsSameOrSubclassOf(tBase) end

System.Type = m
return m
