---@class RoleOperation_CreateRoleProto : System.ValueType
---@field public JobId number
---@field public RoleNickName string
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
---@return RoleOperation_CreateRoleProto
function m.GetProto(buffer, isChild) end

RoleOperation_CreateRoleProto = m
return m
