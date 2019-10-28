---@class System.Runtime.Remoting.IRemotingTypeInfo : table
---@field public TypeName string
local m = {}

---@abstract
---@param fromType System.Type
---@param o any
---@return boolean
function m:CanCastTo(fromType, o) end

System.Runtime.Remoting.IRemotingTypeInfo = m
return m
