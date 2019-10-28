---@class Backpack_SearchReturnProto : System.ValueType
---@field public BackpackItemCount number
---@field public ItemList Backpack_SearchReturnProto.BackpackItem[]
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
---@return Backpack_SearchReturnProto
function m.GetProto(buffer, isChild) end

Backpack_SearchReturnProto = m
return m
