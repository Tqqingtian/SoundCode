---@class Task_SearchTaskReturnProto : System.ValueType
---@field public TaskCount number
---@field public CurrTaskItemList Task_SearchTaskReturnProto.TaskItem[]
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
---@return Task_SearchTaskReturnProto
function m.GetProto(buffer, isChild) end

Task_SearchTaskReturnProto = m
return m
