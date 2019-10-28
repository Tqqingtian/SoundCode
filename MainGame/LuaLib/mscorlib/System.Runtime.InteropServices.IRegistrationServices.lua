---@class System.Runtime.InteropServices.IRegistrationServices : table
local m = {}

---@abstract
---@param assembly System.Reflection.Assembly
---@param flags System.Runtime.InteropServices.AssemblyRegistrationFlags
---@return boolean
function m:RegisterAssembly(assembly, flags) end

---@abstract
---@param assembly System.Reflection.Assembly
---@return boolean
function m:UnregisterAssembly(assembly) end

---@abstract
---@param assembly System.Reflection.Assembly
---@return System.Type[]
function m:GetRegistrableTypesInAssembly(assembly) end

---@abstract
---@param type System.Type
---@return string
function m:GetProgIdForType(type) end

---@abstract
---@param type System.Type
---@param g System.Guid
---@return System.Guid
function m:RegisterTypeForComClients(type, g) end

---@abstract
---@return System.Guid
function m:GetManagedCategoryGuid() end

---@abstract
---@param type System.Type
---@return boolean
function m:TypeRequiresRegistration(type) end

---@abstract
---@param type System.Type
---@return boolean
function m:TypeRepresentsComType(type) end

System.Runtime.InteropServices.IRegistrationServices = m
return m
