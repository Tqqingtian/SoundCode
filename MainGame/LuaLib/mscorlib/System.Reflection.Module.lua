---@class System.Reflection.Module : System.Object
---@field public FilterTypeName fun(m:System.Type, filterCriteria:any): @static
---@field public FilterTypeNameIgnoreCase fun(m:System.Type, filterCriteria:any): @static
---@field public ModuleHandle System.ModuleHandle
---@field public Assembly System.Reflection.Assembly
---@field public Name string
---@field public ScopeName string
---@field public MDStreamVersion number
---@field public ModuleVersionId System.Guid
---@field public FullyQualifiedName string
---@field public MetadataToken number
---@field public CustomAttributes System.Collections.Generic.IEnumerable_1_System_Reflection_CustomAttributeData_
local m = {}

---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags): @virtual
---@param name string
---@return System.Reflection.FieldInfo
function m:GetField(name) end

---@overload fun(bindingFlags:System.Reflection.BindingFlags): @virtual
---@return System.Reflection.FieldInfo[]
function m:GetFields() end

---@overload fun(name:string, types:System.Type[]):
---@overload fun(name:string, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, callConvention:System.Reflection.CallingConventions, types:System.Type[], modifiers:System.Reflection.ParameterModifier[]):
---@param name string
---@return System.Reflection.MethodInfo
function m:GetMethod(name) end

---@overload fun(bindingFlags:System.Reflection.BindingFlags): @virtual
---@return System.Reflection.MethodInfo[]
function m:GetMethods() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(className:string, ignoreCase:boolean): @virtual
---@overload fun(className:string, throwOnError:boolean, ignoreCase:boolean): @virtual
---@virtual
---@param className string
---@return System.Type
function m:GetType(className) end

---@virtual
---@return string
function m:ToString() end

---@overload fun(metadataToken:number, genericTypeArguments:System.Type[], genericMethodArguments:System.Type[]): @virtual
---@param metadataToken number
---@return System.Reflection.FieldInfo
function m:ResolveField(metadataToken) end

---@overload fun(metadataToken:number, genericTypeArguments:System.Type[], genericMethodArguments:System.Type[]): @virtual
---@param metadataToken number
---@return System.Reflection.MemberInfo
function m:ResolveMember(metadataToken) end

---@overload fun(metadataToken:number, genericTypeArguments:System.Type[], genericMethodArguments:System.Type[]): @virtual
---@param metadataToken number
---@return System.Reflection.MethodBase
function m:ResolveMethod(metadataToken) end

---@overload fun(metadataToken:number, genericTypeArguments:System.Type[], genericMethodArguments:System.Type[]): @virtual
---@param metadataToken number
---@return System.Type
function m:ResolveType(metadataToken) end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Reflection.Module
---@param right System.Reflection.Module
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.Module
---@param right System.Reflection.Module
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@return boolean
function m:IsResource() end

---@virtual
---@param filter fun(m:System.Type, filterCriteria:any):
---@param filterCriteria any
---@return System.Type[]
function m:FindTypes(filter, filterCriteria) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@overload fun(): @extension
---@overload fun(attributeType:System.Type): @extension
---@overload fun(): @extension
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

---@virtual
---@return System.Reflection.PortableExecutableKinds, System.Reflection.ImageFileMachine
function m:GetPEKind() end

---@overload fun(attributeType:System.Type): @extension
---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@virtual
---@param metadataToken number
---@return string
function m:ResolveSignature(metadataToken) end

---@virtual
---@param metadataToken number
---@return string
function m:ResolveString(metadataToken) end

---@virtual
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function m:GetSignerCertificate() end

---@virtual
---@return System.Type[]
function m:GetTypes() end

---@overload fun(): @extension
---@extension
---@param attributeType System.Type
---@return System.Attribute
function m.GetCustomAttribute(attributeType) end

System.Reflection.Module = m
return m
