---@class System.Activator : System.Object
local m = {}

---@overload fun(type:System.Type, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @static
---@overload fun(type:System.Type, ...:any|any[]): @static
---@overload fun(type:System.Type): @static
---@overload fun(type:System.Type, args:any[], activationAttributes:any[]): @static
---@overload fun(type:System.Type): @static
---@overload fun(assemblyName:string, typeName:string): @static
---@overload fun(assemblyName:string, typeName:string, activationAttributes:any[]): @static
---@overload fun(type:System.Type, nonPublic:boolean): @static
---@overload fun(): @static
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityInfo:System.Security.Policy.Evidence): @static
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @static
---@overload fun(domain:System.AppDomain, assemblyName:string, typeName:string): @static
---@overload fun(domain:System.AppDomain, assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence): @static
---@overload fun(domain:System.AppDomain, assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @static
---@static
---@param type System.Type
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args any[]
---@param culture System.Globalization.CultureInfo
---@return any
function m.CreateInstance(type, bindingAttr, binder, args, culture) end

---@overload fun(assemblyFile:string, typeName:string, activationAttributes:any[]): @static
---@overload fun(assemblyFile:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityInfo:System.Security.Policy.Evidence): @static
---@overload fun(assemblyFile:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @static
---@overload fun(domain:System.AppDomain, assemblyFile:string, typeName:string): @static
---@overload fun(domain:System.AppDomain, assemblyFile:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence): @static
---@overload fun(domain:System.AppDomain, assemblyFile:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]): @static
---@static
---@param assemblyFile string
---@param typeName string
---@return System.Runtime.Remoting.ObjectHandle
function m.CreateInstanceFrom(assemblyFile, typeName) end

---@overload fun(assemblyName:string, typeName:string, hashValue:string, hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm): @static
---@static
---@param assemblyName string
---@param typeName string
---@return System.Runtime.Remoting.ObjectHandle
function m.CreateComInstanceFrom(assemblyName, typeName) end

---@overload fun(type:System.Type, url:string, state:any): @static
---@static
---@param type System.Type
---@param url string
---@return any
function m.GetObject(type, url) end

System.Activator = m
return m
