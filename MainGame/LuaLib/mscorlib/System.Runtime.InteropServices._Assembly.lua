---@class System.Runtime.InteropServices._Assembly : table
---@field public CodeBase string
---@field public EscapedCodeBase string
---@field public FullName string
---@field public EntryPoint System.Reflection.MethodInfo
---@field public Location string
---@field public Evidence System.Security.Policy.Evidence
---@field public GlobalAssemblyCache boolean
local m = {}

---@abstract
---@return string
function m:ToString() end

---@abstract
---@param other any
---@return boolean
function m:Equals(other) end

---@abstract
---@return number
function m:GetHashCode() end

---@overload fun(name:string): @abstract
---@overload fun(name:string, throwOnError:boolean): @abstract
---@overload fun(name:string, throwOnError:boolean, ignoreCase:boolean): @abstract
---@abstract
---@return System.Type
function m:GetType() end

---@overload fun(copiedName:boolean): @abstract
---@abstract
---@return System.Reflection.AssemblyName
function m:GetName() end

---@abstract
---@return System.Type[]
function m:GetExportedTypes() end

---@abstract
---@return System.Type[]
function m:GetTypes() end

---@overload fun(name:string): @abstract
---@abstract
---@param type System.Type
---@param name string
---@return System.IO.Stream
function m:GetManifestResourceStream(type, name) end

---@abstract
---@param name string
---@return System.IO.FileStream
function m:GetFile(name) end

---@overload fun(getResourceModules:boolean): @abstract
---@abstract
---@return System.IO.FileStream[]
function m:GetFiles() end

---@abstract
---@return string[]
function m:GetManifestResourceNames() end

---@abstract
---@param resourceName string
---@return System.Reflection.ManifestResourceInfo
function m:GetManifestResourceInfo(resourceName) end

---@overload fun(inherit:boolean): @abstract
---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(attributeType, inherit) end

---@abstract
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@abstract
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@overload fun(culture:System.Globalization.CultureInfo, version:System.Version): @abstract
---@abstract
---@param culture System.Globalization.CultureInfo
---@return System.Reflection.Assembly
function m:GetSatelliteAssembly(culture) end

---@overload fun(moduleName:string, rawModule:string, rawSymbolStore:string): @abstract
---@abstract
---@param moduleName string
---@param rawModule string
---@return System.Reflection.Module
function m:LoadModule(moduleName, rawModule) end

---@overload fun(typeName:string, ignoreCase:boolean): @abstract
---@overload fun(typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @abstract
---@abstract
---@param typeName string
---@return any
function m:CreateInstance(typeName) end

---@overload fun(getResourceModules:boolean): @abstract
---@abstract
---@return System.Reflection.Module[]
function m:GetLoadedModules() end

---@overload fun(getResourceModules:boolean): @abstract
---@abstract
---@return System.Reflection.Module[]
function m:GetModules() end

---@abstract
---@param name string
---@return System.Reflection.Module
function m:GetModule(name) end

---@abstract
---@return System.Reflection.AssemblyName[]
function m:GetReferencedAssemblies() end

---@abstract
---@param value fun(sender:any, e:System.ResolveEventArgs):
function m:add_ModuleResolve(value) end

---@abstract
---@param value fun(sender:any, e:System.ResolveEventArgs):
function m:remove_ModuleResolve(value) end

System.Runtime.InteropServices._Assembly = m
return m
