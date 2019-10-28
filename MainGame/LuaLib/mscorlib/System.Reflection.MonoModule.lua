---@class System.Reflection.MonoModule : System.Reflection.RuntimeModule
---@field public Assembly System.Reflection.Assembly
---@field public Name string
---@field public ScopeName string
---@field public MDStreamVersion number
---@field public ModuleVersionId System.Guid
---@field public FullyQualifiedName string
---@field public MetadataToken number
local m = {}

---@virtual
---@return boolean
function m:IsResource() end

---@virtual
---@param filter fun(m:System.Type, filterCriteria:any):
---@param filterCriteria any
---@return System.Type[]
function m:FindTypes(filter, filterCriteria) end

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

---@virtual
---@return System.Reflection.PortableExecutableKinds, System.Reflection.ImageFileMachine
function m:GetPEKind() end

---@virtual
---@param className string
---@param throwOnError boolean
---@param ignoreCase boolean
---@return System.Type
function m:GetType(className, throwOnError, ignoreCase) end

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

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
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Type
function m:ResolveType(metadataToken, genericTypeArguments, genericMethodArguments) end

---@virtual
---@param metadataToken number
---@return string
function m:ResolveSignature(metadataToken) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function m:GetSignerCertificate() end

---@virtual
---@return System.Type[]
function m:GetTypes() end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

System.Reflection.MonoModule = m
return m
