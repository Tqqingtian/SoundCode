---@class System.SizedReference : System.Object
---@field public Target any
---@field public ApproximateSize number
local m = {}

---@virtual
function m:Dispose() end

System.SizedReference = m
return m
