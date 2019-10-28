---@class System.Reflection.Emit.AssemblyBuilder : System.Reflection.Assembly
---@field public CodeBase string
---@field public EntryPoint System.Reflection.MethodInfo
---@field public Location string
---@field public ImageRuntimeVersion string
---@field public ReflectionOnly boolean
---@field public ManifestModule System.Reflection.Module
---@field public GlobalAssemblyCache boolean
---@field public IsDynamic boolean
---@field public FullName string
local m = {}

---@overload fun(name:string, fileName:string, attribute:System.Reflection.ResourceAttributes)
---@param name string
---@param fileName string
function m:AddResourceFile(name, fileName) end

---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes:System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_CustomAttributeBuilder_): @static
---@static
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@return System.Reflection.Emit.AssemblyBuilder
function m.DefineDynamicAssembly(name, access) end

---@overload fun(name:string, emitSymbolInfo:boolean):
---@overload fun(name:string, fileName:string):
---@overload fun(name:string, fileName:string, emitSymbolInfo:boolean):
---@param name string
---@return System.Reflection.Emit.ModuleBuilder
function m:DefineDynamicModule(name) end

---@overload fun(name:string, description:string, fileName:string, attribute:System.Reflection.ResourceAttributes):
---@param name string
---@param description string
---@param fileName string
---@return System.Resources.IResourceWriter
function m:DefineResource(name, description, fileName) end

---@overload fun(resourceFileName:string)
---@param resource string
function m:DefineUnmanagedResource(resource) end

---@overload fun(product:string, productVersion:string, company:string, copyright:string, trademark:string)
function m:DefineVersionInfoResource() end

---@param name string
---@return System.Reflection.Emit.ModuleBuilder
function m:GetDynamicModule(name) end

---@virtual
---@return System.Type[]
function m:GetExportedTypes() end

---@virtual
---@param name string
---@return System.IO.FileStream
function m:GetFile(name) end

---@virtual
---@param getResourceModules boolean
---@return System.IO.FileStream[]
function m:GetFiles(getResourceModules) end

---@virtual
---@param resourceName string
---@return System.Reflection.ManifestResourceInfo
function m:GetManifestResourceInfo(resourceName) end

---@virtual
---@return string[]
function m:GetManifestResourceNames() end

---@overload fun(type:System.Type, name:string): @virtual
---@virtual
---@param name string
---@return System.IO.Stream
function m:GetManifestResourceStream(name) end

---@overload fun(assemblyFileName:string)
---@param assemblyFileName string
---@param portableExecutableKind System.Reflection.PortableExecutableKinds
---@param imageFileMachine System.Reflection.ImageFileMachine
function m:Save(assemblyFileName, portableExecutableKind, imageFileMachine) end

---@overload fun(entryMethod:System.Reflection.MethodInfo, fileKind:System.Reflection.Emit.PEFileKinds)
---@param entryMethod System.Reflection.MethodInfo
function m:SetEntryPoint(entryMethod) end

---@overload fun(con:System.Reflection.ConstructorInfo, binaryAttribute:string)
---@param customBuilder System.Reflection.Emit.CustomAttributeBuilder
function m:SetCustomAttribute(customBuilder) end

---@virtual
---@param name string
---@param throwOnError boolean
---@param ignoreCase boolean
---@return System.Type
function m:GetType(name, throwOnError, ignoreCase) end

---@virtual
---@param name string
---@return System.Reflection.Module
function m:GetModule(name) end

---@virtual
---@param getResourceModules boolean
---@return System.Reflection.Module[]
function m:GetModules(getResourceModules) end

---@virtual
---@param copiedName boolean
---@return System.Reflection.AssemblyName
function m:GetName(copiedName) end

---@virtual
---@return System.Reflection.AssemblyName[]
function m:GetReferencedAssemblies() end

---@virtual
---@param getResourceModules boolean
---@return System.Reflection.Module[]
function m:GetLoadedModules(getResourceModules) end

---@overload fun(culture:System.Globalization.CultureInfo, version:System.Version): @virtual
---@virtual
---@param culture System.Globalization.CultureInfo
---@return System.Reflection.Assembly
function m:GetSatelliteAssembly(culture) end

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

System.Reflection.Emit.AssemblyBuilder = m
return m
