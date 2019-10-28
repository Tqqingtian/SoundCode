---@class System_HeartbeatProto : System.ValueType
---@field public LocalTime number
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@overload fun(): @virtual
---@virtual
---@param isChild boolean
---@return string
function m:ToArray(isChild) end

---@overload fun(buffer:string): @static
---@static
---@param buffer string
---@param isChild boolean
---@return System_HeartbeatProto
function m.GetProto(buffer, isChild) end

System_HeartbeatProto = m
return m
