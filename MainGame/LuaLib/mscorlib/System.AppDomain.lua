---@class System.AppDomain : System.MarshalByRefObject
---@field public CurrentDomain System.AppDomain @static
---@field public MonitoringIsEnabled boolean @static
---@field public MonitoringSurvivedProcessMemorySize number @static
---@field public SetupInformation System.AppDomainSetup
---@field public ApplicationTrust System.Security.Policy.ApplicationTrust
---@field public BaseDirectory string
---@field public RelativeSearchPath string
---@field public DynamicDirectory string
---@field public ShadowCopyFiles boolean
---@field public FriendlyName string
---@field public Evidence System.Security.Policy.Evidence
---@field public PermissionSet System.Security.PermissionSet
---@field public IsHomogenous boolean
---@field public IsFullyTrusted boolean
---@field public DomainManager System.AppDomainManager
---@field public ActivationContext System.ActivationContext
---@field public ApplicationIdentity System.ApplicationIdentity
---@field public Id number
---@field public MonitoringSurvivedMemorySize number
---@field public MonitoringTotalAllocatedMemorySize number
---@field public MonitoringTotalProcessorTime System.TimeSpan
local m = {}

---@virtual
---@param path string
function m:AppendPrivatePath(path) end

---@virtual
function m:ClearPrivatePath() end

---@virtual
function m:ClearShadowCopyPath() end

---@overload fun(assemblyFile:string, typeName:string, hashValue:string, hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):
---@param assemblyName string
---@param typeName string
---@return System.Runtime.Remoting.ObjectHandle
function m:CreateComInstanceFrom(assemblyName, typeName) end

---@overload fun(assemblyName:string, typeName:string, activationAttributes:any[]): @virtual
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence): @virtual
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]):
---@virtual
---@param assemblyName string
---@param typeName string
---@return System.Runtime.Remoting.ObjectHandle
function m:CreateInstance(assemblyName, typeName) end

---@overload fun(assemblyName:string, typeName:string, activationAttributes:any[]):
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence):
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[]):
---@param assemblyName string
---@param typeName string
---@return any
function m:CreateInstanceAndUnwrap(assemblyName, typeName) end

---@overload fun(assemblyFile:string, typeName:string): @virtual
---@overload fun(assemblyFile:string, typeName:string, activationAttributes:any[]): @virtual
---@overload fun(assemblyFile:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence): @virtual
---@param assemblyFile string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args any[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes any[]
---@return System.Runtime.Remoting.ObjectHandle
function m:CreateInstanceFrom(assemblyFile, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes) end

---@overload fun(assemblyName:string, typeName:string):
---@overload fun(assemblyName:string, typeName:string, activationAttributes:any[]):
---@overload fun(assemblyName:string, typeName:string, ignoreCase:boolean, bindingAttr:System.Reflection.BindingFlags, binder:System.Reflection.Binder, args:any[], culture:System.Globalization.CultureInfo, activationAttributes:any[], securityAttributes:System.Security.Policy.Evidence):
---@param assemblyFile string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args any[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes any[]
---@return any
function m:CreateInstanceFromAndUnwrap(assemblyFile, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes) end

---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, evidence:System.Security.Policy.Evidence): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet, isSynchronized:boolean): @virtual
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, evidence:System.Security.Policy.Evidence, requiredPermissions:System.Security.PermissionSet, optionalPermissions:System.Security.PermissionSet, refusedPermissions:System.Security.PermissionSet, isSynchronized:boolean, assemblyAttributes:System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_CustomAttributeBuilder_):
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes:System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_CustomAttributeBuilder_):
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, dir:string, isSynchronized:boolean, assemblyAttributes:System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_CustomAttributeBuilder_):
---@overload fun(name:System.Reflection.AssemblyName, access:System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes:System.Collections.Generic.IEnumerable_1_System_Reflection_Emit_CustomAttributeBuilder_, securityContextSource:System.Security.SecurityContextSource):
---@virtual
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@return System.Reflection.Emit.AssemblyBuilder
function m:DefineDynamicAssembly(name, access) end

---@virtual
---@param callBackDelegate fun()
function m:DoCallBack(callBackDelegate) end

---@overload fun(assemblyFile:string, assemblySecurity:System.Security.Policy.Evidence): @virtual
---@overload fun(assemblyFile:string, assemblySecurity:System.Security.Policy.Evidence, args:string[]): @virtual
---@overload fun(assemblyFile:string, assemblySecurity:System.Security.Policy.Evidence, args:string[], hashValue:string, hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):
---@overload fun(assemblyFile:string, args:string[]):
---@overload fun(assemblyFile:string, args:string[], hashValue:string, hashAlgorithm:System.Configuration.Assemblies.AssemblyHashAlgorithm):
---@virtual
---@param assemblyFile string
---@return number
function m:ExecuteAssembly(assemblyFile) end

---@virtual
---@return System.Reflection.Assembly[]
function m:GetAssemblies() end

---@virtual
---@param name string
---@return any
function m:GetData(name) end

---@virtual
---@return System.Type
function m:GetType() end

---@virtual
---@return any
function m:InitializeLifetimeService() end

---@overload fun(assemblyRef:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence): @virtual
---@overload fun(assemblyString:string): @virtual
---@overload fun(assemblyString:string, assemblySecurity:System.Security.Policy.Evidence): @virtual
---@overload fun(rawAssembly:string): @virtual
---@overload fun(rawAssembly:string, rawSymbolStore:string): @virtual
---@overload fun(rawAssembly:string, rawSymbolStore:string, securityEvidence:System.Security.Policy.Evidence): @virtual
---@virtual
---@param assemblyRef System.Reflection.AssemblyName
---@return System.Reflection.Assembly
function m:Load(assemblyRef) end

