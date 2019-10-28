---@class System.Reflection.LocalVariableInfo : System.Object
---@field public IsPinned boolean
---@field public LocalIndex number
---@field public LocalType System.Type
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Reflection.LocalVariableInfo = m
return m
