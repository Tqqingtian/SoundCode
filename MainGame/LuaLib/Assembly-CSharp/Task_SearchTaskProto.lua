---@class Task_SearchTaskProto : System.ValueType
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
---@return Task_SearchTaskProto
function m.GetProto(buffer, isChild) end

Task_SearchTaskProto = m
return m
