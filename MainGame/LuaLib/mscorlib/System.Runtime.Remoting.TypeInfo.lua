---@class System.Runtime.Remoting.TypeInfo : System.Object
---@field public TypeName string
local m = {}

---@virtual
---@param fromType System.Type
---@param o any
---@return boolean
function m:CanCastTo(fromType, o) end

System.Runtime.Remoting.TypeInfo = m
return m
