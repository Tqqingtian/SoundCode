---@class System.TypeSpec.TypeSpecTypeName : System.TypeNames.ATypeName
---@field public DisplayName string
local m = {}

---@virtual
---@param innerName System.TypeIdentifier
---@return System.TypeName
function m:NestedName(innerName) end

System.TypeSpec.TypeSpecTypeName = m
return m
