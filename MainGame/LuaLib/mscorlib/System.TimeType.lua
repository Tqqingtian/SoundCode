---@class System.TimeType : System.Object
---@field public Offset number
---@field public IsDst boolean
---@field public Name string
local m = {}

---@virtual
---@return string
function m:ToString() end

System.TimeType = m
return m
