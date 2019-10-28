---@class System.Runtime.InteropServices.ITypeLibConverter : table
local m = {}

---@abstract
---@param assembly System.Reflection.Assembly
---@param typeLibName string
---@param flags System.Runtime.InteropServices.TypeLibExporterFlags
---@param notifySink System.Runtime.InteropServices.ITypeLibExporterNotifySink
---@return any
function m:ConvertAssemblyToTypeLib(assembly, typeLibName, flags, notifySink) end

---@overload fun(typeLib:any, asmFileName:string, flags:System.Runtime.InteropServices.TypeLibImporterFlags, notifySink:System.Runtime.InteropServices.ITypeLibImporterNotifySink, publicKey:string, keyPair:System.Reflection.StrongNameKeyPair, asmNamespace:string, asmVersion:System.Version): @abstract
---@abstract
---@param typeLib any
---@param asmFileName string
---@param flags number
---@param notifySink System.Runtime.InteropServices.ITypeLibImporterNotifySink
---@param publicKey string
---@param keyPair System.Reflection.StrongNameKeyPair
---@param unsafeInterfaces boolean
---@return System.Reflection.Emit.AssemblyBuilder
function m:ConvertTypeLibToAssembly(typeLib, asmFileName, flags, notifySink, publicKey, keyPair, unsafeInterfaces) end

---@abstract
---@param g System.Guid
---@param major number
---@param minor number
---@param lcid number
---@return boolean, System.String, System.String
function m:GetPrimaryInteropAssembly(g, major, minor, lcid) end

System.Runtime.InteropServices.ITypeLibConverter = m
return m
