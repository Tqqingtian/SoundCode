---@class Goods_UseItemProto : System.ValueType
---@field public BackpackItemId number
---@field public GoodsId number
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
---@return Goods_UseItemProto
function m.GetProto(buffer, isChild) end

Goods_UseItemProto = m
return m
