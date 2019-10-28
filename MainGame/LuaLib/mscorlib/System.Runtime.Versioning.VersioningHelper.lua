---@class System.Runtime.Versioning.VersioningHelper : System.Object
local m = {}

---@overload fun(name:string, from:System.Runtime.Versioning.ResourceScope, to:System.Runtime.Versioning.ResourceScope, type:System.Type): @static
---@static
---@param name string
---@param from System.Runtime.Versioning.ResourceScope
---@param to System.Runtime.Versioning.ResourceScope
---@return string
function m.MakeVersionSafeName(name, from, to) end

System.Runtime.Versioning.VersioningHelper = m
return m
