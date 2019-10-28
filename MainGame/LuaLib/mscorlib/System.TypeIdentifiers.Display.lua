---@class System.TypeIdentifiers.Display : System.TypeNames.ATypeName
---@field public DisplayName string
---@field public InternalName string
local m = {}

---@virtual
---@param innerName System.TypeIdentifier
---@return System.TypeName
function m:NestedName(innerName) end

System.TypeIdentifiers.Display = m
return m
