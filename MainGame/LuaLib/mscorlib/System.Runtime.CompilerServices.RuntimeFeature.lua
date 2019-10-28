---@class System.Runtime.CompilerServices.RuntimeFeature : System.Object
---@field public PortablePdb string @static
local m = {}

---@static
---@param feature string
---@return boolean
function m.IsSupported(feature) end

System.Runtime.CompilerServices.RuntimeFeature = m
return m
