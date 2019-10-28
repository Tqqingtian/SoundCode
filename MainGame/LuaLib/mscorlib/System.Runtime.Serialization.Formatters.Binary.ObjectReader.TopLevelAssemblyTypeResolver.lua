---@class System.Runtime.Serialization.Formatters.Binary.ObjectReader.TopLevelAssemblyTypeResolver : System.Object
local m = {}

---@param assembly System.Reflection.Assembly
---@param simpleTypeName string
---@param ignoreCase boolean
---@return System.Type
function m:ResolveType(assembly, simpleTypeName, ignoreCase) end

System.Runtime.Serialization.Formatters.Binary.ObjectReader.TopLevelAssemblyTypeResolver = m
return m
