---@class System.ApplicationIdentity : System.Object
---@field public CodeBase string
---@field public FullName string
local m = {}

---@virtual
---@return string
function m:ToString() end

System.ApplicationIdentity = m
return m