---@virtual
---@param domainPolicy System.Security.Policy.PolicyLevel
function m:SetAppDomainPolicy(domainPolicy) end

---@virtual
---@param path string
function m:SetCachePath(path) end

---@virtual
---@param policy System.Security.Principal.PrincipalPolicy
function m:SetPrincipalPolicy(policy) end

function m:SetShadowCopyFiles() end

---@virtual
---@param path string
function m:SetShadowCopyPath(path) end

---@virtual
---@param principal System.Security.Principal.IPrincipal
function m:SetThreadPrincipal(principal) end

---@overload fun(friendlyName:string, securityInfo:System.Security.Policy.Evidence): @static
---@overload fun(friendlyName:string, securityInfo:System.Security.Policy.Evidence, info:System.AppDomainSetup): @static
---@overload fun(friendlyName:string, securityInfo:System.Security.Policy.Evidence, appBasePath:string, appRelativeSearchPath:string, shadowCopyFiles:boolean): @static
---@overload fun(friendlyName:string, securityInfo:System.Security.Policy.Evidence, info:System.AppDomainSetup, grantSet:System.Security.PermissionSet, ...:System.Security.Policy.StrongName|System.Security.Policy.StrongName[]): @static
---@overload fun(friendlyName:string, securityInfo:System.Security.Policy.Evidence, info:System.AppDomainSetup, grantSet:System.Security.PermissionSet): @static
---@overload fun(friendlyName:string, securityInfo:System.Security.Policy.Evidence, appBasePath:string, appRelativeSearchPath:string, shadowCopyFiles:boolean, adInit:fun(args:string[]), adInitArgs:string[]): @static
---@static
---@param friendlyName string
---@return System.AppDomain
function m.CreateDomain(friendlyName) end

---@return boolean
function m:IsFinalizingForUnload() end

---@static
---@param domain System.AppDomain
function m.Unload(domain) end

---@overload fun(name:string, data:any, permission:System.Security.IPermission)
---@virtual
---@param name string
---@param data any
function m:SetData(name, data) end

---@param path string
function m:SetDynamicBase(path) end

---@static
---@return number
function m.GetCurrentThreadId() end

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param value fun(sender:any, args:System.AssemblyLoadEventArgs)
function m:add_AssemblyLoad(value) end

---@virtual
---@param value fun(sender:any, args:System.AssemblyLoadEventArgs)
function m:remove_AssemblyLoad(value) end

---@virtual
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_AssemblyResolve(value) end

---@virtual
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_AssemblyResolve(value) end

---@virtual
---@param value fun(sender:any, e:System.EventArgs)
function m:add_DomainUnload(value) end

---@virtual
---@param value fun(sender:any, e:System.EventArgs)
function m:remove_DomainUnload(value) end

---@virtual
---@param value fun(sender:any, e:System.EventArgs)
function m:add_ProcessExit(value) end

---@virtual
---@param value fun(sender:any, e:System.EventArgs)
function m:remove_ProcessExit(value) end

---@virtual
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_ResourceResolve(value) end

---@virtual
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_ResourceResolve(value) end

---@virtual
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_TypeResolve(value) end

---@virtual
---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_TypeResolve(value) end

---@virtual
---@param value fun(sender:any, e:System.UnhandledExceptionEventArgs)
function m:add_UnhandledException(value) end

---@virtual
---@param value fun(sender:any, e:System.UnhandledExceptionEventArgs)
function m:remove_UnhandledException(value) end

---@param value fun(sender:any, e:System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs)
function m:add_FirstChanceException(value) end

---@param value fun(sender:any, e:System.Runtime.ExceptionServices.FirstChanceExceptionEventArgs)
function m:remove_FirstChanceException(value) end

---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:add_ReflectionOnlyAssemblyResolve(value) end

---@param value fun(sender:any, args:System.ResolveEventArgs):
function m:remove_ReflectionOnlyAssemblyResolve(value) end

---@param assemblyName string
---@return string
function m:ApplyPolicy(assemblyName) end

---@overload fun(assemblyName:string, assemblySecurity:System.Security.Policy.Evidence):
---@overload fun(assemblyName:string, assemblySecurity:System.Security.Policy.Evidence, ...:string|string[]):
---@overload fun(assemblyName:string, assemblySecurity:System.Security.Policy.Evidence):
---@overload fun(assemblyName:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence, ...:string|string[]):
---@overload fun(assemblyName:System.Reflection.AssemblyName, assemblySecurity:System.Security.Policy.Evidence):
---@overload fun(assemblyName:string, ...:string|string[]):
---@overload fun(assemblyName:string):
---@overload fun(assemblyName:System.Reflection.AssemblyName, ...:string|string[]):
---@overload fun(assemblyName:System.Reflection.AssemblyName):
---@param assemblyName string
---@return number
function m:ExecuteAssemblyByName(assemblyName) end

---@return boolean
function m:IsDefaultAppDomain() end

---@return System.Reflection.Assembly[]
function m:ReflectionOnlyGetAssemblies() end

---@param value string
---@return System.Nullable_1_System_Boolean_
function m:IsCompatibilitySwitchSet(value) end

System.AppDomain = m
return m
