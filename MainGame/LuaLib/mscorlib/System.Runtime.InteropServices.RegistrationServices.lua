---@class System.Runtime.InteropServices.RegistrationServices : System.Object
local m = {}

---@virtual
---@return System.Guid
function m:GetManagedCategoryGuid() end

---@virtual
---@param type System.Type
---@return string
function m:GetProgIdForType(type) end

---@virtual
---@param assembly System.Reflection.Assembly
---@return System.Type[]
function m:GetRegistrableTypesInAssembly(assembly) end

---@virtual
---@param assembly System.Reflection.Assembly
---@param flags System.Runtime.InteropServices.AssemblyRegistrationFlags
---@return boolean
function m:RegisterAssembly(assembly, flags) end

---@overload fun(type:System.Type, classContext:System.Runtime.InteropServices.RegistrationClassContext, flags:System.Runtime.InteropServices.RegistrationConnectionType): @virtual
---@virtual
---@param type System.Type
---@param g System.Guid
---@return System.Guid
function m:RegisterTypeForComClients(type, g) end

---@virtual
---@param type System.Type
---@return boolean
function m:TypeRepresentsComType(type) end

---@virtual
---@param type System.Type
---@return boolean
function m:TypeRequiresRegistration(type) end

---@virtual
---@param assembly System.Reflection.Assembly
---@return boolean
function m:UnregisterAssembly(assembly) end

---@virtual
---@param cookie number
function m:UnregisterTypeForComClients(cookie) end

System.Runtime.InteropServices.RegistrationServices = m
return m
