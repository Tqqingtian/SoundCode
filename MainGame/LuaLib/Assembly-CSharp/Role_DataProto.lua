---@class Role_DataProto : System.ValueType
---@field public RoleId number
---@field public RoleName string
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
---@return Role_DataProto
function m.GetProto(buffer, isChild) end

Role_DataProto = m
return m
