---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata : System.Object
local m = {}

---@overload fun(namespaceName:string, windowsSdkFilePath:string, packageGraphFilePaths:System.Collections.Generic.IEnumerable_1_System_String_): @static
---@static
---@param namespaceName string
---@param packageGraphFilePaths System.Collections.Generic.IEnumerable_1_System_String_
---@return System.Collections.Generic.IEnumerable_1_System_String_
function m.ResolveNamespace(namespaceName, packageGraphFilePaths) end

---@static
---@param value fun(sender:any, e:System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs)
function m.add_DesignerNamespaceResolve(value) end

---@static
---@param value fun(sender:any, e:System.Runtime.InteropServices.WindowsRuntime.DesignerNamespaceResolveEventArgs)
function m.remove_DesignerNamespaceResolve(value) end

---@static
---@param value fun(sender:any, e:System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs)
function m.add_ReflectionOnlyNamespaceResolve(value) end

---@static
---@param value fun(sender:any, e:System.Runtime.InteropServices.WindowsRuntime.NamespaceResolveEventArgs)
function m.remove_ReflectionOnlyNamespaceResolve(value) end

System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMetadata = m
return m
