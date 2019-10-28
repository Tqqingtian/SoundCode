---@class Role_ListTestProto : System.ValueType
---@field public RoleType number
---@field public CurrRole Role_DataProto
---@field public RoleList Role_DataProto[]
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
---@return Role_ListTestProto
function m.GetProto(buffer, isChild) end

Role_ListTestProto = m
return m
