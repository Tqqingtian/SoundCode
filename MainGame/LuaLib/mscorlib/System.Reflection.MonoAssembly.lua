---@class System.Reflection.MonoAssembly : System.Reflection.RuntimeAssembly
---@field public ManifestModule System.Reflection.Module
---@field public GlobalAssemblyCache boolean
local m = {}

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
---@return System.Reflection.AssemblyName[]
function m:GetReferencedAssemblies() end

---@virtual
---@param getResourceModules boolean
---@return System.Reflection.Module[]
function m:GetModules(getResourceModules) end

---@virtual
---@param getResourceModules boolean
---@return System.Reflection.Module[]
function m:GetLoadedModules(getResourceModules) end

---@overload fun(culture:System.Globalization.CultureInfo, version:System.Version): @virtual
---@virtual
---@param culture System.Globalization.CultureInfo
---@return System.Reflection.Assembly
function m:GetSatelliteAssembly(culture) end

System.Reflection.MonoAssembly = m
return m
