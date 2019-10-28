---@class System.Resources.NameOrId : System.Object
---@field public IsName boolean
---@field public Name string
---@field public Id number
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Resources.NameOrId = m
return m
