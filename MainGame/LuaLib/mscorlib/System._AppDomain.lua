---@class System._AppDomain : table
---@field public FriendlyName string
---@field public BaseDirectory string
---@field public RelativeSearchPath string
---@field public ShadowCopyFiles boolean
---@field public DynamicDirectory string
---@field public Evidence System.Security.Policy.Evidence
local m = {}

---@abstract
---@return System.UInt32
function m:GetTypeInfoCount() end

---@abstract
---@param iTInfo number
---@param lcid number
---@param ppTInfo System.IntPtr
function m:GetTypeInfo(iTInfo, lcid, ppTInfo) end

---@abstract
---@param riid System.Guid
---@param rgszNames System.IntPtr
---@param cNames number
---@param lcid number
---@param rgDispId System.IntPtr
---@return System.Guid
function m:GetIDsOfNames(riid, rgszNames, cNames, lcid, rgDispId) end

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

---@abstract
---@return System.Type
function m:GetType() end

---@abstract
---@return any
function m:InitializeLifetimeService() end

---@abstract
---@return any
function m:GetLifetimeService() end

---@abstract
---@param value fun(sender:any, e:System.EventArgs)
function m:add_DomainUnload(value) end

---@abstract
---@param value fun(sender:any, e:System.EventArgs)
function m:remove_DomainUnload(value) end

---@abstract
---@param value fun(sender:any, args:System.AssemblyLoadEventArgs)
function m:add_AssemblyLoad(value) end

---@abstract
---@param value fun(sender:any, args:System.AssemblyLoadEventArgs)
function m:remove_AssemblyLoad(value) end

---@abstract
---@param value fun(sender:any, e:System.EventArgs)
function m:add_ProcessExit(value) end

---@abstract
---@param value fun(sender:any, e:System.EventArgs)
function m:remove_ProcessExit(value) end

---@abstract
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_TypeResolve(value) end

---@abstract
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_TypeResolve(value) end

---@abstract
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_ResourceResolve(value) end

---@abstract
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_ResourceResolve(value) end

---@abstract
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_AssemblyResolve(value) end

---@abstract
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_AssemblyResolve(value) end

---@abstract
---@param value fun(sender:any, e:System.UnhandledExceptionEventArgs)
function m:add_UnhandledException(value) end

---@abstract
---@param value fun(sender:any, e:System.UnhandledExceptionEventArgs)
function m:remove_UnhandledException(value) end

---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, evidence:System.Security.Policy.Evidence): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @abstract
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet, isSynchronized:boolean): @abstract
---@abstract
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@return System.Reflection.Emit.AssemblyBuilder
function m:DefineDynamicAssembly(name, access) end

---@overload fun(assemblyName:string, typeName:string, activationAttributes:any[]): @abstract
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence): @abstract
---@abstract
---@param assemblyName string
---@param typeName string
---@return System.Runtime.Remoting.ObjectHandle
function m:CreateInstance(assemblyName, typeName) end

---@overload fun(assemblyFile:string, typeName:string, activationAttributes:any[]): @abstract
---@overload fun(assemblyFile:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence): @abstract
---@abstract
---@param assemblyFile string
---@param typeName string
---@return System.Runtime.Remoting.ObjectHandle
function m:CreateInstanceFrom(assemblyFile, typeName) end

---@overload fun(assemblyString:string): @abstract
---@overload fun(rawAssembly:string): @abstract
---@overload fun(rawAssembly:string, rawSymbolStore:string): @abstract
---@overload fun(rawAssembly:string, rawSymbolStore:string, securityEvidence:System.Security.Policy.Evidence): @abstract
---@overload fun(assemblyRef:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence): @abstract
---@overload fun(assemblyString:string, assemblySecurity:System.Security.Policy.Evidence): @abstract
---@abstract
---@param assemblyRef System.Reflection.AssemblyName
---@return System.Reflection.Assembly
function m:Load(assemblyRef) end

---@overload fun(assemblyFile:string): @abstract
---@overload fun(assemblyFile:string, assemblySecurity:System.Security.Policy.Evidence, args:string[]): @abstract
---@abstract
---@param assemblyFile string
---@param assemblySecurity System.Security.Policy.Evidence
---@return number
function m:ExecuteAssembly(assemblyFile, assemblySecurity) end

---@abstract
---@return System.Reflection.Assembly[]
function m:GetAssemblies() end

---@abstract
---@param path string
function m:AppendPrivatePath(path) end

---@abstract
function m:ClearPrivatePath() end

---@abstract
---@param s string
function m:SetShadowCopyPath(s) end

---@abstract
function m:ClearShadowCopyPath() end

---@abstract
---@param s string
function m:SetCachePath(s) end

---@abstract
---@param name string
---@param data any
function m:SetData(name, data) end

---@abstract
---@param name string
---@return any
function m:GetData(name) end

---@abstract
---@param theDelegate fun()
function m:DoCallBack(theDelegate) end

---@abstract
---@param domainPolicy System.Security.Policy.PolicyLevel
function m:SetAppDomainPolicy(domainPolicy) end

---@abstract
---@param policy System.Security.Principal.PrincipalPolicy
function m:SetPrincipalPolicy(policy) end

---@abstract
---@param principal System.Security.Principal.IPrincipal
function m:SetThreadPrincipal(principal) end

System._AppDomain = m
return m
