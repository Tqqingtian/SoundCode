---@class RoleOperation_SelectRoleInfoProto : System.ValueType
---@field public RoldId number
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
---@return RoleOperation_SelectRoleInfoProto
function m.GetProto(buffer, isChild) end

RoleOperation_SelectRoleInfoProto = m
return m
