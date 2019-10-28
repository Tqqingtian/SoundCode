---@class System.Reflection.Assembly : System.Object
---@field public CodeBase string
---@field public EscapedCodeBase string
---@field public FullName string
---@field public EntryPoint System.Reflection.MethodInfo
---@field public Evidence System.Security.Policy.Evidence
---@field public Location string
---@field public ImageRuntimeVersion string
---@field public HostContext number
---@field public ReflectionOnly boolean
---@field public PermissionSet System.Security.PermissionSet
---@field public SecurityRuleSet System.Security.SecurityRuleSet
---@field public IsFullyTrusted boolean
---@field public ManifestModule System.Reflection.Module
---@field public GlobalAssemblyCache boolean
---@field public IsDynamic boolean
---@field public DefinedTypes System.Collections.Generic.IEnumerable_1_System_Reflection_TypeInfo_
---@field public ExportedTypes System.Collections.Generic.IEnumerable_1_System_Type_
---@field public Modules System.Collections.Generic.IEnumerable_1_System_Reflection_Module_
---@field public CustomAttributes System.Collections.Generic.IEnumerable_1_System_Reflection_CustomAttributeData_
local m = {}

---@virtual
---@param value fun(sender:any, e:System.ResolveEventArgs):
function m:add_ModuleResolve(value) end

---@virtual
---@param value fun(sender:any, e:System.ResolveEventArgs):
function m:remove_ModuleResolve(value) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(attributeType:System.Type): @extension
---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@overload fun(): @extension
---@overload fun(attributeType:System.Type): @extension
---@overload fun(): @extension
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

---@overload fun(getResourceModules:boolean): @virtual
---@virtual
---@return System.IO.FileStream[]
function m:GetFiles() end

---@virtual
---@param name string
---@return System.IO.FileStream
function m:GetFile(name) end

---@overload fun(type:System.Type, name:string): @virtual
---@virtual
---@param name string
---@return System.IO.Stream
function m:GetManifestResourceStream(name) end

---@virtual
---@return System.Type[]
function m:GetTypes() end

---@virtual
---@return System.Type[]
function m:GetExportedTypes() end

---@overload fun(name:string): @virtual
---@overload fun(name:string, throwOnError:boolean, ignoreCase:boolean): @virtual
---@virtual
---@param name string
---@param throwOnError boolean
---@return System.Type
function m:GetType(name, throwOnError) end

---@overload fun(): @virtual
---@virtual
---@param copiedName boolean
---@return System.Reflection.AssemblyName
function m:GetName(copiedName) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param assemblyName string
---@param typeName string
---@return string
function m.CreateQualifiedName(assemblyName, typeName) end

---@static
---@param type System.Type
---@return System.Reflection.Assembly
function m.GetAssembly(type) end

---@static
---@return System.Reflection.Assembly
function m.GetEntryAssembly() end

---@overload fun(assemblyFile:string, securityEvidence:System.Security.Policy.Evidence): @static
---@overload fun(assemblyFile:string, securityEvidence:System.Security.Policy.Evidence, hashValue:string, hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm): @static
---@overload fun(assemblyFile:string, hashValue:string, hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm): @static
---@static
---@param assemblyFile string
---@return System.Reflection.Assembly
function m.LoadFrom(assemblyFile) end

---@static
---@param assemblyFile string
---@return System.Reflection.Assembly
function m.UnsafeLoadFrom(assemblyFile) end

---@overload fun(path:string): @static
---@static
---@param path string
---@param securityEvidence System.Security.Policy.Evidence
---@return System.Reflection.Assembly
function m.LoadFile(path, securityEvidence) end

---@overload fun(assemblyString:string, assemblySecurity:System.Security.Policy.Evidence): @static
---@overload fun(assemblyRef:System.Reflection.AssemblyName): @static
---@overload fun(assemblyRef:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence): @static
---@overload fun(rawAssembly:string): @static
---@overload fun(rawAssembly:string, rawSymbolStore:string): @static
---@overload fun(rawAssembly:string, rawSymbolStore:string, securityEvidence:System.Security.Policy.Evidence): @static
---@overload fun(rawAssembly:string, rawSymbolStore:string, securityContextSource:System.Security.SecurityContextSource): @static
---@static
---@param assemblyString string
---@return System.Reflection.Assembly
function m.Load(assemblyString) end

---@overload fun(assemblyString:string): @static
---@static
---@param rawAssembly string
---@return System.Reflection.Assembly
function m.ReflectionOnlyLoad(rawAssembly) end

---@static
---@param assemblyFile string
---@return System.Reflection.Assembly
function m.ReflectionOnlyLoadFrom(assemblyFile) end

---@overload fun(partialName:string, securityEvidence:System.Security.Policy.Evidence): @static
---@static
---@param partialName string
---@return System.Reflection.Assembly
function m.LoadWithPartialName(partialName) end

---@overload fun(moduleName:string, rawModule:string, rawSymbolStore:string): @virtual
---@virtual
---@param moduleName string
---@param rawModule string
---@return System.Reflection.Module
function m:LoadModule(moduleName, rawModule) end

---@overload fun(typeName:string, ignoreCase:boolean): @virtual
---@overload fun(typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @virtual
---@virtual
---@param typeName string
---@return any
function m:CreateInstance(typeName) end

---@overload fun(getResourceModules:boolean): @virtual
---@virtual
---@return System.Reflection.Module[]
function m:GetLoadedModules() end

---@overload fun(getResourceModules:boolean): @virtual
---@virtual
---@return System.Reflection.Module[]
function m:GetModules() end

---@virtual
---@return string[]
function m:GetManifestResourceNames() end

---@static
---@return System.Reflection.Assembly
function m.GetExecutingAssembly() end

---@static
---@return System.Reflection.Assembly
function m.GetCallingAssembly() end

---@virtual
---@param resourceName string
---@return System.Reflection.ManifestResourceInfo
function m:GetManifestResourceInfo(resourceName) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return System.Reflection.CustomAttributeData[]
function m:GetCustomAttributesData() end

---@virtual
---@param name string
---@return System.Reflection.Module
function m:GetModule(name) end

---@virtual
---@return System.Reflection.AssemblyName[]
function m:GetReferencedAssemblies() end

---@overload fun(culture:System.Globalization.CultureInfo, version:System.Version): @virtual
---@virtual
---@param culture System.Globalization.CultureInfo
---@return System.Reflection.Assembly
function m:GetSatelliteAssembly(culture) end

---@static
---@param left System.Reflection.Assembly
---@param right System.Reflection.Assembly
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.Assembly
---@param right System.Reflection.Assembly
---@return boolean
function m.op_Inequality(left, right) end

---@overload fun(): @extension
---@extension
---@param attributeType System.Type
---@return System.Attribute
function m.GetCustomAttribute(attributeType) end

---@extension
---@return boolean, System.Byte*, System.Int32
function m.TryGetRawMetadata() end

System.Reflection.Assembly = m
return m
