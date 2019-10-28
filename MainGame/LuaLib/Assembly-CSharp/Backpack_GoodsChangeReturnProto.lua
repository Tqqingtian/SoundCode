---@class Backpack_GoodsChangeReturnProto : System.ValueType
---@field public BackpackItemChangeCount number
---@field public ItemList Backpack_GoodsChangeReturnProto.ChangeItem[]
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
---@return Backpack_GoodsChangeReturnProto
function m.GetProto(buffer, isChild) end

Backpack_GoodsChangeReturnProto = m
return m
