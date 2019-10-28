---@class System.TypeNames.Display : System.TypeNames.ATypeName
---@field public DisplayName string
local m = {}

---@virtual
---@param innerName System.TypeIdentifier
---@return System.TypeName
function m:NestedName(innerName) end

System.TypeNames.Display = m
return m
