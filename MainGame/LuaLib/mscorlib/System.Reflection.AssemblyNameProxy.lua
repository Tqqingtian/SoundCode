---@class System.Reflection.AssemblyNameProxy : System.MarshalByRefObject
local m = {}

---@param assemblyFile string
---@return System.Reflection.AssemblyName
function m:GetAssemblyName(assemblyFile) end

System.Reflection.AssemblyNameProxy = m
return m
