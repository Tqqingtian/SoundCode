---@class Goods_EquipPutProto : System.ValueType
---@field public Type number
---@field public GoodsId number
---@field public GoodsServerId number
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
---@return Goods_EquipPutProto
function m.GetProto(buffer, isChild) end

Goods_EquipPutProto = m
return m
