---@class System.Reflection.Emit.TypeBuilder : System.Reflection.TypeInfo
---@field public UnspecifiedTypeSize number @static
---@field public Assembly System.Reflection.Assembly
---@field public AssemblyQualifiedName string
---@field public BaseType System.Type
---@field public DeclaringType System.Type
---@field public UnderlyingSystemType System.Type
---@field public FullName string
---@field public GUID System.Guid
---@field public Module System.Reflection.Module
---@field public Name string
---@field public Namespace string
---@field public PackingSize System.Reflection.Emit.PackingSize
---@field public Size number
---@field public ReflectedType System.Type
---@field public TypeHandle System.RuntimeTypeHandle
---@field public TypeToken System.Reflection.Emit.TypeToken
---@field public ContainsGenericParameters boolean
---@field public IsGenericParameter boolean
---@field public GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field public IsGenericTypeDefinition boolean
---@field public IsGenericType boolean
---@field public GenericParameterPosition number
---@field public DeclaringMethod System.Reflection.MethodBase
---@field public IsConstructedGenericType boolean
local m = {}

---@virtual
---@param c System.Type
---@return boolean
function m:IsSubclassOf(c) end

---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
function m:AddDeclarativeSecurity(action, pset) end

---@param interfaceType System.Type
function m:AddInterfaceImplementation(interfaceType) end

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

---@overload fun(name:string, attr:System.Reflection.TypeAttributes):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, interfaces:System.Type[]):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, typeSize:number):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, packSize:System.Reflection.Emit.PackingSize):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, packSize:System.Reflection.Emit.PackingSize, typeSize:number):
---@param name string
---@return System.Reflection.Emit.TypeBuilder
function m:DefineNestedType(name) end

---@overload fun(attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, parameterTypes:System.Type[], requiredCustomModifiers:System.Type[][], optionalCustomModifiers:System.Type[][]):
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.ConstructorBuilder
function m:DefineConstructor(attributes, callingConvention, parameterTypes) end

---@param attributes System.Reflection.MethodAttributes
---@return System.Reflection.Emit.ConstructorBuilder
function m:DefineDefaultConstructor(attributes) end

---@overload fun(name:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[]):
---@overload fun(name:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][]):
---@overload fun(name:string, attributes:System.Reflection.MethodAttributes):
---@overload fun(name:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions):
---@param name string
---@param attributes System.Reflection.MethodAttributes
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.MethodBuilder
function m:DefineMethod(name, attributes, returnType, parameterTypes) end

---@overload fun(name:string, dllName:string, entryName:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][], nativeCallConv:System.Runtime.InteropServices.CallingConvention, nativeCharSet:System.Runtime.InteropServices.CharSet):
---@overload fun(name:string, dllName:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[], nativeCallConv:System.Runtime.InteropServices.CallingConvention, nativeCharSet:System.Runtime.InteropServices.CharSet):
---@param name string
---@param dllName string
---@param entryName string
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param nativeCallConv System.Runtime.InteropServices.CallingConvention
---@param nativeCharSet System.Runtime.InteropServices.CharSet
---@return System.Reflection.Emit.MethodBuilder
function m:DefinePInvokeMethod(name, dllName, entryName, attributes, callingConvention, returnType, parameterTypes, nativeCallConv, nativeCharSet) end

---@param methodInfoBody System.Reflection.MethodInfo
---@param methodInfoDeclaration System.Reflection.MethodInfo
function m:DefineMethodOverride(methodInfoBody, methodInfoDeclaration) end

---@overload fun(fieldName:string, type:System.Type, requiredCustomModifiers:System.Type[], optionalCustomModifiers:System.Type[], attributes:System.Reflection.FieldAttributes):
---@param fieldName string
---@param type System.Type
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function m:DefineField(fieldName, type, attributes) end

---@overload fun(name:string, attributes:System.Reflection.PropertyAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[]):
---@overload fun(name:string, attributes:System.Reflection.PropertyAttributes, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][]):
---@overload fun(name:string, attributes:System.Reflection.PropertyAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, returnTypeRequiredCustomModifiers:System.Type[], returnTypeOptionalCustomModifiers:System.Type[], parameterTypes:System.Type[], parameterTypeRequiredCustomModifiers:System.Type[][], parameterTypeOptionalCustomModifiers:System.Type[][]):
---@param name string
---@param attributes System.Reflection.PropertyAttributes
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.PropertyBuilder
function m:DefineProperty(name, attributes, returnType, parameterTypes) end

---@return System.Reflection.Emit.ConstructorBuilder
function m:DefineTypeInitializer() end

---@return System.Type
function m:CreateType() end

---@return System.Reflection.TypeInfo
function m:CreateTypeInfo() end

---@virtual
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function m:GetConstructors(bindingAttr) end

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

---@overload fun(type:System.Type, field:System.Reflection.FieldInfo): @static
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

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@param name string
---@param attributes System.Reflection.EventAttributes
---@param eventtype System.Type
---@return System.Reflection.Emit.EventBuilder
function m:DefineEvent(name, attributes, eventtype) end

---@param name string
---@param data string
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function m:DefineInitializedData(name, data, attributes) end

---@param name string
---@param size number
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function m:DefineUninitializedData(name, size, attributes) end

---@param parent System.Type
function m:SetParent(parent) end

---@virtual
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m:GetInterfaceMap(interfaceType) end

---@virtual
---@return string
function m:ToString() end

---@overload fun(typeInfo:System.Reflection.TypeInfo): @virtual
---@virtual
---@param c System.Type
---@return boolean
function m:IsAssignableFrom(c) end

---@return boolean
function m:IsCreated() end

---@virtual
---@return System.Type[]
function m:GetGenericArguments() end

---@virtual
---@return System.Type
function m:GetGenericTypeDefinition() end

---@overload fun():
---@param ... string|string[]
---@return System.Reflection.Emit.GenericTypeParameterBuilder[]
function m:DefineGenericParameters(...) end

---@static
---@param type System.Type
---@param constructor System.Reflection.ConstructorInfo
---@return System.Reflection.ConstructorInfo
function m.GetConstructor(type, constructor) end

---@static
---@param type System.Type
---@param method System.Reflection.MethodInfo
---@return System.Reflection.MethodInfo
function m.GetMethod(type, method) end

System.Reflection.Emit.TypeBuilder = m
return m
