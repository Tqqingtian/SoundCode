---@class System.Reflection.Emit.ModuleBuilder : System.Reflection.Module
---@field public FullyQualifiedName string
---@field public Assembly System.Reflection.Assembly
---@field public Name string
---@field public ScopeName string
---@field public ModuleVersionId System.Guid
---@field public MetadataToken number
local m = {}

---@return boolean
function m:IsTransient() end

function m:CreateGlobalFunctions() end

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

---@overload fun(name:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[]):
---@overload fun(name:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, requiredReturnTypeCustomModifiers:System.Type[], optionalReturnTypeCustomModifiers:System.Type[], parameterTypes:System.Type[], requiredParameterTypeCustomModifiers:System.Type[][], optionalParameterTypeCustomModifiers:System.Type[][]):
---@param name string
---@param attributes System.Reflection.MethodAttributes
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.MethodBuilder
function m:DefineGlobalMethod(name, attributes, returnType, parameterTypes) end

---@overload fun(name:string, dllName:string, entryName:string, attributes:System.Reflection.MethodAttributes, callingConvention:System.Reflection.CallingConventions, returnType:System.Type, parameterTypes:System.Type[], nativeCallConv:System.Runtime.InteropServices.CallingConvention, nativeCharSet:System.Runtime.InteropServices.CharSet):
---@param name string
---@param dllName string
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param nativeCallConv System.Runtime.InteropServices.CallingConvention
---@param nativeCharSet System.Runtime.InteropServices.CharSet
---@return System.Reflection.Emit.MethodBuilder
function m:DefinePInvokeMethod(name, dllName, attributes, callingConvention, returnType, parameterTypes, nativeCallConv, nativeCharSet) end

---@overload fun(name:string, attr:System.Reflection.TypeAttributes):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, interfaces:System.Type[]):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, typesize:number):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, packsize:System.Reflection.Emit.PackingSize):
---@overload fun(name:string, attr:System.Reflection.TypeAttributes, parent:System.Type, packingSize:System.Reflection.Emit.PackingSize, typesize:number):
---@param name string
---@return System.Reflection.Emit.TypeBuilder
function m:DefineType(name) end

---@param arrayClass System.Type
---@param methodName string
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.MethodInfo
function m:GetArrayMethod(arrayClass, methodName, callingConvention, returnType, parameterTypes) end

---@param name string
---@param visibility System.Reflection.TypeAttributes
---@param underlyingType System.Type
---@return System.Reflection.Emit.EnumBuilder
function m:DefineEnum(name, visibility, underlyingType) end

---@overload fun(className:string, ignoreCase:boolean): @virtual
---@overload fun(className:string, throwOnError:boolean, ignoreCase:boolean): @virtual
---@virtual
---@param className string
---@return System.Type
function m:GetType(className) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@return System.Diagnostics.SymbolStore.ISymbolWriter
function m:GetSymWriter() end

---@param url string
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocumentWriter
function m:DefineDocument(url, language, languageVendor, documentType) end

---@virtual
---@return System.Type[]
function m:GetTypes() end

---@overload fun(name:string, description:string):
---@param name string
---@param description string
---@param attribute System.Reflection.ResourceAttributes
---@return System.Resources.IResourceWriter
function m:DefineResource(name, description, attribute) end

---@overload fun(resourceFileName:string)
---@param resource string
function m:DefineUnmanagedResource(resource) end

---@param name string
---@param stream System.IO.Stream
---@param attribute System.Reflection.ResourceAttributes
function m:DefineManifestResource(name, stream, attribute) end

---@param name string
---@param data string
function m:SetSymCustomAttribute(name, data) end

---@param entryPoint System.Reflection.MethodInfo
function m:SetUserEntryPoint(entryPoint) end

---@overload fun(method:System.Reflection.MethodInfo, optionalParameterTypes:System.Collections.Generic.IEnumerable_1_System_Type_):
---@param method System.Reflection.MethodInfo
---@return System.Reflection.Emit.MethodToken
function m:GetMethodToken(method) end

---@param arrayClass System.Type
---@param methodName string
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.MethodToken
function m:GetArrayMethodToken(arrayClass, methodName, callingConvention, returnType, parameterTypes) end

---@overload fun(constructor:System.Reflection.ConstructorInfo, optionalParameterTypes:System.Collections.Generic.IEnumerable_1_System_Type_):
---@param con System.Reflection.ConstructorInfo
---@return System.Reflection.Emit.MethodToken
function m:GetConstructorToken(con) end

---@param field System.Reflection.FieldInfo
---@return System.Reflection.Emit.FieldToken
function m:GetFieldToken(field) end

---@overload fun(sigHelper:System.Reflection.Emit.SignatureHelper):
---@param sigBytes string
---@param sigLength number
---@return System.Reflection.Emit.SignatureToken
function m:GetSignatureToken(sigBytes, sigLength) end

---@param str string
---@return System.Reflection.Emit.StringToken
function m:GetStringConstant(str) end

---@overload fun(name:string):
---@param type System.Type
---@return System.Reflection.Emit.TypeToken
function m:GetTypeToken(type) end

---@virtual
---@return boolean
function m:IsResource() end

---@virtual
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.FieldInfo
function m:ResolveField(metadataToken, genericTypeArguments, genericMethodArguments) end

---@virtual
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MemberInfo
function m:ResolveMember(metadataToken, genericTypeArguments, genericMethodArguments) end

---@virtual
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MethodBase
function m:ResolveMethod(metadataToken, genericTypeArguments, genericMethodArguments) end

---@virtual
---@param metadataToken number
---@return string
function m:ResolveString(metadataToken) end

---@virtual
---@param metadataToken number
---@return string
function m:ResolveSignature(metadataToken) end

---@virtual
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Type
function m:ResolveType(metadataToken, genericTypeArguments, genericMethodArguments) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

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
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function m:GetField(name, bindingAttr) end

---@virtual
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function m:GetFields(bindingFlags) end

---@virtual
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function m:GetMethods(bindingFlags) end

System.Reflection.Emit.ModuleBuilder = m
return m
