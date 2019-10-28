---@class System.TypeName : table
---@field public DisplayName string
local m = {}

---@abstract
---@param innerName System.TypeIdentifier
---@return System.TypeName
function m:NestedName(innerName) end

System.TypeName = m
return m
