---@class RoleOperation_LogOnGameServerReturnProto : System.ValueType
---@field public RoleCount number
---@field public RoleList RoleOperation_LogOnGameServerReturnProto.RoleItem[]
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
---@return RoleOperation_LogOnGameServerReturnProto
function m.GetProto(buffer, isChild) end

RoleOperation_LogOnGameServerReturnProto = m
return m
